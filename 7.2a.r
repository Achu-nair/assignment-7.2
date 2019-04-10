colnames(mtcars)

car <- data.frame("cyl"= mtcars$cyl,
                  "vs"= mtcars$vs,
                  "am"= mtcars$am,
                  "gear"= mtcars$gear,
                  "carb"= mtcars$carb)
colnames(car)
windows()
par(mfrow=c(3,4))
for(i in 1:length(car)){
  boxplot(car[,i],main = paste("Boxplot of ",colnames(car)[i]),varwidth = TRUE,xlab=colnames(car)[i])
}