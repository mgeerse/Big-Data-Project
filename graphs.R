windows()
big <- qplot(EC, pH, color=factor(averageWeight), data = BigTomaat, geom=c("point", "smooth"))
big + ggtitle("pH to date on big tomato's")

windows()
cherry <- qplot(date, pH, color=factor(averageWeight), data = CherryTomaat, geom=c("point", "smooth"))
cherry + ggtitle("pH to date on cherry tomato's")

windows()
prunaxx <- qplot(date, pH, color=factor(averageWeight), data = PrunaxxTomaat, geom=c("point", "smooth"))
prunaxx + ggtitle("pH to date on prunaxx tomato's")

windows()
small <- qplot(date, pH, color=factor(averageWeight), data = SmallTomaat, geom=c("point", "smooth"))
small + ggtitle("pH to date on small tomato's")