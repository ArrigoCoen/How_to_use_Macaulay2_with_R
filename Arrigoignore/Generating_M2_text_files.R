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



#install.packages("")

# Carpeta del proyecto ----------------------------------------------------

cat("\014") # borra consola 
rm(list=ls())  # Borra todo

# 1. Home
# 2. Work
# 3. Laptop
# 4. Other
rutas_prueba <- c("/Users/arrigocoen/Dropbox","/Users/useradmin/Dropbox","","")
eleccion_compu <- which(file.exists(rutas_prueba))

# Direcciones de cada computadora
source_raiz <- c("",# 1. Home
                 "",# 2. Work
                 "",# 3. Laptop
                 "")[eleccion_compu]# 4. Other

setwd(source_raiz)

# source("")
# library()


# Changing the directory --------------------------------------------------

# IN THIS CASE WE USE A DIFFERENT DIRECTORY TO USE THE ALREADY MADE FUNCTIONS

cat("\014") # borra consola 
rm(list=ls())  # Borra todo

# 1. Home
# 2. Work
# 3. Laptop
# 4. Otro
rutas_prueba <- c("/Users/arrigocoen/Dropbox","/Users/useradmin/Dropbox","","")
eleccion_compu <- which(file.exists(rutas_prueba))

# Direcciones de cada computadora
source_raiz <- c("/Users/arrigocoen/Dropbox/1 Phylogenetics/2019/Ransanec/R",
                 "/Users/useradmin/Dropbox/1 Phylogenetics/2019/Ransanec/R",
                 "",
                 "")[eleccion_compu]

setwd(source_raiz)

library(openxlsx)
library("readr")
library(stringr) # para eliminar espacios de mas y usar la funcion str_trim 
library(pastecs) # basic statistics
library(SparseM) # plot of 0-1 matrix
source("Fn phylo R.R")

library("xlsx")


# Code to imitate ---------------------------------------------------------


cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Fn phylo R.R")
Z0_t1 <- 0
K <- 4
#  # mat_eq_rotated <- gen_mat_TeX_and_Mat_rotation_comparison(K,Z0_t1)
mat_eq_rotated <- gen_mat_rotation_Diff_variables(K,Z0_t1)
idx_Ni <- 1
idx_Nj <- 2
N_quartet_allowed <- c(1,1,1,2)

SUB_mat_eq_rotated <- gen_SUB_mat_eq_rotated(N_quartet_allowed,mat_eq_rotated)
SUB_mat_eq_rotated_EXTENDED <- gen_SUB_mat_eq_rotated_EXTENDED(SUB_mat_eq_rotated)


head(SUB_mat_eq_rotated_EXTENDED)


# snutha ------------------------------------------------------------------
SUB_mat_eq_rotated_EXTENDED

# asoethu -----------------------------------------------------------------
l_var$var_z

# Function ----------------------------------------------------------------


cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Fn phylo R.R")
Z0_t1 <- 0
K <- 4
#  # mat_eq_rotated <- gen_mat_TeX_and_Mat_rotation_comparison(K,Z0_t1)
mat_eq_rotated <- gen_mat_rotation_Diff_variables(K,Z0_t1)
idx_Ni <- 1
idx_Nj <- 2
N_quartet_allowed <- c(1,1,1,2)


 

all_text <- text_Solve_Ni_vr_Nj_M2(idx_Ni,idx_Nj,N_quartet_allowed,SUB_mat_eq_rotated_EXTENDED)

cat(all_text)



# Generate one Macaulay2 rotation file ------------------------------------

cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Fn phylo R.R")
Z0_t1 <- 0
K <- 4
#  # mat_eq_rotated <- gen_mat_TeX_and_Mat_rotation_comparison(K,Z0_t1)
mat_eq_rotated <- gen_mat_rotation_Diff_variables(K,Z0_t1)
idx_Ni <- 1
idx_Nj <- 2
N_quartet_allowed <- c(1,1,1,2)
Gen_one_M2_rotation_file(idx_Ni,idx_Nj,N_quartet_allowed,mat_eq_rotated)


# GENERATE ALL MACAULAY2 FILES --------------------------------------------


cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Fn phylo R.R")
Gen_All_M2_rotation_file()


# Generating the text to run in cluster -----------------------------------


cat("\014") # borra consola 
rm(list=ls())  # Borra todo
source("Fn phylo R.R")
text_to_run_Rotations_on_cluster()

# asnouhet ----------------------------------------------------------------



# antoehu -----------------------------------------------------------------

# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX
# NEXT STEP: TRANSFORM THE OUTPUT OF MACAULA TO BE READ WITH LATEX

# Function ----------------------------------------------------------------






