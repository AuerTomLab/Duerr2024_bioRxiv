#-----------------------------#
# Supplementary Figure 3  ----
# Comparison Dsec Conf vs Dmel EM & Conf 
#-----------------------------#


## Front Matter ----
### Load Packages & Resources ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#


##Panel a [Update v2] ----
### Lateral Multi 1 - v8_cl1 ----
####  Lateral Multi 1 - Dsec Conf ----
# > see Supplementary Figure 2


#### Lateral Multi 1 - Dmel Conf ----
# Does not exist


#### Lateral Multi 1 - Dmel EM ----

loc_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_LateralMulti1/")
nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti1 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti1, pattern = "*.swc", neuronnames = NULL)

#nl_Dmel_EM_FlyEM_ALPNs_IS2_LateralMulti1_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti1[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti1, lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti1, lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# # Cluster example
# open3d()
# plot3d(IS2, alpha = alpha_brain)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti1_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
# nview3d("frontal", 0, zoom = zoom_frontal)
# snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)
# 
# open3d()
# plot3d(IS2, alpha = alpha_brain)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti1_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
# nview3d("dorsal", 0, zoom = 0.46)
# snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "1574x1270+25+30")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "1224x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "1600x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_a_Dmel_EM_LateralMulti1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_RH_all, Dorsal_RH_all,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









## Panel b [Update v2]----
### Dorsal Multi1 - v8_cl5 ----
#### Dorsal Multi 1 - Dsec Conf ----
# > see Supplementary Figure 2


#### Dorsal Multi 1 - Dmel Conf ----

# seems not to be the same cell type

# nl_Dmel_Conf_ALPNs_IS2_allRH_DorsalMulti1.1 <- neuronlist(nl_ALPN_all_adPNs_lPNs$`VFB_00006533_VGlut-F-300628_NA`,
#                                                           nl_ALPN_all_adPNs_lPNs$`VFB_00005765_VGlut-F-500852_NA`,
#                                                           nl_ALPN_all_adPNs_lPNs$`VFB_00007038_VGlut-F-700500_NA`,
#                                                           nl_ALPN_all_adPNs_lPNs$`VFB_00005752_VGlut-F-700567_NA`,
#                                                           nl_ALPN_all_adPNs_lPNs$`VFB_00012207_VGlut-F-600366_NA`,
#                                                           nl_ALPN_all_adPNs_lPNs$`VFB_00016056_VGlut-F-500085_NA`
#                                                           )
# 
# 
# nl_Dmel_Conf_ALPNs_IS2_allRH_DorsalMulti1.2 <- neuronlist(nl_ALPN_all_adPNs_lPNs$`VFB_00005730_VGlut-F-700558_NA`,
#                                                         nl_ALPN_all_adPNs_lPNs$`VFB_00012225_VGlut-F-600379_NA`,
#                                                         nl_ALPN_all_adPNs_lPNs$`VFB_00015215_VGlut-F-500183_NA`
#                                                         )
#                                                         
#                                                       
# nl_Dmel_Conf_ALPNs_IS2_allRH_DorsalMulti1.3 <- neuronlist(nl_ALPN_all_adPNs_lPNs$`VFB_00008452_VGlut-F-400662_NA`,
#                                                         nl_ALPN_all_adPNs_lPNs$`VFB_00015758_VGlut-F-500031_NA`,
#                                                         nl_ALPN_all_adPNs_lPNs$`VFB_00011857_VGlut-F-600253_NA`,
#                                                         nl_ALPN_all_adPNs_lPNs$`VFB_00012266_VGlut-F-500471_NA`,
#                                                         nl_ALPN_all_adPNs_lPNs$`VFB_00012775_VGlut-F-400434_NA`
#                                                         )
# 
# 
# clear3d()
# plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_DorsalMulti1.1, lwd=lwd, soma=soma, col=colfunc_green)
# plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_DorsalMulti1.2, lwd=lwd, soma=soma, col=colfunc_cyan)
# plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_DorsalMulti1.3, lwd=lwd, soma=soma, col=colfunc_purple)


#### Dorsal Multi 1 - Dmel EM ----
nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti1 <- neuronlist(nl_ALPN_all_adPNs_lPNs$M_adPNm6_R__FlyEM_HB_788940872_,
                                                           nl_ALPN_all_adPNs_lPNs$M_adPNm4_R__FlyEM_HB_1887872301_,
                                                           nl_ALPN_all_adPNs_lPNs$M_adPNm4_R__FlyEM_HB_1888213190_,
                                                           nl_ALPN_all_adPNs_lPNs$M_adPNm5_R__FlyEM_HB_762982753_,
                                                           nl_ALPN_all_adPNs_lPNs$M_adPNm5_R__FlyEM_HB_1916528384_,
                                                           nl_ALPN_all_adPNs_lPNs$M_adPNm5_R__FlyEM_HB_2040344064_
)


nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti1  <- neuronlist(nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R1__FAFB_57258_,
                                                             nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R2__FAFB_57270_,
                                                             nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R3__FAFB_80008_,
                                                             nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R4__FAFB_57278_,
                                                             nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R7__FAFB_49026_,
                                                             nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R5__FAFB_57254_,
                                                             nl_ALPN_all_adPNs_lPNs$Multiglomerular_mALT_adPN_R6__FAFB_57266_
)


loc_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DorsalMulti1/")
nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti1 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti1, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DorsalMulti1/")
nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti1 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti1, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti1 <- c(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti1, nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti1)



nl_Dmel_EM_FAFB_ALPNs_IS2_DorsalMulti1_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti1[6])

# nl_Dmel_EM_FAFB_ALPNs_IS2_DorsalMulti_example_RH <- neuronlist(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti[3])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_DorsalMulti_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti[5])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti1, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti1, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_DorsalMulti, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_DorsalMulti, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DorsalMulti1_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DorsalMulti_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DorsalMulti_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DorsalMulti1_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DorsalMulti_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DorsalMulti_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_b_Dmel_EM_DorsalMulti1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





## Panel c ----
### VM7d - v8_cl9 ----
#### VM7d - Dsec Conf ----
# > see Supplementary Figure 2


#### VM7d - Dmel Conf ----
# Does not exist


#### VM7d - Dmel EM ----

# # VM7v (usefull???)
# clear3d() 
# plot3d(nl_ALPN_all_adPNs_lPNs$Uniglomerular_mALT_VM7v_adPN_L1__FAFB_11964657_, lwd=lwd, soma=soma, col="green")
# plot3d(nl_ALPN_all_adPNs_lPNs$Uniglomerular_mALT_VM7v_adPN_L2__FAFB_10538081_, lwd=lwd, soma=soma, col="green")
# plot3d(nl_ALPN_all_adPNs_lPNs$Uniglomerular_mALT_VM7v_adPN_R1__FAFB_24251_, lwd=lwd, soma=soma, col="green")
# plot3d(nl_ALPN_all_adPNs_lPNs$Uniglomerular_mALT_VM7v_adPN_R2__FAFB_43539_, lwd=lwd, soma=soma, col="green")
# 
# plot3d(nl_Dsec_ALPNs_IS2_allRH$BD_M093_LH_PN2_o_d_VM7d, lwd=lwd, soma=soma, col="red")
# plot3d(nl_Dsec_ALPNs_IS2_allRH$BD_M053_RH_PN1_u_d_VM7d, lwd=lwd, soma=soma, col="red")
# plot3d(nl_Dsec_ALPNs_IS2_allRH$`BD_M106_LH_PN1_u+_d_VM7d`, lwd=lwd, soma=soma, col="red")
# 
# plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM7d---", col = "red")
# plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM7v---", col = "blue")
# 
# 
# rular_mALT_VM7v_adPN_R1__FAFB_24251_
# rular_mALT_VM7v_adPN_R2__FAFB_43539_
# VM7v_adPN_R__FlyEM_HB_1889253763_
# VM7v_adPN_R__FlyEM_HB_693479072_
# ar_mALT_VM7v_adPN_L1__FAFB_11964657_
# ar_mALT_VM7v_adPN_L2__FAFB_10538081_



loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM7d/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM7d/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_VM7d <- c(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d,nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d)

nl_Dmel_EM_ALPNs_IS2_VM7d_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_VM7d[1])

# nl_Dmel_EM_FAFB_ALPNs_IS2_VM7d_example_RH <- neuronlist(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d[1])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_VM7d_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d[1])


# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM7d, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM7d, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_VM7d_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VM7d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_VM7d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_VM7d_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VM7d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_VM7d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VM7d_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### VA2 - v8_cl12,13 ----
#### VA2 - Dsec Conf ----
# > see Supplementary Figure 2


#### VA2 - Dmel Conf ----
# Does not exist


#### VA2 - Dmel EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VA2/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2 <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VA2/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2 <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2, pattern = "*.swc", neuronnames = NULL)


nl_Dmel_EM_ALPNs_IS2_allRH_VA2 <- c(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2,nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2)

nl_Dmel_EM_ALPNs_IS2_allRH_VA2_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_VA2[1])

# nl_Dmel_EM_FAFB_ALPNs_IS2_VA2_example_RH <- neuronlist(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2[1])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_VA2_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VA2, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VA2, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VA2, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VA2, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VA2_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VA2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_VA2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VA2_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VA2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_VA2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VA2_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### VC3l - v8_cl6,7 ----
#### VC3l - Dsec Conf ----
# > see Supplementary Figure 2


#### VC3l - Dmel Conf ----
loc_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_Conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_VC3l/")
nl_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l <- read.neurons(loc_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l, pattern = "*.swc", neuronnames = NULL)
# Reroot LM soma if necessary
# nlscan(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l, soma=soma)

nl_Dmel_Conf_other_ALPNs_IS2_VC3l_example <- neuronlist(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l, lwd=lwd, soma=soma, col=colfunc_lightblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VC3l, lwd=lwd, soma=soma, col=colfunc_lightblue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_VC3l_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_VC3l_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_VC3l_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}




#### VC3l - Dmel EM ----

VFB_00009748_fru−F−400041_VC3l_adPN
VFB_00005744_VGlut−F−700563_VC3l_adPN
VFB_00012211_VGlut−F−500455_VC3l_adPN
VFB_00006630_VGlut−F−100378_VC3l_adPN
VFB_00009186_VGlut−F−500609_VC3l_adPN
VFB_00014337_VGlut−F−400290_VC3l_adPN
VFB_00011852_VGlut−F−600248_VC3l_adPN
VFB_00012949_VGlut−F−600116_VC3l_adPN
VFB_00010792_VGlut−F−900060_VC3l_adPN
VFB_00005950_VGlut−F−400927_VC3l_adPN


VC3l_adPN_R__FlyEM_HB_1914823337_
VC3l_adPN_R__FlyEM_HB_5813000276_
VC3l_adPN_R__FlyEM_HB_693125078_
erular_mALT_VC3l_adPN_R4__FAFB_59129_
erular_mALT_VC3l_adPN_R1__FAFB_46800_
ular_mALT_VC3l_adPN_L3__FAFB_4494902_
merular_mALT_VC3l_adPN_L4__FAFB_4070_
erular_mALT_VC3l_adPN_R2__FAFB_41578_
erular_mALT_VC3l_adPN_R3__FAFB_23134_
ular_mALT_VC3l_adPN_L1__FAFB_4586967_
ular_mALT_VC3l_adPN_L2__FAFB_9901677_



loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3l <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VC3l/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3l <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3l, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3l <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VC3l/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3l <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3l, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_VC3l <- c(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3l,nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3l)
# Reroot LM soma if necessary
# nlscan(nl_Dmel_EM_ALPNs_IS2_allRH_VC3l, soma=soma)

nl_Dmel_EM_ALPNs_IS2_allRH_VC3l_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_VC3l[1])

# nl_Dmel_EM_FAFB_ALPNs_IS2_VC3m_example <- neuronlist(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3m[1])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_VC3m_example <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3m[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VC3l, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3m, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3m, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VC3l, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VC3l, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VC3l, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VC3l_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VC3l_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VC3l_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VC3l_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_VC3l_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### DA1 - v8_cl17 ----
#### DA1 - Dsec Conf ---- 
# > see Supplementary Figure 2


#### DA1 - Dmel Conf ---- 
loc_Dmel_Conf_other_ALPNs_IS2_allRH_DA1 <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_Conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_DA1/")
nl_Dmel_Conf_other_ALPNs_IS2_allRH_DA1 <- read.neurons(loc_Dmel_Conf_other_ALPNs_IS2_allRH_DA1, pattern = "*.swc", neuronnames = NULL)

#nl_Dmel_Conf_other_ALPNs_IS2_DA1_example_RH <- neuronlist(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=col_neuron_clust)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0,  zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl)ll
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DA1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


#### DA1 - Dmel EM ---- 
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DA1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DA1/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DA1 <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DA1, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DA1/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1 <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DA1 <- c(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DA1,nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1)
# Reroot LM soma if necessary
#nlscan(nl_Dmel_EM_ALPNs_IS2_allRH_DA1, soma=soma)

nl_Dmel_EM_ALPNs_IS2_allRH_DA1_example_RH <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_DA1[1])
#nl_Dmel_EM_FlyEM_ALPNs_IS2_DA1_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DA1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DA1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DA1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DA1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DA1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### VL2a - v8_cl18 ----
#### VL2a - Dsec Conf ----
# > see Supplementary Figure 12


#### VL2a - Dmel Conf ----
# Does not exist


#### VL2a - Dmel EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VL2a/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VL2a/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_VL2a <- c(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a,nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a)

nl_Dmel_EM_ALPNs_IS2_VL2a_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_VL2a[1])


# nl_Dmel_EM_FAFB_ALPNs_IS2_VL2a_example_RH <- neuronlist(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a[1])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_VL2a_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VL2a, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_frontal_all_v1.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VL2a, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VL2a, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VL2a, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_dorsal_all_v1.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_VL2a_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VL2a_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_VL2a_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_frontal_example_v1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_VL2a_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_VL2a_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_VL2a_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_dorsal_example_v1.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_frontal_all_v1.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_frontal_example_v1.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_dorsal_all_v1.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_dorsal_example_v1.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)



pdf("./3_Figures/Sup_Figure3/Dmel_EM_VL2a_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### DL2v - v8_cl15 ----
#### DL2v - Dsec Conf----
# see Figure Sub 2


#### DL2v - Dmel Conf ----
# n = 8
loc_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_Conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_DL2v/")
nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v <- read.neurons(loc_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v, pattern = "*.swc", neuronnames = NULL)
# Reroot LM soma if necessary
#nlscan(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v, soma=soma)

nl_Dmel_Conf_other_ALPNs_IS2_DL2v_example <- neuronlist(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_lightblue)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v[1:8], lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_lightblue)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v[1:8], lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2v_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


#### DL2v - Dmel EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DL2v/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DL2v/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DL2v <- c(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v,nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v)
# Reroot LM soma if necessary
# nlscan(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v, soma=soma)

nl_Dmel_EM_ALPNs_IS2_allRH_DL2v_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v[1])
# nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH <- neuronlist(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v[1])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_DA1_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
#plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2v_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### DL2d - v8_cl15 ----
#### DL2d - Dsec Conf----
# see Figure Sub 2


#### DL2d - Dmel Conf ----
# n = 8
loc_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_Conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_DL2d/")
nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d <- read.neurons(loc_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d, pattern = "*.swc", neuronnames = NULL)
# Reroot LM soma if necessary
#nlscan(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v, soma=soma)

nl_Dmel_Conf_other_ALPNs_IS2_DL2d_example <- neuronlist(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d, lwd=lwd, soma=soma, col=colfunc_lightblue)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d[1:8], lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d, lwd=lwd, soma=soma, col=colfunc_lightblue)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2d[1:8], lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_DL2d_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_Conf_DL2d_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


#### DL2d - Dmel EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DL2d/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2d <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2d, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DL2d/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2d <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DL2d <- c(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2d,nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2d)
# Reroot LM soma if necessary
# nlscan(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v, soma=soma)
# also removed a missguided neuron connection anterior of the AL.

nl_Dmel_EM_ALPNs_IS2_allRH_DL2d_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_DL2d[1])
# nl_Dmel_EM_FAFB_ALPNs_IS2_DL2d_examplwe <- neuronlist(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v[1])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_DL2d_example <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2d, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2d, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2d_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
#plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2d_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DL2d_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}












### DC1 - v8_cl19,21 ----
#### DC1 - Dsec Conf ----
# see Figure Sub 2


#### DC1 - Dmel Conf ----
# Does not exist


#### DC1 - Dmel EM ---- 
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DC1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DC1/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DC1 <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DC1, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DC1 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DC1/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DC1 <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DC1, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DA1 <- c(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DC1,nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DC1)
# Reroot LM soma if necessary
# nlscan(nl_Dmel_EM_ALPNs_IS2_allRH_DA1, soma=soma)

nl_Dmel_EM_ALPNs_IS2_allRH_DA1_example_RH <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_DA1[1])
#nl_Dmel_EM_FlyEM_ALPNs_IS2_DA1_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DA1[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DC1, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DC1, lwd=lwd, soma=soma, col=colfunc_blue)
# plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DC1, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DC1, lwd=lwd, soma=soma, col=colfunc_blue)
# plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1_example_RH, lwd=lwd, soma=soma, col=col_neuron_explEM)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DA1_example_RH, lwd=lwd, soma=soma, col=col_neuron_explEM)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Sup_Figure3_c_Dmel_EM_DC1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





## Panel 2 - NBLAST VC3l ----
### d.1 - NBLAST Test - Only Antennal Lobe ----
nl_VC3l_Dsec_DsecI <- read.neurons("./1_Data/5_Dataset_our_v2/12_VC3l_DsecI")
nl_VC3l_Dsec_IS2 <- xform_brain(nl_VC3l_Dsec_DsecI, sample = DsecI, reference = IS2)
#write.neurons(nl_VC3l_Dsec_IS2, dir = "./1_Data/5_Dataset_our_v2/12_VC3l_IS2", format="swc")
nl_VC3l_Dsec_Dmel_IS2 <- read.neurons("./1_Data/6_Dataset_other/12_Dmel_Dsec_VC3l")
#plot3d(nl_DL2v_Dsec_Dmel_IS2)


#### Analysis ----
dots_VC3l_Dsec_Dmel_IS2 <- dotprops(nl_VC3l_Dsec_Dmel_IS2, OmitFailures = NA)
scores_VC3l_Dsec_Dmel_IS2 <- nblast_allbyall(dots_VC3l_Dsec_Dmel_IS2)
hc_VC3l_Dsec_Dmel_IS2 <- nhclust(scoremat=scores_VC3l_Dsec_Dmel_IS2)
h = 0.75
color_VC3l_Dsec_Dmel_IS2 <- colour_clusters(hc_VC3l_Dsec_Dmel_IS2, h=h, groupLabels=F)

#### Dendrogram ----
pdf(".//3_Figures/Sup_Figure3/Sup_Figure3_e_NBLAST_VC3l_Dsec_Dmel_IS2_v2.pdf", 
    width=22, height=10)
# PDF export: x= 0,2 inch per entry; y= 15inch
par(mar = c(15,3,5,1))
par(mgp = c(1.5, 0.5, 0))
plot(color_VC3l_Dsec_Dmel_IS2,
     main = "Dsec_Dmel_VC3l_IS2",
     ylab = "NBLAST Score")
abline(h=h, lty=2, col="grey")
rect <- rect.hclust(hc_VC3l_Dsec_Dmel_IS2, h=h, border = "grey")
beg_clus <- head(cumsum(c(1, lengths(rect))), -1)
y_clus <- weighted.mean(rev(hc_VC3l_Dsec_Dmel_IS2$height)+0.1)
text(x=beg_clus, y=y_clus, col="black", font=2)
dev.off()







