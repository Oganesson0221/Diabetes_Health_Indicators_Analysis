setwd("/Users/rishi/Desktop/y2s2/MH3511/Project/archive")
data = read.csv("diabetes_012_health_indicators_BRFSS2015.csv", header=TRUE)
data
str(data)


Diabetes_012 = data[,1]
unique(Diabetes_012)

HighBP = data[,2]
unique(HighBP)

HighChol = data[,3]
unique(HighChol)

CholCheck = data[,4]
unique(CholCheck)

BMI = data[,5]
unique(BMI)

Smoker = data[,6]
unique(Smoker)

Stroke = data[,7]
unique(Stroke)

HeartDiseaseorAttack = data[,7]
unique(HeartDiseaseorAttack)

PhysActivity = data[,8]
unique(PhysActivity)

Fruits = data[,9]
unique(Fruits)

Veggies = data[,10]
unique(Veggies)

str(data)
