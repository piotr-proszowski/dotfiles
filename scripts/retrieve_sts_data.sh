cat /tmp/sts.html |
pup ".bet_tab .subTable json{}" |
jq """
.[].children |
  {
    homeTeam: .[0].children[0].children[0].children[0].text,
    awayTeam: .[0].children[0].children[2].children[0].text,
    odds: [
      {
        name: \"HOME_TEAM_WINS\",
        value: .[0].children[0].children[0].children[0].children[0].text
      },
      {
        name: \"AWAY_TEAM_WINS\",
        value: .[0].children[0].children[1].children[0].children[0].text
      },
      {
        name: \"THERE_WILL_BE_DRAW\",
        value: .[0].children[0].children[2].children[0].children[0].text
      }
    ]
  }
"""
