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

cars_names <- c(mpg,cyl,disp,hp,drat,wt,qsec,vs,am,gear,carb)
"Mazda RX4" <- c(21.0,6,160.0,110,3.90,2.620,16.46,0,1,4,4)
"Mazda RX4 Wag" <- c(21.0,6,160.0,110,3.90,2.875,17.02,0,1,4,4)
"Datsun 710" <- c(22.8,4,108.0,93,3.85,2.320,18.61,1,1,4,1)
"Hornet 4 Drive" <- c(21.4,6,258.0,110,3.08,3.215,19.44,1,0,3,1)
"Hornet Sportabout" <- C(18.7,8,360.0,175,3.15,3.440,17.02,0,0,3,2)
"Valiant" <- (18.1,6,225.0,105,2.76,3.460,20.22,1,0,3,1)
"Duster 360" <- c(14.3,8,360.0,245,3.21,3.570,15.84,0,0,3,4)
"Merc 240D" <- c(24.4,4,146.7,62,3.69,3.190,20.00,1,0,4,2)
"Merc 230" <- c(22.8,4,140.8,95,3.92,3.150,22.90,1,0,4,2)
"Merc 280" <- c(19.2,6,167.6,123,3.92,3.440,18.30,1,0,4,4)
"Merc 280C" <- c(17.8,6,167.6,123,3.92,3.440,18.90,1,0,4,4)
"Merc 450SE" <- c(16.4,8,275.8,180,3.07,4.070,17.40,0,0,3,3)
"Merc 450SL" <- c(17.3,8,275.8,180,3.07,3.730,17.60,0,0,3,3)
"Merc 450SLC" <- c(15.2,8,275.8,180,3.07,3.780,18.00,0,0,3,3)
"Cadillac Fleetwood" <- c(10.4,8,472.0,205,2.93,5.250,17.98,0,0,3,4)
"Lincoln Continental" <- c( 10.4   8 460.0 215 3.00 5.424 17.82  0  0    3    4)
"Chrysler Imperial" <- c(   14.7   8 440.0 230 3.23 5.345 17.42  0  0    3    4)
"Fiat 128" <- c(            32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1)
"Honda Civic" <- c(         30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2)
"Toyota Corolla" <- c(      33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1)
Toyota Corona <- c(       21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1)
Dodge Challenger <- c(    15.5   8 318.0 150 2.76 3.520 16.87  0  0    3    2)
AMC Javelin <- c(         15.2   8 304.0 150 3.15 3.435 17.30  0  0    3    2)
Camaro Z28 <- c(          13.3   8 350.0 245 3.73 3.840 15.41  0  0    3    4)
Pontiac Firebird <- c(    19.2   8 400.0 175 3.08 3.845 17.05  0  0    3    2)
Fiat X1-9 <- c(           27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1)
Porsche 914-2 <- c(       26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2)
Lotus Europa <- c(        30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2)
Ford Pantera L <- c(      15.8   8 351.0 264 4.22 3.170 14.50  0  1    5    4)
Ferrari Dino <- c(        19.7   6 145.0 175 3.62 2.770 15.50  0  1    5    6)
Maserati Bora <- c(       15.0   8 301.0 335 3.54 3.570 14.60  0  1    5    8)
Volvo 142E <- c(          21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2)
