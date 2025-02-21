#-------------------------------------------------------------------------#
#                                                                         #
#                           NOMBRE DE ARCHIVO                             #
#                                                                         #
#-------------------------------------------------------------------------#

# V1 FECHA

#-------------------------------------------------------------------------#
# OBSERVACIONES:

# 1. Bla bla bla
# 2. Bla bla bla
# 3. Bla bla bla
#
#-------------------------------------------------------------------------#


# Packages ----------------------------------------------------------------
library(stringr)


#install.packages("")

# Carpeta del proyecto ----------------------------------------------------

cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Functions.R")




txt_file <- '/Users/arrigocoen/Dropbox/GitHub/2020 Arrigo Repos/How_to_use_Macaulay2_with_R/Macaulay2_output/Macaulay2_file_long_output_out.txt'
txt_file <- 'Macaulay2_output/K4_allN1222_out.txt' # Example with a line of the type: "-----------"
txt_file <- 'Macaulay2_output/Macaulay2_file_long_output_out.txt'

data_txt = read.table(txt_file, fill = F, header = FALSE , sep = "\t")
idx_output <- 3
text_equation <- raw_text_output_vector_text_M2(idx_output,data_txt)



# Other test for output M2 ------------------------------------------------


cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Functions.R")

txt_file <- '/Users/arrigocoen/Dropbox/GitHub/2020 Arrigo Repos/How_to_use_Macaulay2_with_R/Macaulay2_output/Macaulay2_file_long_output_out.txt'
txt_file <- 'Macaulay2_output/K4_allN1222_out.txt' # Example with a line of the type: "-----------"
txt_file <- 'Macaulay2_output/K8_allN11122_out.txt' # Example with a line of the type: "-----------" and exponents
txt_file <- 'Macaulay2_output/Macaulay2_file_long_output_out.txt'


data_txt = read.table(txt_file, fill = F, header = FALSE , sep = "\t")
idx_output <- 3
text_equation <- raw_text_output_vector_text_M2(idx_output,data_txt)
text_equation <- add_powers_and_errase_extra_lines(text_equation) 
# text_equation

vec_ideals <- extracting_all_ideal_equations(text_equation)
vec_ideals


# Generating matrix of equations ------------------------------------------


restrictions <- vec_ideals

all_eq <- order(unique(unlist(strsplit(paste0(vec_ideals,collapse = ","), split=',', fixed=TRUE))))


mat_eq <- matrix(0,length(all_eq),length(restrictions))


# Testing an old mathematica function -------------------------------------
# From Fn_Mat_to_TeX.R
x <- "{z0->(gam-gamR+gamR zR0)/gam,z1->(gam-gamR-zR1+gamR zR1)/(-1+gam),z11->0,zR10->0},{z1->zR1,z11->0,zR0->0,gam->0,gamR->0},{z1->1,z11->zR0 zR10,zR1->1,gam->0,gamR->0},{z1->zR1,z11->0,zR10->0,gam->0,gamR->0},{z1->1,z11->zR10,zR0->1,gam->0,gamR->1},{z1->1,z11->zR10,zR0->1,zR1->1,gam->0},{z1->gamR+zR1-gamR zR1,z11->0,zR0->1,zR10->0,gam->0},{z0->1,z11->zR0 zR10,zR1->1,gam->1,gamR->0},{z0->1,z11->zR10,zR0->1,gam->1,gamR->1},{z0->zR0,z11->0,zR10->0,gam->1,gamR->1},{z0->1,z11->zR10,zR0->1,zR1->1,gam->1},{z0->1-gamR+gamR zR0,z11->0,zR1->1,zR10->0,gam->1},{z0->1,z1->(gam-zR1)/(-1+gam),z11->0,zR0->0,gamR->0},{z0->1,z1->1,z11->zR0 zR10,zR1->1,gamR->0},{z0->1,z1->(gam-zR1)/(-1+gam),z11->0,zR10->0,gamR->0},{z0->1,z1->1,z11->zR10,zR0->1,gamR->1},{z0->1,z1->1,z11->zR10,zR0->1,zR1->1},{z0->1,z1->(gam-gamR-zR1+gamR zR1)/(-1+gam),z11->0,zR0->1,zR10->0},{z0->(gam-gamR-2 gam gamR+2 gamR^2+gam gamR^2)/(gam (-1+gamR)^2),z1->(-gam+gamR+gam gamR)/((-1+gam) (-1+gamR)),z11->-((gamR zR10)/(-1+gamR)),zR0->gamR^2/(-1+gamR)^2,zR1->gamR^2/(-1+gamR)^2},{z0->(gam-gamR-2 gam gamR+2 gamR^2+gam gamR^2)/(gam (-1+gamR)^2),z1->(gam-gamR-zR1+gamR zR1)/(-1+gam),z11->0,zR0->gamR^2/(-1+gamR)^2,zR10->0},{z0->1,z11->0,zR0->0,zR1->1,gam->1,gamR->0},{z0->1,z11->0,zR1->1,zR10->0,gam->1,gamR->0},{z0->1,z11->0,zR0->1,zR1->1,zR10->0,gam->1},{z0->(1-3 gamR+3 gamR^2)/(-1+gamR)^2,z11->0,zR0->gamR^2/(-1+gamR)^2,zR1->1,zR10->0,gam->1}"
mathematica_string_to_mat(x)


# CONTINUAR USANDO ESTA FUNCION PARA GENERAR LA MATRIZ Y CON ELLA EL TEX!!!!
# CONTINUAR USANDO ESTA FUNCION PARA GENERAR LA MATRIZ Y CON ELLA EL TEX!!!!
# CONTINUAR USANDO ESTA FUNCION PARA GENERAR LA MATRIZ Y CON ELLA EL TEX!!!!
# CONTINUAR USANDO ESTA FUNCION PARA GENERAR LA MATRIZ Y CON ELLA EL TEX!!!!
# CONTINUAR USANDO ESTA FUNCION PARA GENERAR LA MATRIZ Y CON ELLA EL TEX!!!!
# CONTINUAR USANDO ESTA FUNCION PARA GENERAR LA MATRIZ Y CON ELLA EL TEX!!!!


# nastheou ----------------------------------------------------------------

# in the vector "all_ideal_rows" is contian the information of the output that
# we want to analize. In each of his entries there is a string with three possible
# information:
# 1) the exponents of the next line of polynomials.
# 2) the polynomials separated by commas.
# 3) a line of "-------" that represents that the line of a polinomial was broken 
#   in several lines.


# In case of multiple spaces
(ini_interval_ideal <- row_G_eliminate +1)
phrase_to_look_at <- "o3 : Ideal of R"
length_phrase <- nchar(phrase_to_look_at)
(end_interval_ideal <- which(substr(unlist_mydata,1,length_phrase)==phrase_to_look_at)-1)
(all_ideal_rows <- unlist_mydata[ini_interval_ideal:end_interval_ideal])

vec_ii_for <- max(length(all_ideal_rows)-1,1):1
# all_ideal_rows contians the lines with the text between "o3 = ideal" and "o3 : Ideal of R" of the .txt file
all_ideal_rows
# The next for loops over all the rows that make the invariants
for(ii in vec_ii_for) {
  (current_row <- all_ideal_rows[ii])
  (current_row_no_spaces <- gsub("\\s+", "", str_trim(current_row)))
  if(print_info) cat("ii=",ii,"\n",current_row,"\n")
  if(substr(current_row,1,20) == "     ---------------"){
    all_ideal_rows <- all_ideal_rows[-ii]
    if(print_info) cat("was eliminated because the spaces\n")
    next
  }
  if(current_row_no_spaces == ""){
    all_ideal_rows <- all_ideal_rows[-ii]
    if(print_info) cat("was eliminated because the its empty\n")
    next
  }
  # In case that the row has no letters, is a power of the next row
  if(regexpr('a', current_row_no_spaces)[[1]]==-1) {
    exponents_found <- T
    bellow_current_row <- all_ideal_rows[ii+1]
    (posible_exponents <- current_row)
    (idx_exponents <- unlist(gregexpr("[[:digit:]]+", current_row)))
    vec_exponents <- regmatches(posible_exponents, gregexpr("[[:digit:]]+", posible_exponents)) # sin "+" se regresa un vector con cada dígito
    (vec_exponents <- as.numeric(unlist(vec_exponents)))
    
    for(jj in length(idx_exponents):1) {
      (one_exponent_index <- idx_exponents[jj])
      bellow_current_row <- paste0(substr(bellow_current_row,1,one_exponent_index-1),"^{",vec_exponents[jj],"}",substr(bellow_current_row,one_exponent_index,nchar(bellow_current_row)))
    }
    all_ideal_rows[ii+1] <- bellow_current_row
    all_ideal_rows <- all_ideal_rows[-ii]
    if(print_info) cat(" pasible power\n")
    next
  }
  if(print_info) cat("normal row\n")
}

all_ideal_rows



# Test to paste exponents -------------------------------------------------

current_row <- data_txt[idx_phrase-1,]

exponents_found <- T
bellow_current_row <- data_txt[idx_phrase,]
(posible_exponents <- current_row)
(idx_exponents <- unlist(gregexpr("[[:digit:]]+", current_row)))
vec_exponents <- regmatches(posible_exponents, gregexpr("[[:digit:]]+", posible_exponents)) # sin "+" se regresa un vector con cada dígito
(vec_exponents <- as.numeric(unlist(vec_exponents)))

for(jj in length(idx_exponents):1) {
  (one_exponent_index <- idx_exponents[jj])
  bellow_current_row <- paste0(substr(bellow_current_row,1,one_exponent_index-1),"^{",vec_exponents[jj],"}",substr(bellow_current_row,one_exponent_index,nchar(bellow_current_row)))
}

bellow_current_row

# all_ideal_rows[ii+1] <- bellow_current_row
# all_ideal_rows <- all_ideal_rows[-ii]


# Old code to transform Macaualay2 output exponent ------------------------

# FROM THE FUNCTION Gen_mat_info_Y_mat_ideal

(row_ideal <- which(substr(unlist_mydata,1,10)=="o3 = ideal"))
(ideal <-  mydata[row_ideal,])

(new_ideal <- as.character(ideal))

exponents_found <- F

# In case of multiple spaces
(ini_interval_ideal <- row_G_eliminate +1)
phrase_to_look_at <- "o3 : Ideal of R"
length_phrase <- nchar(phrase_to_look_at)
(end_interval_ideal <- which(substr(unlist_mydata,1,length_phrase)==phrase_to_look_at)-1)
(all_ideal_rows <- unlist_mydata[ini_interval_ideal:end_interval_ideal])

vec_ii_for <- max(length(all_ideal_rows)-1,1):1

all_ideal_rows
# The next for loops over all the rows that make the invariants
for(ii in vec_ii_for) {
  (current_row <- all_ideal_rows[ii])
  (current_row_no_spaces <- gsub("\\s+", "", str_trim(current_row)))
  if(print_info) cat("ii=",ii,"\n",current_row,"\n")
  if(substr(current_row,1,20) == "     ---------------"){
    all_ideal_rows <- all_ideal_rows[-ii]
    if(print_info) cat("was eliminated because the spaces\n")
    next
  }
  if(current_row_no_spaces == ""){
    all_ideal_rows <- all_ideal_rows[-ii]
    if(print_info) cat("was eliminated because the its empty\n")
    next
  }
  # In case that the row has no letters, is a power of the next row
  if(regexpr('a', current_row_no_spaces)[[1]]==-1) {
    exponents_found <- T
    bellow_current_row <- all_ideal_rows[ii+1]
    (posible_exponents <- current_row)
    (idx_exponents <- unlist(gregexpr("[[:digit:]]+", current_row)))
    vec_exponents <- regmatches(posible_exponents, gregexpr("[[:digit:]]+", posible_exponents)) # sin "+" se regresa un vector con cada dígito
    (vec_exponents <- as.numeric(unlist(vec_exponents)))
    
    for(jj in length(idx_exponents):1) {
      (one_exponent_index <- idx_exponents[jj])
      bellow_current_row <- paste0(substr(bellow_current_row,1,one_exponent_index-1),"^{",vec_exponents[jj],"}",substr(bellow_current_row,one_exponent_index,nchar(bellow_current_row)))
    }
    all_ideal_rows[ii+1] <- bellow_current_row
    all_ideal_rows <- all_ideal_rows[-ii]
    if(print_info) cat(" pasible power\n")
    next
  }
  if(print_info) cat("normal row\n")
}

all_ideal_rows
