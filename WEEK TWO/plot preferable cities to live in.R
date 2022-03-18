library(ggplot2)
df <- data.frame(city=c("addis ababa", "bahirdar","gondar","dessie","hawassa","shashemene"))
mfval <- c(0.6,0.2, 0.5, 0.4, 0.5, 0.8)
ggplot(data=df, aes(x=city, y = mfval))+geom_point(col="red")+geom_segment(aes(x=city, xend=city, y=0, yend=mfval))

library(ggplot2)
df <- data.frame(city=c("addis ababa", "bahirdar","gondar","dessie","hawassa","shashemene"))
mfval <- c(0,0.1, 0.8,0.2,0.5,0.9)
ggplot(data=df, aes(x=city, y = mfval))+geom_point(col="red")+geom_segment(aes(x=city, xend=city, y=0, yend=mfval))

library(ggplot2)
df <- data.frame(city=c("addis ababa", "bahirdar","gondar","dessie","hawassa","shashemene"))
mfval <- c(0.8, 0.3, 0,1,0.5,0.7)
ggplot(data=df, aes(x=city, y = mfval))+geom_point(col="red")+geom_segment(aes(x=city, xend=city, y=0, yend=mfval))
