#-----------------------------------#
# Library - Dsec & Dmel Datasets ----
#-----------------------------------#


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#


## Drosophila sechellia (Dsec) ----

### Dsec ALPN Neuronlists ----

nl_Dsec_ALPNs_DsecF_allR <- read.neurons(loc_Dsec_ALPNs_DsecF_allR, pattern = "*.swc", neuronnames = NULL)
nl_Dsec_ALPNs_DsecI_allR <- read.neurons(loc_Dsec_ALPNs_DsecI_allR_renamed, pattern = "*.swc", neuronnames = NULL)


# VM5d
nl_Dsec_ALPNs_DsecF_R_VM5d <- read.neurons("./1_Data/5_Dataset_our_v2/7_VM5d_DsecI", pattern = "*.swc", neuronnames = NULL)
nl_Dsec_ALPNs_DsecF_R_DM2 <- read.neurons("./1_Data/5_Dataset_our_v2/9_DM2_DsecI", pattern = "*.swc", neuronnames = NULL)

nl_Dsec_ALPNs_IS2_R_VM5d <- xform_brain(nl_Dsec_ALPNs_DsecF_R_VM5d, sample = DsecI, reference = IS2)
nl_Dmel_ALPNs_IS2_R_VM5d <- read.neurons("./1_Data/6_Dataset_other/10_Dmel_VM5d", pattern = "*.swc", neuronnames = NULL)





### Dsec Glomeruli Surfaces ----

#### DsecF Glomeruli Surfaces ----
# In Amira Segmentation view:
# Masking on the left brain hemisphere in DsecF-registered brains
# Smooth Segmentation: 5px, 3d volume
# In Amira Project view:
# Generate Surface (compactify: 2,4), smooth = 5
# export as HXSurface ascii (*.surf)
glom_Dsec_AL_L_DsecF_lowres <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/04_Dsec_Glomeruli/Dsec_Glomi_v2_comp4.surf")
glom_Dsec_AL_L_DsecF_highres <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/04_Dsec_Glomeruli/Dsec_Glomi_v2_comp2.surf")

#### DsecI Glomeruli Surfaces ----
glom_Dsec_AL_L_DsecI_lowres <- xform(glom_Dsec_AL_L_DsecF_lowres, DsecFtoDsecI)
glom_Dsec_AL_L_DsecI_highres <- xform(glom_Dsec_AL_L_DsecF_highres, DsecFtoDsecI)

#### IS2 Glomeruli Surfaces ----
glom_Dsec_AL_L_IS2_lowres <- xform_brain(glom_Dsec_AL_L_DsecI_lowres, sample = DsecI, reference = IS2)
glom_Dsec_AL_L_IS2_highres <- xform_brain(glom_Dsec_AL_L_DsecI_highres, sample = DsecI, reference = IS2)




### Dsec Brain Surfaces ----

#### DsecF Brain Surface ----
# In Amira Segmentation view:
# Masking DsecF.tif; intensities 11000-max
# Smooth Segmentation: 5px, 3d volume
# Shrink once
# In Amira Project view:
# Generate Surface (compactify: 0,4,6,8), smooth = 7
# export as HXSurface ascii (*.surf)
DsecF_surf <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/01_Dsec_DsecF/DsecF_comp6.surf")
xyscaled <- scale(DsecF_surf$Vertices, center = FALSE, scale = c(2.16796,2.16796, 1,1))
DsecF_surf$Vertices <- data.frame(xyscaled)
# clear3d()
# plot3d(DsecF_surf)


#### DsecI Brain Surface ----
# In Amira Segmentation view:
# Masking DsecF.tif; intensities 11000-max
# Smooth Segmentation: 5px, 3d volume
# Shrink once
# In Amira Project view:
# Generate Surface (compactify: 0,4,6,8), smooth = 7
# export as HXSurface ascii (*.surf)
DsecI_surf <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/02_Dsec_DsecI/DsecI_comp6.surf")
xyscaled <- scale(DsecI_surf$Vertices, center = FALSE, scale = c(2.16796,2.16796, 1,1))
DsecI_surf$Vertices <- data.frame(xyscaled)
# clear3d()
# plot3d(DsecI_surf)


#### IS2 Brain Surface ----
# In Amira Project view:
# Correct z-Drop: automatic
# In Amira Segmentation view
# Masking DsecF.tif; intensities 10000-max
# Smooth Segmentation: 5px, 3d volume
# Remove islands: <15
# In Amira Project view:
# Generate Surface (compactify: 0,4,6,8), smooth = 9
# export as HXSurface ascii (*.surf)
# Comment: Due to its uneven z-intensity we used the surface only usable to show glomeruli positions better the the default natverse IS2 surface
IS2_surf <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/03_Dmel_IS2/IS2_comp6.surf")
xyscaled <- scale(IS2_surf$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
IS2_surf$Vertices <- data.frame(xyscaled)
# clear3d()
# plot3d(IS2_surf)




### Dsec Neuronal Tract Surfaces ----

#### DsecF Neuronal Tract Surfaces ----
# In Amira Segmentation view:
# Masking on the left brain hemisphere in DsecF-registered brains
# Smooth Segmentation: 5px, 3d volume
# In Amira Project view:
# Generate Surface (compactify: 1,2), smooth = 5
# export as HXSurface ascii (*.surf)
tract_Dsec_AL_L_DsecF_lowres <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/06_Dsec_Tracts/DsecF_Tracts_comp2.surf")
xyscaled <- scale(tract_Dsec_AL_L_DsecF_lowres$Vertices, center = FALSE, scale = c(2.16,2.16, 1,1))
tract_Dsec_AL_L_DsecF_lowres$Vertices <- data.frame(xyscaled)

tract_Dsec_AL_L_DsecF_highres <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/06_Dsec_Tracts/DsecF_Tracts_comp1.surf")
xyscaled <- scale(tract_Dsec_AL_L_DsecF_highres$Vertices, center = FALSE, scale = c(2.16,2.16, 1,1))
tract_Dsec_AL_L_DsecF_highres$Vertices <- data.frame(xyscaled)

#### DsecI Tract Surfaces ----
tract_Dsec_AL_L_DsecI_lowres <- xform(tract_Dsec_AL_L_DsecF_lowres, DsecFtoDsecI)
tract_Dsec_AL_L_DsecI_highres <- xform(tract_Dsec_AL_L_DsecF_highres, DsecFtoDsecI)

#### IS2 Tract Surfaces ----
tract_Dsec_AL_L_IS2_lowres <- xform_brain(tract_Dsec_AL_L_DsecI_lowres, sample = DsecI, reference = IS2)
tract_Dsec_AL_L_IS2_highres <- xform_brain(tract_Dsec_AL_L_DsecI_highres, sample = DsecI, reference = IS2)







## Drosophila melanogaster (Dmel) ----

### Dmel ALPN Neuronlists ----

#### Dmel All adPNs & lPNs Neuronlist ----
nl_Dmel_ALPNs_IS2_allRH <- read.neurons(loc_Dmel_ALPNs_IS2_allRH, pattern = "*.swc", neuronnames = NULL)

#### Dmel & Dsec adPNs & lPNs ----
nl_ALPN_all_adPNs_lPNs <- read.neurons("./1_Data/6_Dataset_other/07_All_adPNs_lPNs_DsecLM_DmelLM&EM_uni&multi_annotated&notannotated_NBLAST")




### Dmel Brain Surfaces ----




### Dmel Glomeruli Surfaces ----

#### IS2 Glomeruli Surfaces - Amira ----
# In Amira Segmentation view
# Smooth Segmentation: 5px, 3d volume
# Remove islands: <15
# In Amira Project view:
# Generate Surface (compactify: 1,2,4), smooth = 5
# export as HXSurface ascii (*.surf)
glom_Dmel_AL_L_IS2_highres <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/05_Dmel_Glomeruli/Dmel_Glomeruli_comp2.surf")
xyscaled <- scale(glom_Dmel_AL_L_IS2_highres$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_AL_L_IS2_highres$Vertices <- data.frame(xyscaled)
glom_Dmel_AL_L_IS2_lowres <- read.hxsurf("./1_Data/4_Brain_Area_Annotations/05_Dmel_Glomeruli/Dmel_Glomeruli_comp4.surf")
xyscaled <- scale(glom_Dmel_AL_L_IS2_lowres$Vertices, center = FALSE, scale = c(2.44,2.44, 1,1))
glom_Dmel_AL_L_IS2_lowres$Vertices <- data.frame(xyscaled)
glom_Dmel_AL_L_IS2_lowres <- mirror_brain(glom_Dmel_AL_L_IS2_lowres, IS2, .progress='text')

# clear3d()
# plot3d(IS2_surf, alpha = 0.05)
# 
# plot3d(glom_Dmel_AL_L_IS2_Lowres)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_VC3m" , color = "red", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_VC3l" , color = "orange", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_VM2" , color = "blue", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_DM2" , color = "blue", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_DM6" , color = "lightblue", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_VM7d" , color = "lightblue", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_VM7v" , color = "lightblue", alpha = 0.5)
# plot3d(glom_Dmel_AL_L_IS2_Lowres, materials = "L_VM5v" , color = "green", alpha = 0.5)

#### IS2 Glomeruli Surfaces - MIB ----
# plot3d(glom_Dmel_IS2_AL_L_VM5d, color = col_glom_VM5d, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VM7d, color = col_glom_VM7d, alpha = alpha_glom)
# #plot3d(glom_Dmel_IS2_AL_L_VA2, color = col_glom_VA2, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_DM6, color = col_glom_DM6, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VM2, color = col_glom_VM2, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VC3m, color = col_glom_VC3, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VC3l, color = col_glom_VC3, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_DM2, color = col_glom, alpha = alpha_glom)



### Dmel Brain Regions ----
#### VFB_00102162 - Superior Lateral Protocerebrum on JRC2018Unisex adult brain ----
br_SLP_JRC2018U <- readOBJ("./1_Data/4_Brain_Area_Annotations/07_VFB_Brain_Areas/VFB_00102162_SLP_on_JRC2018Unisex_adult_brain.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

br_SLP_DsecI <- xform_brain(br_SLP_JRC2018U, reference = "DsecI", sample = "JRC2018U")
br_SLP_IS2 <- xform_brain(br_SLP_JRC2018U, reference = "IS2", sample = "JRC2018U")
#open3d()
# plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.04)
# plot3d(DsecI, alpha = 0.1)


#### VFB_00102176 - Superior Clamp ----
br_SCL_JRC2018U <- readOBJ("./1_Data/4_Brain_Area_Annotations/07_VFB_Brain_Areas/VFB_00102176_SCL_on_JRC2018Unisex_adult_brain.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

br_SCL_DsecI <- xform_brain(br_SCL_JRC2018U, reference = "DsecI", sample = "JRC2018U")
br_SCL_IS2 <- xform_brain(br_SCL_JRC2018U, reference = "IS2", sample = "JRC2018U")




