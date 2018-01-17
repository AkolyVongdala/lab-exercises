## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
#The results in an invalid type because one is a string and one is a integer 

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# There is no library, thus cannot find function 

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# It is spell wrong, it is "initials" not "initital"


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

my.friends <- c("Akoly", "Oorja", "Amelia") 
print(typeof(my.friends))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector1, vector2){
  difference <- abs(length(vector1)-length(vector2))
  return (paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function

age <- c(10, 50, 20,70)
print(CompareLength(age, my.friends))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vector1, vector2){
  longer.vector <- length(vector1)-length(vector2)
  return (paste("Your first vector is longer by", longer.vector, "elements"))
}

# Pass two vectors to your `DescribeDifference` function

my.dogs <- c("Lily", "Tom", "Sugar")
my.cats <- c("bobby")
DescribeDifference(my.dogs, my.cats)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

CombineVectors <- function(vector1, vector2, vector3){
  combine.vectors <- paste (vector1, vector2, vector3)
}

# Send 3 vectors to your function to test it.

print(CombineVectors(my.dogs, my.cats, my.friends))


# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

my.courses <- c("Informatics 201", "Human-centered Design Engineering", "Communication 220")

CapsTime <- function (vector){
  gsub("[[:upper:]]", "", vector)
}

CapsTime(my.courses)
