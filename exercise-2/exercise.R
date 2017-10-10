# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  return(cat("The difference in lengths is", abs(length(vector2) - length(vector1))))
}

# Pass two vectors of different length to your `CompareLength` function
v1 <- seq(1, 20)
v2 <- seq(3, 18)
CompareLength(v1, v2)
CompareLength(v2, v1)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector1, vector2) {
  if((length(vector2) - length(vector1)) > 0) {
    return(cat("The second vector is longer by", (length(vector2) - length(vector1)), "elements"))
  } else {
    return(cat("The first vector is longer by", (length(vector1) - length(vector2)), "elements"))
  }
}


# Pass two vectors to your `DescribeDifference` function


cat(DescribeDifference(v1, v2))
cat(DescribeDifference(v2, v1))


### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

DescribeDifference <- function(vector1, vector2) {
  if((length(vector2) - length(vector1)) > 0) {
    return(cat(deparse(substitute(vector2)), "is longer by", (length(vector2) - length(vector1)), "elements"))
  } else {
    return(cat(deparse(substitute(vector1)), "is longer by", (length(vector1) - length(vector2)), "elements"))
  }
}

cat(DescribeDifference(v1, v2))
cat(DescribeDifference(v2, v1))