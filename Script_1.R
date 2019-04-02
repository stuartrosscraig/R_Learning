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

cars_names <- c("mpg","cyl","disp","hp","drat","wt","qsec","vs","am","gear","carb")
cars_names
Mazda_RX4 <- c(21.0,6,160.0,110,3.90,2.620,16.46,0,1,4,4)
Mazda_RX4_Wag <- c(21.0,6,160.0,110,3.90,2.875,17.02,0,1,4,4)
Datsun_710 <- c(22.8,4,108.0,93,3.85,2.320,18.61,1,1,4,1)
Hornet_4_Drive <- c(21.4,6,258.0,110,3.08,3.215,19.44,1,0,3,1)
Hornet_Sportabout <- c(18.7,8,360.0,175,3.15,3.440,17.02,0,0,3,2)
Valiant <- c(18.1,6,225.0,105,2.76,3.460,20.22,1,0,3,1)
Duster_360 <- c(14.3,8,360.0,245,3.21,3.570,15.84,0,0,3,4)
Merc_240D <- c(24.4,4,146.7,62,3.69,3.190,20.00,1,0,4,2)
Merc_230 <- c(22.8,4,140.8,95,3.92,3.150,22.90,1,0,4,2)
Merc_280 <- c(19.2,6,167.6,123,3.92,3.440,18.30,1,0,4,4)
Merc_280C <- c(17.8,6,167.6,123,3.92,3.440,18.90,1,0,4,4)
Merc_450SE <- c(16.4,8,275.8,180,3.07,4.070,17.40,0,0,3,3)
Merc_450SL <- c(17.3,8,275.8,180,3.07,3.730,17.60,0,0,3,3)
Merc_450SLC <- c(15.2,8,275.8,180,3.07,3.780,18.00,0,0,3,3)
Cadillac_Fleetwood <- c(10.4,8,472.0,205,2.93,5.250,17.98,0,0,3,4)
Lincoln_Continental <- c(10.4,8,460.0,215,3.00,5.424,17.82,0,0,3,4)
Chrysler_Imperial <- c(14.7,8,440.0,230,3.23,5.345,17.42,0,0,3,4)
Fiat_128 <- c(32.4,4,78.7,66,4.08,2.200,19.47,1,1,4,1)
Honda_Civic <- c(30.4,4,75.7,52,4.93,1.615,18.52,1,1,4,2)
Toyota_Corolla <- c(33.9,4,71.1,65,4.22,1.835,19.90,1,1,4,1)
Toyota_Corona <- c(21.5,4,120.1,97,3.70,2.465,20.01,1,0,3,1)
Dodge_Challenger <- c(15.5,8,318.0,150,2.76,3.520,16.87,0,0,3,2)
AMC_Javelin <- c(15.2,8,304.0,150,3.15,3.435,17.30,0,0,3,2)
Camaro_Z28 <- c(13.3,8,350.0,245,3.73,3.840,15.41,0,0,3,4)
Pontiac_Firebird <- c(19.2,8,400.0,175,3.08,3.845,17.05,0,0,3,2)
Fiat_X1_9 <- c(27.3,4,79.0,66,4.08,1.935,18.90,1,1,4,1)
Porsche_914_2 <- c(26.0,4,120.3,91,4.43,2.140,16.70,0,1,5,2)
Lotus_Europa <- c(30.4,4,95.1,113,3.77,1.513,16.90,1,1,5,2)
Ford_Pantera_L <- c(15.8,8,351.0,264,4.22,3.170,14.50,0,1,5,4)
Ferrari_Dino <- c(19.7,6,145.0,175,3.62,2.770,15.50,0,1,5,6)
Maserati_Bora <- c(15.0,8,301.0,335,3.54,3.570,14.60,0,1,5,8)
Volvo_142E <- c(21.4,4,121.0,109,4.11,2.780,18.60,1,1,4,2)

# this is a set of vectors which would be the observations in the dataframe - we don't pass vectors of the observations in dataframe(), we pass vectors of the individual variables - how can i easy construct vectors collecting the individual elements of the observations together??

# TODO make matrix out of the above and then make vectors out of its columns - use a vector of the names and the vectors of all the columns to make a dataframe with the names from the vector of names

allcars <- list(Mazda_RX4,Mazda_RX4_Wag,Datsun_710,Hornet_4_Drive,Hornet_Sportabout,Valiant,Duster_360,Merc_240D,Merc_230,Merc_280,Merc_280C,Merc_450SE,Merc_450SL,Merc_450SLC,Cadillac_Fleetwood,Lincoln_Continental,Chrysler_Imperial,Fiat_128,Honda_Civic,Toyota_Corolla,Toyota_Corona,Dodge_Challenger,AMC_Javelin,Camaro_Z28,Pontiac_Firebird,Fiat_X1_9,Porsche_914_2,Lotus_Europa,Ford_Pantera_L,Ferrari_Dino,Maserati_Bora,Volvo_142E)



vb1 <- allcars[[1]][[1]]
vb1
vb2 <- allcars[[1]][1]
vb2
vb3 <- vb1 == vb2
vb3

vb4 <- 3
vb4
is.vector(vb4)
vb5 <- c(c(c(3)))
vb5
is.vector(vb5)

vb4 == vb5
vb4[1][1][1][1][1][1][1]

rm(all_cars)
ls()

allcars[[1]][1]

variables <- list()
for (i in length(cars_names)){
  lvar <- c()
  rename.variables[i] 

}

for (i in length(allcars)){
  allcars[i]
  
}


for (i in length(allcars)){
  mpg[i] <-
  
}

mtcars <- data.frame(mpg,cyl,disp,hp,drat,wt,qsec,vs,am,gear,carb)


# Dataframes

name <- c("Anne", "Pete", "Frank", "Julia", "Cath")
age <- c(28,30,21,39,35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people <- data.frame(name, age, child)



str(people$age)
str(people[["age"]])
str(people[[2]])
str(people["age"])
str(sort(people$age))

order(people$age)
people

height <- c(163, 177, 163, 162, 157)
people$height <- height
people

tom <- data.frame(name="Tom", age=37, child=FALSE, height=183)
rbind(people, tom)

ranks <- order(people$age)
ranks

people[ranks, ]

# todo testing the todo...

planets_df
name               type diameter rotation has_rings
1 Mercury Terrestrial planet    0.382    58.64     FALSE
2   Venus Terrestrial planet    0.949  -243.02     FALSE
3   Earth Terrestrial planet    1.000     1.00     FALSE
4    Mars Terrestrial planet    0.532     1.03     FALSE
5 Jupiter          Gas giant   11.209     0.41      TRUE
6  Saturn          Gas giant    9.449     0.43      TRUE
7  Uranus          Gas giant    4.007    -0.72      TRUE
8 Neptune          Gas giant    3.883     0.67      TRUE

# TODO here's more data to practise putting a dataframe together

ls()

a <- c(100,9,101)
order(a)
a[order(a)]
a

?par
