## R course: Twelfth lesson


library(ggplot2)
library(ggmap)


## Exercise 12.1

p<- ggplot(data = diamonds)
p <- p + aes(x = carat, y = depth)
p <- p + geom_point()
p <- p + geom_density2d()
p



## Exercise 12.2

summary(diamonds)

depth.groups<-cut(diamonds$depth,breaks=40+(0:5)*8)
ggplot(diamonds) +
  aes(price, fill=depth.groups) +
  geom_density(alpha=.3)



## Exercise 12.3

head(state.x77)

popdata<-data.frame(state=row.names(state.x77),murder=state.x77[,5])
popdata$state<-as.character(popdata$state)

for (i in 1:nrow(popdata)) {
  latlon = geocode(popdata$state[i])
  popdata$lon[i] = as.numeric(latlon[1])
  popdata$lat[i] = as.numeric(latlon[2])
}

usa_center = geocode("United States")
USA <-ggmap(get_map(location=usa_center,zoom=4), extent="panel")

USA + geom_point(aes(x=lon, y=lat), data=popdata, col="black",
                 alpha=0.4, size=popdata$murder)



## Lab

my.data<-data.frame(federal.states=c("Baden-Württemberg","Bayern","Berlin",
                                     "Brandenburg","Bremen","Hamburg","Hessen",
                                     "Mecklenburg-Vorpommern","Niedersachsen",
                                     "Nordrhein-Westfalen","Rheinland-Pfalz",
                                     "Saarland","Sachsen","Sachsen-Anhalt",
                                     "Schleswig-Holstein","Thüringen"), 
                    Population=c(10716644,12691568,3469849,2457872,661888,1762791,
                                 6093888,1599138,7826739,17638098,4011582,989035,4055274,
                                 2235548,2830864,2156759))

