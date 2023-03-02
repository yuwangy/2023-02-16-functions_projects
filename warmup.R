binge_sex_female <- function(num_drinks){
  if (num_drinks >= 4){
    return("binge")
  } else {
    return("no binge")
  }
}
binge_sex_female(4)
testthat::expect_equal(binge_sex_female(4),"binge")
testthat::expect_equal(binge_sex_female(1), "no binge")

binge_sex_male <- function(num_drinks){
  if(num_drinks >= 5){
    return ("binge")
  }else {
    return ("no binge")
  }
}

binge_sex_male(5)

binge_status <- function(sex, num_drinks){
  if(sex == "male") {
    return (binge_sex_male(num_drinks))
  }else {
    return (binge_sex_female(num_drinks))
  }
}
binge_status("male",5)
testthat::expect_equal(binge_status("male",5), "binge")




