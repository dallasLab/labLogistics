print("Starting tests.")

x <- 1:10 # initializes x as values from 1 to 10
print(x) # print x

y <- sample(1:100, 10, replace=T) # generate 10 random numbers from 1 to 100
print(y) # print y

mean(x) # find mean of x

print(x*y) # print product of x and y

a <- c(2, 4, 6, 8, 10, 12) # a is a vector
b <- a[a>4] # b is the vector of all indices in a greater than 4
print(a)
print(b)
