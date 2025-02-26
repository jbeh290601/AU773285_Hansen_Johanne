library(tidyverse)

dir.create("data")

#install csv data
interviews <- read_csv("data/SAFI_clean-kopi.csv", na="NULL")
#(..., na=?) tells R how the data set have charactoresed missing data, can be na=NA, NULL, N/A
interviews

#Homework
rooms_homework <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3 ,1 ,7 ,2 ,1 ,NA ,1, 1, 3)
rooms_homework
class(rooms_homework)
rooms_homework[rooms_homework>2]
rooms_homework_nas_eliminated <-rooms_homework[!is.na(rooms_homework)]
rooms_homework_nas_eliminated[rooms_homework_nas_eliminated>2]
length(rooms_homework_nas_eliminated[rooms_homework_nas_eliminated>2])

mean(rooms_homework_nas_eliminated)
median(rooms_homework_nas_eliminated)


#Kongerækken
kongerækken <- read_csv2("data/Kongerækken csv-kopi.csv", na="NA")
gns_regeringstid <- mean(na.omit(kongerækken$`Regerings år i alt`))
gns_regeringstid
#den gennemsnitlige regeringstid er 19,96 år

med_regering <- median(na.omit(kongerækken$`Regerings år i alt`))
med_regering
#regeringstidens median er 18,5 år
