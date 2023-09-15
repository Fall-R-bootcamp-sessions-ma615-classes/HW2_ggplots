### YOUR NAME HERE ###

library(ggplot2)
library(dplyr)
#library(esquisse) for your personal exploration, don't include in your submission

strikes <- read.csv("strikes.csv")
human <- read.delim("humandeval.txt")
human2 <- read.delim("humandevel.txt")
world <- read.delim("world_data.txt")

country_name <- c("Australia",
                  "Austria",
                  "Belgium",
                  "Canada",
                  "Denmark",
                  "Finland",
                  "France",
                  "Germany",
                  "Ireland",
                  "Italy",
                  "Japan",
                  "Netherlands",
                  "New Zealand",
                  "Norway",
                  "Sweden",
                  "Switzerland",
                  "United Kingdom",
                  "United States")

strikes$country_name <- country_name[strikes$country_code]
strikes <- strikes[,c("country_name",colnames(strikes)[1:(length(strikes)-1)])]

colnames(human) <- c("rank",
                     "country",
                     "human_dev_index",
                     "gnp_percap_rank",
                     "rankDiff")
colnames(world) <- c("country_name",
                     "country_code",
                     "population_total",
                     "agricultural_land_km_sq",
                     "percent_population_female",
                     "percent_land_arable")

### plot 1 ### human 1

plot1 <- ggplot(human)

### plot 2 ### human 2
plot2 <- ggplot(human)

### plot 4 ### strikes 1
plot4 <- ggplot(strikes)

### plot 5 ### strikes 2

plot5 <- ggplot()


