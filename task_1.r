# print mtcars Data_Set:
Big_Data <- mtcars
print(Big_Data)

# Check the dimension Of mtcars Data_Set:
print(dim(Big_Data))

# print out Column Names:
Column_Names <- names(Big_Data)
print(Column_Names)

# print out Row_Names:
Row_Names <- rownames(Big_Data)
print(Row_Names)

# --------------------- R Basic Statistics' Part: --------------------------
# 1) Let Find the largest and smallest value of the variable hp (horsepower):
print(paste('Largest Horspower:', max(Big_Data$hp)))
print(paste('Smallest Horspower:', min(Big_Data$hp)))

# 2) Let's find out which car these two values(max and min hp) belongs to:
print(which.max(Big_Data$hp))  # index of strongest car
print(which.min(Big_Data$hp))  # index of weakest car

print(paste('Car with Highest Horsepower:', Row_Names[which.max(Big_Data$hp)]))
print(paste('Car with Lowest Horspower:', Row_Names[which.min(Big_Data$hp)]))

# 3) Let's find out Average of Weight of All Cars Together:
# with built in function: mean()
print(paste('Average Weight of Cars:', mean(Big_Data$wt), 'lbs'))

# without mean() built in function:
print(paste('Average Weight of Cars:', sum(Big_Data$wt) / length(Big_Data$wt), 'lbs'))

# 4) Let's find out the median of mpg (Miles/(US) gallon) column:
# with built in function: median()
print(paste('Median Of mpg Column:', median(Big_Data$mpg)))

# without median() function:
Sorted_mpg <- sort(Big_Data$mpg)
Length_mpg <- length(Big_Data$mpg)
print(paste('Median Of mpg Column:', mean(Sorted_mpg[(Length_mpg/2):(Length_mpg/2 +1)])))

# 5) Let's find the mode of wt(Weight Column):
# First Way:
print("Mode of wt Column:")
print(sort(table(Big_Data$wt))[length(table(Big_Data$wt))])

# Second way: with names() function
print(names(sort(-table(Big_Data$wt))[1]))

# 6) Lets find -> What is the 25% and 75% of the weight of the cars:
print(paste('25 percentile is:', quantile(Big_Data$wt, c(0.25)), 'lbs'))
print(paste('75 percentile is:', quantile(Big_Data$wt, c(0.75)), 'lbs'))

# Summary Of This part: Everything together!
print(summary(Big_Data))


# ----------------  R Basic Graphic's Part: ------------------------------------
# 7) Lets create Histogram to visualize Cars with their horsepower:
#    Most Common: Horse Power between 100 and 150
print(hist(Big_Data$hp, main = 'HorsePower Histogram', xlab = 'HorsePower', ylab = 'Watts Frequency', col = 'lightgreen'))

# 8) If Car Has High Horse Power, It is More Faster and 
#    It needs less time to undergo 1 mile: 
print(plot(Big_Data$hp, Big_Data$qsec, 
          main = 'Connection Between HorsePower and Speed', 
          xlab = 'Car HorsePower', 
          ylab = 'Time For One Mile', 
          col = 'red', 
          pch = 10))

# 9) Lets See the main divisor border between Car's Cylinders:
print(boxplot(Big_Data$cyl,
              main = "Distribution Of Car's Cylinders",
              ylab = "Number Of Cylinders",
              col = "lightblue",
              border = "black"))
