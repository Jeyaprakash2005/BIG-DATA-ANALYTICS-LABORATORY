dataset = read.csv("D:\\Jeya prakash J\\BDA LAB 22AI020\\EXP 4\\data-marketing-budget-12mo (1).csv", header=T,
colClasses = c("numeric", "numeric", "numeric"))
head(dataset,5)
simple.fit = lm(Sales~Spend,data=dataset)
summary(simple.fit)


multi.fit = lm(Sales~Spend+Month, data=dataset) 
summary(multi.fit)


input<- mtcars [,c("am","cyl","hp","wt")]
print(head(input))
input<- mtcars [,c("am","cyl","hp","wt")] 
am.data =glm(formula = am ~ cyl+hp+wt,data = input,family = binomial)
print(summary(am.data))
