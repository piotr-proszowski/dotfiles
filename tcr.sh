#!/bin/sh
emoji=("🍻" "🦖" "🌯" "🍕" "🎸" "🚀" "🦏" "🍩" "🍦")
message="${emoji[$RANDOM % ${#emoji[@]} ]} WIP"
git commit --message "$message" --allow-empty
base=$(git rev-parse HEAD)

test_and_commit_or_revert() {
  local base=$1

  # Clear the screen at the beginning of each run.
  tput reset

  # A cyan heading and a newline help me scan the output.
  run() {
    echo "$(tput setaf 6)$*$(tput sgr0)"
    eval $*
    echo
  }

  # When the code gets reverted, I want to see what I did:
  run git --no-pager diff

  # Now, let's run the tests.
  # As soon as any test fails, this subshell exits with
  # failure. We don't want that to kill the whole script, so
  # we jankily hop in & out of `set -e`.
  set +e; ( set -e

    # (And how to emit `run`'s lovely balancing newline on
    #  failure? Like this. So cool!)
    set -E; trap echo ERR

    # Where to store the project-specific test commands?
    # Scripts or config files are messy -- and we're already
    # using git!
    git config --get-all tcr.command \
      | while read -r command; do run $command; done
  )

  result=$?; set -e

  if [ $result -eq 0 ]; then
    run git commit --all --fixup $base --allow-empty
  else
    run git checkout -- src/main
  fi
}

running=1; trap "running=0" INT

while [ $running -eq 1 ]; do
fswatch --one-event --latency 0.1 $(git ls-files) \
  | read && test_and_commit_or_revert $base
done
