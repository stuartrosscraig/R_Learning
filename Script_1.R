"Attempt an an R script, gonna try to push it back to GitHub"

# I'm typing this from the work laptop

1+1
my_var <- 18
my_var

"does this output"
# Ahhh maybe I was getting mixed up! maybe you do need the print function for scripts and it's just the console irself
# which automatically outputs variables etc... like python


# numeric_vector <- c(1,2,3)
# numeric_vector
# character_vector <- c("a", "b", "c")
# character_vector
# boolean_vector <- c(TRUE, FALSE)
# boolean_vector


earnings <- c(50,100,30)
earnings
earnings * 3



# Star Wars box office in millions (!)
box <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

# Create star_wars_matrix DIFFERENT METHODS
star_wars_matrix_1 <- matrix(box, nrow=3, byrow=TRUE)
star_wars_matrix_1

star_wars_matrix_2 <- matrix(box, ncol=2, byrow=TRUE)
star_wars_matrix_2

star_wars_matrix_3 <- matrix(box[c(1,3,5,2,4,6)], ncol=2)
star_wars_matrix_3

star_wars_matrix_4 <- cbind(box[c(1, 3, 5)], box[c(2, 4, 6)])
star_wars_matrix_4


# Name the columns and rows of star_wars_matrix
colnames(star_wars_matrix_1) <- c("US", "non-US")
rownames (star_wars_matrix_1) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

star_wars_matrix_1


star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
rownames(star_wars_matrix) <- c("US", "non-US")
colnames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")


new_hope <- box[c(1,2)]
empire_strikes <- box[c(3,4)]
return_jedi <- box[c(5,6)]

star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
star_wars_matrix
rownames(star_wars_matrix) <- c("US", "non-US")
colnames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

new_hope <- box[c(1,2)]
empire_strikes <- box[c(3,4)]
return_jedi <- box[c(5,6)]

col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
rbind(new_hope, empire_strikes, return_jedi, names = c(col, row))

new_hope <- box[c(1,2)]
empire_strikes <- box[c(3,4)]
return_jedi <- box[c(5,6)]

col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), 
                           byrow = TRUE, nrow = 3, dimnames = list(col, row))

new_hope <- box[c(1,2)]
empire_strikes <- box[c(3,4)]
return_jedi <- box[c(5,6)]

col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), 
                           byrow = TRUE, nrow = 3, dimnames = list(row, col))

new_hope <- box[c(1,2)]
empire_strikes <- box[c(3,4)]
return_jedi <- box[c(5,6)]
my_vec <- c(new_hope, empire_strikes, return_jedi)
my_vec
length(my_vec)

# Calculate the worldwide box office: worldwide_vector
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector



first_row <- c(6,8,7,9,9,10)
second_row <- c(6,8,7,5,9,6)
third_row <- c(5,4,6,6,7,8)
fourth_row <- c(4,5,3,4,6,8)


# Create the theater matrix
theater <- rbind(first_row, second_row, third_row, fourth_row)

# Calculate row_scores with rowSums()
row_scores <- rowSums(theater)
row_scores

# cbind() together theater and row_scores: scores
scores <- cbind(theater, row_scores)
scores


# Matrix Subsetting
m <- matrix(sample(1:15, 12), nrow=3)
m
m[2,2]

m1 <- matrix(1:9, nrow=3)
m1
m1[4]
m1[2, c(2,3)]
m2 <- m1[c(2,3), c(2,3)]
m2
rownames(m1) <- c("r1", "r2", "r3")
colnames(m1) <- c("a", "b", "c")
m1

m3 <- matrix(c(1,2,3), nrow=4, ncol=3)
m3

m4 <- c(1, 2, 3)
m5 <- c(1, 2, 3)
ans <- m4 %*% m5
ans

m6 <- matrix(sample(1:20, 9), nrow=3)
m6
m7 <- matrix(sample(1:20, 9), nrow=3)
m7

m8 <- m6 %*% m7
m8

m9 <- matrix(c(1, 2, 3), nrow=1)
m9
m10 <- matrix(c(1, 2, 3), nrow=3)
m10
ans <- m9 %*% m10
ans


# Lists

similar_song <- list(title = "R you on time?", duration = 230)
lst1 <- list(title = "Rsome times", duration = 190, track = 5, similar = similar_song)
lst1
str(lst1)

lst1[1]
lst1[[1]]
str(lst1[c(1,3)])
str(lst1[[4]][[1]])
str(lst1[[4]][1])
lst1[c(4,2)]
lst1[[c(4,2)]]
lst1["duration"]
str(lst1["duration"]) 
str(lst1[c("similar", "duration")])
str(lst1[[c("similar", "duration")]])
str(lst1[[c(T)]])
lst1$duration
str(lst1$similar$title)

mx1 <- matrix(1:16, nrow = 4)
ssl1 <-list("hi", 123, mx1)
sl1 <- list(ssl1)
sl2 <- list(2)
sl3 <- list(3)
sl4 <- list("4")
l1 <- list(sl1, sl2, sl3, sl4)
str(l1)

v1 <- list(123, "this is new")
str(v1)

str(l1[[1]][[1]][[1]][1])
substr(l1[[1]][[1]][[1]][1], 2, 2)

l1[[1]][[1]][[2]][2] <- "this is new"
str(l1[[1]][[1]][[2]])


string1 <- "This is a string"
substr(string1, 4, 4)


l2 <- list(ssl1)
str(l2)
l2 <- c(l2, "another string")
str(l2)


