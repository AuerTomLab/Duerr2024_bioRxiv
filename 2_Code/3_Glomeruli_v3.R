#---------------------#
# 3_Glomeruli_Dsec - v2 ----
#---------------------#


## Front Matter ----
### Load Libraries ----
source("2_Code/1_Libraries.R")


#---------------------------------------------------------------#

# Glomeruli Annotation in the Microscopy Image Browser (MIB) [http://mib.helsinki.fi]  ----
# Glomeruli were annotated in registered fly brains

# nc82 stainings used for Dsec (reg to DsecI) [to be added]:
# M , M , M , M , M , M

# nc82 stainings used for Dmel (reg to IS2) [to be added]:
# M , M , M , M , M , M

# Export Model as .stl file
# Settings: 500 - 5 - 30'000
# Naming: Dsec_glom_R_VM5d.stl


## Glomeruli File Conversion in MeshLab [https://www.meshlab.net] ----

# Import .stl file
# Export as obj. file
# Settings: 
# Naming: Dsec_glom_R_VM5d.obj


glom_Dmel_IS2_AL_L_VM5d <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_VM5d.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_VM5d$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_VM5d$Vertices <- data.frame(xyscaled)

glom_Dmel_IS2_AL_L_VM7d <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_VM7d.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_VM7d$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_VM7d$Vertices <- data.frame(xyscaled)

glom_Dmel_IS2_AL_L_DM2 <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_DM2.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_DM2$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_DM2$Vertices <- data.frame(xyscaled)


glom_Dmel_IS2_AL_L_VA2 <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_VA2.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_VA2$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_VA2$Vertices <- data.frame(xyscaled)


glom_Dmel_IS2_AL_L_DM6 <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_DM6.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_DM6$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_DM6$Vertices <- data.frame(xyscaled)

glom_Dmel_IS2_AL_L_DM3 <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_DM3.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_DM3$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_DM3$Vertices <- data.frame(xyscaled)


glom_Dmel_IS2_AL_L_VM2 <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_VM2.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_VM2$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_VM2$Vertices <- data.frame(xyscaled)


glom_Dmel_IS2_AL_L_VC3m <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_VC3m.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_VC3m$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_VC3m$Vertices <- data.frame(xyscaled)


glom_Dmel_IS2_AL_L_VC3l <- readOBJ("/Users/benediktdurr/Desktop/MIB_Dmel/Dmel_nc82_stainings_IS2/Dmel_IS2_Glomeruli - OBJ/Dmel_IS2_glom_L_VC3l.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

# Scale Glomerulus to µm 
xyscaled <- scale(glom_Dmel_IS2_AL_L_VC3l$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_IS2_AL_L_VC3l$Vertices <- data.frame(xyscaled)


## Export files
#write.hxsurf(glom_Dmel_IS2_AL_L_VA2, "./1_Data/4_Brain_Area_Annotations/03_Dmel_Antennal_Lobe_Glomeruli/Dmel_IS2_Glomeruli_surf/VA2.surf")


## Create One Glomeruli List  - Dsec ----




## Create One Glomeruli List  - Dmel [not finished] ----
# glom_Dmel_IS2_AL_L_all <- list()

# filenames = dir(path = loc_Dmel_IS2_glom_allL, pattern="*.obj")
# for (i in filenames)
# {
#   final_name <- i
#   i <- paste(loc_Dmel_IS2_glom_allL, i, sep = "")
#   
#   # get Glomerulus into the hx.surf file
#   
#   glom <- readOBJ(i) %>%
#     xyzmatrix() %>%
#     ashape3d(alpha = 10, pert = TRUE) %>%
#     as.mesh3d() %>%
#     as.hxsurf()
#   
#   # Scale Glomerulus to µm 
#   xyscaled <- scale(glom$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
#   glom$Vertices <- data.frame(xyscaled)
#   
#   # check 
#   # plot3d(glom, col= "red")
#   # plot3d(DsecI, col= "red")
#   
#   # get Trace name
#   glom_name <- str_extract(i,"")
#   write.hxsurf(glom_Dmel_IS2_AL_L_DM6, "./1_Data/4_Brain_Area_Annotations/03_Dmel_Antennal_Lobe_Glomeruli/Dmel_IS2_Glomeruli_surf/DM6.surf")
#   #glom_Dmel_IS2_AL_L_all <- c(glom_Dmel_IS2_AL_L_all, glom)
# }
# 
# x <- neuronlist()
# filenames = dir(path = loc_Dmel_IS2_glom_allL_hxsurf, pattern="*.surf")
# for (i in filenames){
#   i <- paste(loc_Dmel_IS2_glom_allL_hxsurf, i, sep = "")
#   x <- c(x, read.hxsurf(i))
# }





# Amira - Dsec Glomeruli Annotations ----
# >> See 1_Library_Datasets


## Plot single Glomeruli ----

### Define colors for "confident"=green & "to be validated"=yellow
confident <- "green"
tbv <- "yellow"
alpha = 0.5

### All Dsec Glomeruli in DsecI ----
clear3d()
open3d()
plot3d(DsecI_surf, alpha = alpha_brain)

plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_D", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4m", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL5", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM5", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1m", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_V", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA3", color = "green", alpha = alpha) 
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA5", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA6", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7m", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = "green", alpha = alpha)#
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC5", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2p", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "green", alpha = alpha)#
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = "green", alpha = alpha) 


### All Dmel Glomeruli in IS2 ----
clear3d()
plot3d(IS2_surf, alpha = alpha_brain)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DA2", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DM1", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DM2", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DM3", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DM4", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DM5", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "DM6", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VA2", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VA6", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VA7m", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VC3l", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VC3m", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM1", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM2", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM3", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM5d", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM5v", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM5d", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM7v", color = "green", alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_Lowres, material = "VM7d", color = "green", alpha = alpha_glom)







