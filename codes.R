#view data 
?attenu 

#View the first 20 rows 
head(attenu,20) 

#summary of the dataset 
summary(attenu)

#view the last 30 rows
tail(attenu,30)

#column names
names(attenu)

# Check data types and missing values
str(attenu)
any(is.na(attenu))

#unique 
unique(attenu$station)

#Test the significance of the correlation between two specific variables
cor.test(attenu$mag, attenu$dist)

#dimensions of dataset
dim(attenu)

# Print the number of unique value 
cat("Unique magnitudes:", length(unique_mag), "\n")

#shapiro.test
shapiro.test(attenu$mag)
shapiro.test(attenu$dist)
shapiro.test(attenu$accel)

#find mean
mean(attenu$mag)
mean(attenu$dist)
mean(attenu$accel)

#find standard deviation 
sd(attenu$accel)
sd(attenu$mag)
sd(attenu$dist)

#find quantile 
quantile(attenu$mag)
quantile(attenu$dist)
quantile(attenu$accel)

#find variance 
var(attenu$event)
var(attenu$mag)
var(attenu$dist)

#find mininmum and maximum 
max(attenu$mag)
min(attenu$event)

#find median
median(attenu$mag)
median(attenu$event)
median(attenu$accel)

#find co relation 
cor(attenu$mag, attenu$accel)
cor(attenu$mag, attenu$dist)

#baxplot
boxplot(attenu$event, main = "Boxplot of event", ylab = "event", col= c("green","pink","blue"))

#histogram
hist(attenu$mag, main = "Histogram of mag", xlab = "mag", col = c("pink","green","yellow"))

#barchart 
barplot(table(attenu$dist), main = "Bar Chart of dist", xlab = "dist", ylab = "Frequency", col= c("green","pink","blue"))

#scatter plot 
plot(attenu$mag, attenu$event, main = "Scatter Plot", xlab = "mag", ylab = "event",col= c("pink","blue","red"))

#piechart
pie(table(attenu$accel), main = "Pie Chart of accel", col = c("red","yellow","pink"))

#linear regression
linear_model <- lm(accel ~ mag, data =attenu)
summary(linear_model)

#ANOVA function 
anova(lm(dist ~ factor(mag), data = attenu))


