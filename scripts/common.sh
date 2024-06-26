#!/bin/sh

function uuid() {
  od -x /dev/urandom | head -1 | awk '{OFS="-"; print $2$3,$4,$5,$6,$7$8$9}'
}

function gch() {
   git ch
}

function note() {
  touch ~/Notes/$1
  vim ~/Notes/$1
}

function pretty() {
  cat $1 | jq -M | pbcopy
  pbpaste > $1
}

function json() {
  cat $1 | jq -C | less
}

function copy() {
  cat $1 | pbcopy
}

function paste-image() {
  ~/Applications/CopyQ.app/Contents/MacOS/CopyQ read image/png 0 > $1.png
}

function draw() {
  open -a ~/Applications/Chrome\ Apps.localized/Excalidraw.app/
}

function review() { open -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome $(boom echo git-review) }

function xml-to-json() {
  python3 ~/dotfiles/scripts/xml-to-json
}

function timestamp() {
  date +%Y-%m-%dT%H:%M:%S
}

function get() {
  vim -c ":w! /tmp/output.txt" -
}
