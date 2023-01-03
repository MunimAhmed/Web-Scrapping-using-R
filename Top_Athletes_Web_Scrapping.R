install.packages("rvest")

library(rvest)
library(stringr)
library(tibble)

Top_athlete<-data.frame()
i=1
while(i<3){
if(i<2){
  url<-"https://www.therichest.com/top-lists/top-100-richest-athletes/"
}
else{
  url<-"https://www.therichest.com/top-lists/top-100-richest-athletes/page/2/"
}


top_athletes<-read_html(url)

#Extracting Names
athletes_name<-top_athletes %>%
  html_nodes("tbody tr td.name")%>%
  html_text()


athlete_name<-athletes_name%>%
str_trim()%>%
str_split("\n")

lapply(athlete_name, function(name){
  name[1]
})%>%
  unlist()%>%
  str_trim()

#Extracting Networth
athletes_networth<-top_athletes %>%
  html_nodes("tbody tr td.networth")%>%
  html_text()

athlete_networth<-athletes_networth%>%
  str_trim()%>%
  str_split("\n")

lapply(athlete_networth, function(networth){
  networth[1]
})%>%
  unlist()%>%
  str_trim()
  
#Extracting Age
athletes_age<-top_athletes %>%
  html_nodes("tbody tr td.age")%>%
  html_text()

athlete_age<-athletes_age%>%
  str_trim()%>%
  str_split("\n")

lapply(athlete_age, function(age){
  age[1]
})%>%
  unlist()%>%
  str_trim()%>%
  as.numeric() #convert the character value to numeric 

#Extracting Country
athletes_country<-top_athletes %>%
  html_nodes("tbody tr td.country")%>%
  html_text()

athlete_country<-athletes_country%>%
  str_trim()%>%
  str_split("\n")

lapply(athlete_country, function(country){
  country[1]
})%>%
  unlist()%>%
  str_trim()

#Extracting Rank
Ranks<-top_athletes %>%
  html_nodes("tbody tr td.rank")%>%
  html_text()

Rank<-Ranks%>%
  str_trim()%>%
  str_split("\n")

lapply(Rank, function(rank){
  rank[1]
})%>%
  unlist()%>%
  str_trim()%>%
  as.numeric()

#Organizing
top_athelete_nibble<-tibble(
  Rank=Rank,
  Name=athlete_name,
  Networth=athlete_networth,
  Age=athlete_age,
  Country=athlete_country,
)

Top_athlete<-rbind(Top_athlete, top_athelete_nibble)
i=i+1
}


df <- apply(Top_athlete,2,as.character)
write.csv(df, file="E:\\Study Room\\Intro to Data Science\\Finall\\Top_athlete.csv", row.names=FALSE)
