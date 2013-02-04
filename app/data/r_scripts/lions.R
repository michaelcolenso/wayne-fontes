library(tm)

nfl <- read.csv('~/Downloads/2008_nfl_pbp_data.csv')
lions<-c("DET")
nfl$off<-lions[match(nfl$off, lions)]
nfl$off[is.na(nfl$off)]<-NA

nfl$def<-lions[match(nfl$def, lions)]
nfl$def[is.na(nfl$def)]<-NA

lions.offense<-subset(nfl, !is.na(off))
lions.defense<-subset(nfl, !is.na(def))
