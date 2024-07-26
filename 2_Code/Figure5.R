#----------------------------#
# Figure 5 ----
#----------------------------#


## Front Matter ----
### Load Libraries ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#


## Panel f - Model - Assets for the model ----

### Dsec VM5d ----
nl_Dsec_ALPNs_DsecI_R_VM5d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_1_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_24_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_97_adPN_u_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_133_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d
                                       )

open3d()
#plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_R_VM5d, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(nl_Dsec_ALPNs_DsecI_R_DM2, lwd=lwd, soma=soma, col=colfunc_yellow)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure5/Figure5_f_Dsec_VM5d_frontal_all_v1.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

### Dmel VM5d ----
loc_Dmel_EM_FlyEM_ALPNs_IS2_R_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM5d/")
nl_Dmel_EM_FlyEM_ALPNs_IS2_R_VM5d <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_R_VM5d, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM5d/")
nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_ALPNs_IS2_R_VM5d <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_R_VM5d,nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d)

nl_Dmel_ALPNs_DsecI_R_VM5d <- xform_brain(nl_Dmel_ALPNs_IS2_R_VM5d, sample = IS2, reference = DsecI)
nl_Dmel_ALPNs_DsecI_R_VM5d_FlyEM <- xform_brain(nl_Dmel_EM_FlyEM_ALPNs_IS2_R_VM5d, sample = IS2, reference = DsecI)
nl_Dmel_ALPNs_DsecI_R_VM5d_FAFB <- xform_brain(nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d, sample = IS2, reference = DsecI)
glom_Dmel_AL_L_DsecI_lowres <- xform_brain(glom_Dmel_AL_L_IS2_lowres, sample = IS2, reference = DsecI)

clear3d()
open3d()
#plot3d(IS2, alpha = alpha_brain, col = "grey")
plot3d(nl_Dmel_ALPNs_DsecI_R_VM5d_FAFB, lwd=lwd, soma=soma, col=colfunc_darkblue)
plot3d(nl_Dmel_ALPNs_DsecI_R_VM5d_DM2, lwd=lwd, soma=soma, col=colfunc_darkblue)
plot3d(glom_Dmel_AL_L_DsecI_lowres, materials = "L_VM5d", color = "cyan", alpha = 0.8)
nview3d("frontal", 0,zoom = 0.7)
snapshot3d("./3_Figures/Figure5/Figure5_f_Dmel_VM5d_FAFB_frontal_all_v1.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()




## Panel f v2 ----
### Dsec ----
# 2x DM2
nl_Dsec_ALPNs_DsecI_DM2_x2 <- neuronlist(#nl_Dsec_ALPNs_DsecI_allR$Dsec_109_lPN_u_DM2,
  nl_Dsec_ALPNs_DsecI_allR$Dsec_115_lPN_u_DM2,
  nl_Dsec_ALPNs_DsecI_allR$Dsec_126_lPN_u_DM2
)

# 4x VM5ds
nl_Dsec_ALPNs_DsecI_VM5d_x4 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d,
                                          nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d,
                                          nl_Dsec_ALPNs_DsecI_allR$Dsec_1_adPN_up_VM5d,
                                          #nl_Dsec_ALPNs_DsecI_allR$Dsec_97_adPN_u_VM5d
                                          nl_Dsec_ALPNs_DsecI_allR$Dsec_24_adPN_up_VM5d
                                          #nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d,
                                          #nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d
                                          )


open3d()
clear3d()
#plot3d(DsecI_surf, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightblue1", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_x4, soma =soma, lwd=8, col = colfunc_red2)
plot3d(nl_Dsec_ALPNs_DsecI_DM2_x2, soma =soma, lwd=8, col = colfunc_yellow)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure5/Figure5_f_Dsec_Summary_frontal_all_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {rgl.close()}

open3d()
clear3d()
#plot3d(DsecI_surf, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightskyblue3", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_x4, soma =soma, lwd=8, col = colfunc_red2)
plot3d(nl_Dsec_ALPNs_DsecI_DM2_x2, soma =soma, lwd=8, col = colfunc_yellow)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure5/Figure5_f_Dsec_Summary_dorsal_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {rgl.close()}



### Dmel - FAFB ----
# 2x DM2
loc_Dmel_EM_FAFB_ALPNs_IS2_R_DM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DM2/")
nl_Dmel_EM_FAFB_ALPNs_IS2_R_DM2 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_R_DM2, pattern = "*.swc", neuronnames = NULL)

# 4x VM5d
loc_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM5d/")
nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d, pattern = "*.swc", neuronnames = NULL)

# IS2 > DsecI
nl_Dmel_EM_FAFB_ALPNs_DsecI_R_DM2 <- xform_brain(nl_Dmel_EM_FAFB_ALPNs_IS2_R_DM2, sample = IS2, reference = DsecI)
nl_Dmel_EM_FAFB_ALPNs_DsecI_R_VM5d <- xform_brain(nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d, sample = IS2, reference = DsecI)

glom_Dmel_AL_L_DsecI_lowres <- xform_brain(glom_Dmel_AL_L_IS2_lowres, sample = IS2, reference = DsecI)


open3d()
clear3d()
#plot3d(DsecI, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightblue1", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dmel_EM_FAFB_ALPNs_DsecI_R_VM5d[1:4], soma =soma, lwd=8, col = colfunc_darkblue)
plot3d(nl_Dmel_EM_FAFB_ALPNs_DsecI_R_DM2[1:2], soma =soma, lwd=8, col = colfunc_cyan)
plot3d(glom_Dmel_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = 0.8)
plot3d(glom_Dmel_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = 0.8)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure5/Figure5_f_Dmel_Summary_frontal_all_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {rgl.close()}

open3d()
clear3d()
#plot3d(DsecI, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightskyblue3", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dmel_EM_FAFB_ALPNs_DsecI_R_VM5d[1:4], soma =soma, lwd=8, col = colfunc_darkblue)
plot3d(nl_Dmel_EM_FAFB_ALPNs_DsecI_R_DM2[1:2], soma =soma, lwd=8, col = colfunc_cyan)
plot3d(glom_Dmel_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = 0.8)
plot3d(glom_Dmel_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = 0.8)
nview3d("dorsal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure5/Figure5_f_Dmel_Summary_dorsal_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {rgl.close()}







 