import nflgame

allweeks  = nflgame.games(2012)
players = nflgame.combine(allweeks)

rushers = players.rushing()
top10 = rushers.sort("rushing_yds").limit(10)

top10.csv('top10rushers.csv')
