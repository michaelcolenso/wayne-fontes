import nflgame

players = nflgame.combine(nflgame.games(2012))

for p in players.rushing().sort("rushing_yds").limit(100):
    print p, p.rushing_att, p.rushing_yds, p.rushing_tds

