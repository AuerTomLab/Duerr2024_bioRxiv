#--------------------------------------------#
# Figure 3  ----
# Morphological Comparison to Dmel a Dataset
#--------------------------------------------#


## Front Matter ----
### Load Packages & Resources ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#



## Panel a  ----

### Whole Datasets - Dsec - Conf - All olfactory adPNs & lPN ----

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_allR, lwd = lwd, soma = soma, col = colfunc_red)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure3/Figure3_a_Dsec_Dataset_Overview_ALPNs_n133_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
snapshot3d("./3_Figures/Figure3/Figure3_a_Dsec_Dataset_Overview_ALPNs_n133_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_R <- image_read("./3_Figures/Figure3/Figure3_a_Dsec_Conf_Dataset_Overview_ALPNs_n133_anterior.png")
Frontal_R <- rasterGrob(Frontal_R)

Dorsal_R <- image_read("./3_Figures/Figure3/Figure3_a_Dsec_Conf_Dataset_Overview_ALPNs_n133_dorsal.png")
Dorsal_R <- rasterGrob(Dorsal_R)

pdf("./3_Figures/Figure3/Figure3_a_Dsec_Conf_Dataset_Overview_ALPNs_n133_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_R, Dorsal_R,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}





### Whole Dataset - Dmel - Conf - All olfactory adPNs & lPNs ----
nl_WholeDataset_Dmel_Conf_All_adPNs_lPNs_NA <- read.neurons("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_allR_n178/")
nl_WholeDataset_Dmel_Conf_All_adPNs_lPNs_AN <- read.neurons("./1_Data/6_Dataset_other/01.5_Dmel_ALPN_conf_VFB_FBbt_00067123_annotated_RH_IS2_n285_adPN/")
nl_WholeDataset_Dmel_Conf_All_adPNs_lPNs <- c(nl_WholeDataset_Dmel_Conf_All_adPNs_lPNs_AN,nl_WholeDataset_Dmel_Conf_All_adPNs_lPNs_NA)

open3d()
plot3d(IS2, alpha = alpha_brain, col="grey")
plot3d(nl_WholeDataset_Dmel_Conf_All_adPNs_lPNs, lwd = lwd, soma = soma, col = colfunc_lightblue)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure3/Figure3_a_Dmel_Conf_all_ad&lPNs_n463_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.5)
snapshot3d("./3_Figures/Figure3/Figure3_a_Dmel_Conf_all_ad&lPNs_n463_dorsal.png", fmt="png", height = 900, width = width_dorsal)

# Generate Sub-Panel
Frontal_R <- image_read("./3_Figures/Figure3/Figure3_a_Dmel_Conf_all_ad&lPNs_n463_anterior.png")
Frontal_R <- rasterGrob(Frontal_R)

Dorsal_R <- image_read("./3_Figures/Figure3/Figure3_a_Dmel_Conf_all_ad&lPNs_n463_dorsal.png")
Dorsal_R <- image_crop(Dorsal_R, "1550x900+33+0")
Dorsal_R <- image_resize(Dorsal_R, "1600x690!")
Dorsal_R <- rasterGrob(Dorsal_R)

pdf("./3_Figures/Figure3/Figure3_a_Dmel_Conf_all_ad&lPNs_n463_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_R, Dorsal_R,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}





### Whole Dataset - Dmel - EM - All olfactory adPNs & lPNs----

nl_WholeDataset_Dmel_EM_All_adPNs_uni <- read.neurons("./1_Data/6_Dataset_other/01.8_Dmel_ALPN_em_VFB_FBbt_00067123_RH_all_IS2_uniglomerular_n219_adPN/")
nl_WholeDataset_Dmel_EM_All_lPNs_uni <- read.neurons("./1_Data/6_Dataset_other/01.8_Dmel_ALPN_em_VFB_FBbt_00067123_RH_all_IS2_uniglomerular_n98_lPN/")
nl_WholeDataset_Dmel_EM_All_adPNs_multi <- read.neurons("./1_Data/6_Dataset_other/01.8_Dmel_ALPN_em_VFB_FBbt_00067123_RH_all_IS2_multiadPNs_n22/")
nl_WholeDataset_Dmel_EM_All_lPNs_multi <- read.neurons("./1_Data/6_Dataset_other/01.8_Dmel_ALPN_em_VFB_FBbt_00067123_RH_all_IS2_multilPNs_n26/")

nl_WholeDataset_Dmel_EM_All_adPNs_lPNs <- c(nl_WholeDataset_Dmel_EM_All_adPNs_uni,
                                            nl_WholeDataset_Dmel_EM_All_lPNs_uni,
                                            nl_WholeDataset_Dmel_EM_All_adPNs_multi,
                                            nl_WholeDataset_Dmel_EM_All_lPNs_multi)

open3d()
plot3d(IS2,
       alpha = 0.05)
plot3d(nl_WholeDataset_Dmel_EM_All_adPNs_lPNs, lwd = lwd, soma = soma, col = colfunc_darkblue)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure3/Figure3_a_Dmel_EM_all_ad&lPNs_n=365_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.5)
snapshot3d("./3_Figures/Figure3/Figure3_a_Dmel_EM_all_ad&lPNs_n=365_dorsal.png", fmt="png", height = 900, width = width_dorsal)

# Generate Sub-Panel
Frontal_R <- image_read("./3_Figures/Figure3/Figure3_a_Dmel_EM_all_ad&lPNs_n=365_anterior.png")
Frontal_R <- rasterGrob(Frontal_R)

Dorsal_R <- image_read("./3_Figures/Figure3/Figure3_a_Dmel_EM_all_ad&lPNs_n=365_dorsal.png")
Dorsal_R <- image_crop(Dorsal_R, "1550x900+33+0")
Dorsal_R <- image_resize(Dorsal_R, "1600x690!")
Dorsal_R <- rasterGrob(Dorsal_R)

pdf("./3_Figures/Figure3/Figure3_a_Dmel_EM_all_ad&lPNs_n=365_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_R, Dorsal_R,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}









## Panel b - Multi-glomerular Differences ----
### Lateral Multi 2 - Dsec Conf > Sup Fig2 ----





### Lateral Multi 2 - Dmel Conf ----
loc_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2 <- file.path("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_Conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_allR_LateralMulti2_n4/")
nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2 <- read.neurons(loc_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2_example_RH <- neuronlist(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti2_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}





### Lateral Multi 2 - Dsec EM ----

loc_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_LateralMulti2/")
nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti2 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti2, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_LateralMulti2/")
nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2 <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2,nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti2)

nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2_example_RH <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2[1])
#nl_Dmel_EM_FlyEM_ALPNs_IS2_LateralMulti2i_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2[5])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_allRH_LateralMulti2, lwd=lwd, soma=soma, col=colfunc_blue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)

nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_LateralMulti2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl2)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti2_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}









### Lateral Multi 3 - Dsec Conf > Sup Fig2 ----





### Lateral Multi 3 - Dmel Conf ----

loc_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3 <- file.path("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_Conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_allR_LateralMulti3/")
nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3 <- read.neurons(loc_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3_example_RH <- neuronlist(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3, lwd=lwd, soma=soma, col=colfunc_lightblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3, lwd=lwd, soma=soma, col=colfunc_lightblue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3_example_RH, lwd=lwd, soma=soma, col=colfunc_lightblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allRH_LateralMulti3_example_RH, lwd=lwd, soma=soma, col=colfunc_lightblue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Figure3/Figure3_b_Dmel_Conf_LateralMulti3_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}





### Lateral Multi 3 - Dmel EM ----

loc_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti3 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_LateralMulti3/")
nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti3 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti3, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti3_example_RH <- neuronlist(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti3[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti3, lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_allRH_LateralMulti3, lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti3_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_LateralMulti3_example_RH, lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_b_Dmel_EM_LateralMulti3.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}









## Panel c - DorsalMulti2 - Comparison Dsec vs Dmel ----

### c.1 - Overview ----

### c.2 - Detail - Lateral Horn ----
#### Dsec ----
# See Supplementary Figure 3
nl_Dsec_ALPNs_DsecI_DorsalMulti2 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_53_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_61_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_48_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_58_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_36_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_51_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_103_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_14_adPN_m_md2
                                               )

nl_Dsec_ALPNs_IS2_DorsalMulti2<- xform_brain(nl_Dsec_ALPNs_DsecI_DorsalMulti2, sample = DsecI, reference = IS2)


#### Dmel - EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DorsalMulti2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DorsalMulti2/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DorsalMulti2 <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DorsalMulti2, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DorsalMulti2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DorsalMulti2/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DorsalMulti2 <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DorsalMulti2, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti2 <- c(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DorsalMulti2,nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DorsalMulti2)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_DorsalMulti2[1], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti2[4], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_DorsalMulti2[2], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti2[2], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_DorsalMulti2[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DorsalMulti2[3], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "550x300+60+150")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

Frontal_LH_Example2 <- image_read("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_Example2.png")
Frontal_LH_Example2 <- image_crop(Frontal_LH_Example2, "550x300+60+150")
Frontal_LH_Example2 <- image_flop(Frontal_LH_Example2)
Frontal_LH_Example2 <- rasterGrob(Frontal_LH_Example2)

Frontal_LH_Example3 <- image_read("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_Example3.png")
Frontal_LH_Example3 <- image_crop(Frontal_LH_Example3, "550x300+60+150")
Frontal_LH_Example3 <- image_flop(Frontal_LH_Example3)
Frontal_LH_Example3 <- rasterGrob(Frontal_LH_Example3)

pdf("./3_Figures/Figure3/Dsec_Dmel_DorsalMulti2_LH_AllExamples_v1.pdf", width = 1, height = 1.7)
layout <- rbind(c(1),c(2),c(3))
grid.arrange(arrangeGrob(Frontal_LH_Example1, Frontal_LH_Example2, Frontal_LH_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}


### c.3 - NBLAST DorsalMulti2 ----
nl_md2_Dsec_DsecI <- read.neurons("./1_Data/5_Dataset_our_v2/8_mD2_DsecI")
nl_md2_Dsec_IS2 <- xform_brain(nl_md2_Dsec_DsecI, sample = DsecI, reference = IS2)
write.neurons(nl_md2_Dsec_IS2, dir = "./1_Data/5_Dataset_our_v2/8_md2_IS2", format="swc")
nl_md2_Dsec_Dmel_IS2 <- read.neurons("./1_Data/6_Dataset_other/09_Dmel_Dsec_md2")
#plot3d(nl_VM5d_Dsec_Dmel_IS2)

#### Analysis ----
dots_md2_Dsec_Dmel_IS2 <- dotprops(nl_md2_Dsec_Dmel_IS2, OmitFailures = NA)
scores_md2_Dsec_Dmel_IS2 <- nblast_allbyall(dots_md2_Dsec_Dmel_IS2)
hc_md2_Dsec_Dmel_IS2 <- nhclust(scoremat=scores_md2_Dsec_Dmel_IS2)
h = 0.75
color_md2_Dsec_Dmel_IS2 <- colour_clusters(hc_md2_Dsec_Dmel_IS2, h=h, groupLabels=F)

#### Dendrogram ----
pdf("./3_Figures/Figure3/Figure3_c_NBLAST_md2_Dsec_Dmel_IS2_v1.pdf", 
    width=22, height=10)
# PDF export: x= 0,2 inch per entry; y= 15inch
par(mar = c(15,3,5,1))
par(mgp = c(1.5, 0.5, 0))
plot(color_md2_Dsec_Dmel_IS2,
     main = "Dsec_Dmel_md2_IS2",
     ylab = "NBLAST Score")
abline(h=h, lty=2, col="grey")
rect <- rect.hclust(hc_md2_Dsec_Dmel_IS2, h=h, border = "grey")
beg_clus <- head(cumsum(c(1, lengths(rect))), -1)
y_clus <- weighted.mean(rev(hc_md2_Dsec_Dmel_IS2$height)+0.1)
text(x=beg_clus, y=y_clus, col="black", font=2)
dev.off()









## Panel d - DL2v - Comparison Dsec vs Dmel ----
### Dsec Conf ----
nl_Dsec_ALPNs_DsecI_DL2v <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_88_adPN_up_DL2v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_90_adPN_u_DL2v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_60_adPN_up_DL2v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_63_adPN_up_DL2v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_78_adPN_up_DL2v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_33_adPN_up_DL2v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_68_adPN_up_DL2v
)

nl_Dsec_ALPN_DsecI_DL2v_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_90_adPN_u_DL2v)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL2v, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_d_Dsec_Cl15_DL2v_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### DL2v - Dmel Conf ----
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
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
#plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_lightblue)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_DL2v[1:8], lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_Conf_DL2v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Sup_Figure3/Figure3_d_Dmel_Conf_DL2v_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


### DL2v - Dmel EM ----
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
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
#plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_DL2v_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_DC1_example_RH, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)


pdf("./3_Figures/Figure3/Figure3_d_Dmel_EM_DL2v_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





## Panel e - DL2v - NBLAST ----
nl_DL2v_Dsec_DsecI <- read.neurons("./1_Data/5_Dataset_our_v2/11_DL2v_DsecI")
nl_DL2v_Dsec_IS2 <- xform_brain(nl_DL2v_Dsec_DsecI, sample = DsecI, reference = IS2)
#write.neurons(nl_DL2v_Dsec_IS2, dir = "./1_Data/5_Dataset_our_v2/11_DL2v_IS2", format="swc")
nl_DL2v_Dsec_Dmel_IS2 <- read.neurons("./1_Data/6_Dataset_other/11_Dmel_Dsec_DL2v")
#plot3d(nl_DL2v_Dsec_Dmel_IS2)


#### Analysis ----
dots_DL2v_Dsec_Dmel_IS2 <- dotprops(nl_DL2v_Dsec_Dmel_IS2, OmitFailures = NA)
scores_DL2v_Dsec_Dmel_IS2 <- nblast_allbyall(dots_DL2v_Dsec_Dmel_IS2)
hc_DL2v_Dsec_Dmel_IS2 <- nhclust(scoremat=scores_DL2v_Dsec_Dmel_IS2)
h = 0.75
color_DL2v_Dsec_Dmel_IS2 <- colour_clusters(hc_DL2v_Dsec_Dmel_IS2, h=h, groupLabels=F)

#### Dendrogram ----
pdf("./3_Figures/Figure3/Figure3_e_NBLAST_DL2v_Dsec_Dmel_IS2_v1.pdf", 
    width=22, height=10)
# PDF export: x= 0,2 inch per entry; y= 15inch
par(mar = c(15,3,5,1))
par(mgp = c(1.5, 0.5, 0))
plot(color_DL2v_Dsec_Dmel_IS2,
     main = "Dsec_Dmel_DL2v_IS2",
     ylab = "NBLAST Score")
abline(h=h, lty=2, col="grey")
rect <- rect.hclust(hc_DL2v_Dsec_Dmel_IS2, h=h, border = "grey")
beg_clus <- head(cumsum(c(1, lengths(rect))), -1)
y_clus <- weighted.mean(rev(hc_DL2v_Dsec_Dmel_IS2$height)+0.1)
text(x=beg_clus, y=y_clus, col="black", font=2)
dev.off()










## Panel f - DM2 - Comparison Dsec vs Dmel ----
### Dsec Conf ----
# >> see Sup Fig 2

### Dmel EM [n=6] ----

loc_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DM2")
nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DM2/")
nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DM2 <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2,nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2)

nl_Dmel_EM_ALPNs_IS2_allRH_DM2_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_DM2[1])

# nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2[1])
# nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2_example_RH <- neuronlist(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM2, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2, lwd=lwd, soma=soma, col=col_neuron_clust)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM2, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2, lwd=lwd, soma=soma, col=colfunc_red)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM2_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2_example_RH, lwd=lwd, soma=soma, col="skyblue3")
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM2_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_DM2_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_DM2_example_RH, lwd=lwd, soma=soma, col="skyblue3")
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)



pdf("./3_Figures/Figure3/Figure3_f_Dmel_EM_DM2_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}









## Panel g - VM5d - Comparison Dsec vs Dmel ----
### g.1 - Overview ----
#### Dsec Conf ----
# >> See Fig2


#### Dmel Conf - others [n=20]----
# Rerooting
## The swc files of the LM traces did not have a value for "radius" so I had to change it to "1"
## This was necessary to show and change the neuron's somata in neutube.
loc_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_Conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_VM5d/")
nl_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d <- read.neurons(loc_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_Conf_other_ALPNs_IS2_VM5d_example_RH <- neuronlist(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_allRH_VM5d, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_other_ALPNs_IS2_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_explLM)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_g_Dmel_Conf_VM5d_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}






#### Dmel EM [n=13] ----
loc_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM5d")
nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM5d/")
nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_VM5d <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d,nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d)

nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d[3])
# nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d_example_RH <- neuronlist(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d[2])
# nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d_example_RH <- neuronlist(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d, lwd=lwd, soma=soma, col=col_neuron_clust)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d, lwd=lwd, soma=soma, col=colfunc_blue)
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM5d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d, lwd=lwd, soma=soma, col=colfunc_darkblue)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d, lwd=lwd, soma=soma, col=col_neuron_expl)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d, lwd=lwd, soma=soma, col="skyblue3")
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM5d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d_example_RH, lwd=lwd, soma=soma, col="skyblue3")
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM5d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d_example, lwd=lwd, soma=soma, col=col_neuron_explEM)
# plot3d(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl)
# plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d_example_RH, lwd=lwd, soma=soma, col="skyblue3")
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM5d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "787x1270+25+30")
Frontal_RH_all <- image_resize(Frontal_RH_all, "812x1300!")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "787x1270+25+30")
Frontal_RH_example <- image_resize(Frontal_RH_example, "812x1300!")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "612x690+205+0")
Dorsal_RH_all <- image_resize(Dorsal_RH_all, "812x690!")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "612x690+205+0")
Dorsal_RH_example <- image_resize(Dorsal_RH_example, "812x690!")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_g_Dmel_EM_VM5d_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}




### g.2 - Detail - Lateral Horn ----
#### Dsec ----
nl_Dsec_ALPNs_DsecI_VM5d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_1_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_97_adPN_u_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_24_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d
                                       )


nl_Dsec_ALPNs_IS2_VM5d <- xform_brain(nl_Dsec_ALPNs_DsecI_VM5d, sample = DsecI, reference = IS2)
loc_Dsec_VM5d_IS2 <- file.path("./1_Data/5_Dataset_our/06_Figure3_Dsec_VM5d_IS2/")
#write.neurons(nl_Dsec_ALPNs_IS2_VM5d, dir = loc_Dsec_VM5d_IS2, format="swc")


#### Dmel - EM ----
loc_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM5d")
nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM5d/")
nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_VM5d <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_RH_VM5d,nl_Dmel_EM_FAFB_ALPNs_IS2_RH_VM5d)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d[1], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d[1], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d[2], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d[7], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d[3], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "550x300+60+150")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

Frontal_LH_Example2 <- image_read("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_Example2.png")
Frontal_LH_Example2 <- image_crop(Frontal_LH_Example2, "550x300+60+150")
Frontal_LH_Example2 <- image_flop(Frontal_LH_Example2)
Frontal_LH_Example2 <- rasterGrob(Frontal_LH_Example2)

Frontal_LH_Example3 <- image_read("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_Example3.png")
Frontal_LH_Example3 <- image_crop(Frontal_LH_Example3, "550x300+60+150")
Frontal_LH_Example3 <- image_flop(Frontal_LH_Example3)
Frontal_LH_Example3 <- rasterGrob(Frontal_LH_Example3)

pdf("./3_Figures/Figure3/Figure3_g_Dsec_Dmel_VM5d_LH_AllExamples_v1.pdf", width = 1, height = 1.7)
layout <- rbind(c(1),c(2),c(3))
grid.arrange(arrangeGrob(Frontal_LH_Example1, Frontal_LH_Example2, Frontal_LH_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}


while (rgl.cur() > 0) {close()}


### g.3 - NBLAST ----
nl_VM5d_Dsec_DsecI <- read.neurons("./1_Data/5_Dataset_our_v2/7_VM5d_DsecI")
nl_VM5d_Dsec_IS2 <- xform_brain(nl_VM5d_Dsec_DsecI, sample = DsecI, reference = IS2)
#write.neurons(nl_VM5d_Dsec_IS2, dir = "./1_Data/5_Dataset_our_v2/7_VM5d_IS2", format="swc")
nl_VM5d_Dsec_Dmel_IS2 <- read.neurons("./1_Data/6_Dataset_other/08_Dmel_Dsec_VM5d")
#plot3d(nl_VM5d_Dsec_Dmel_IS2)

#### Analysis ----
dots_VM5d_Dsec_Dmel_IS2 <- dotprops(nl_VM5d_Dsec_Dmel_IS2, OmitFailures = NA)
scores_VM5d_Dsec_Dmel_IS2 <- nblast_allbyall(dots_VM5d_Dsec_Dmel_IS2)
hc_VM5d_Dsec_Dmel_IS2 <- nhclust(scoremat=scores_VM5d_Dsec_Dmel_IS2)
h = 0.75
color_VM5d_Dsec_Dmel_IS2 <- colour_clusters(hc_VM5d_Dsec_Dmel_IS2, h=h, groupLabels=F)

#### Dendrogram ----
pdf(".//3_Figures/Figure3/Figure3_g_NBLAST_VM5d_Dsec_Dmel_IS2_v1.pdf", 
    width=22, height=10)
# PDF export: x= 0,2 inch per entry; y= 15inch
par(mar = c(15,3,5,1))
par(mgp = c(1.5, 0.5, 0))
plot(color_VM5d_Dsec_Dmel_IS2,
     main = "Dsec_Dmel_VM5d_IS2",
     ylab = "NBLAST Score")
abline(h=h, lty=2, col="grey")
rect <- rect.hclust(hc_VM5d_Dsec_Dmel_IS2, h=h, border = "grey")
beg_clus <- head(cumsum(c(1, lengths(rect))), -1)
y_clus <- weighted.mean(rev(hc_VM5d_Dsec_Dmel_IS2$height)+0.1)
text(x=beg_clus, y=y_clus, col="black", font=2)
dev.off()









## Panel h - VM5d & DM2 branching comparison in Dsec & Dmel [In Progress] ----
### Dsec ----
# 2x DM2
nl_Dsec_ALPNs_DsecI_DM2_x2 <- neuronlist(#nl_Dsec_ALPNs_DsecI_allR$Dsec_109_lPN_u_DM2,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_115_lPN_u_DM2,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_126_lPN_u_DM2
                                      )

# 4x VM5ds
nl_Dsec_ALPNs_DsecI_VM5d_x4 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d,
                                       #nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d,
                                       #nl_Dsec_ALPNs_DsecI_allR$Dsec_1_adPN_up_VM5d,
                                       #nl_Dsec_ALPNs_DsecI_allR$Dsec_97_adPN_u_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_24_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d)


open3d()
plot3d(DsecI_surf, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightblue1", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_x4, soma =soma, lwd=lwd, col = colfunc_red2)
plot3d(nl_Dsec_ALPNs_DsecI_DM2_x2, soma =soma, lwd=lwd, col = colfunc_yellow)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_h_Dsec_VM5d_DM2_frontal_all_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {close3d()}

open3d()
plot3d(DsecI_surf, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightskyblue3", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_x4, soma =soma, lwd=lwd, col = colfunc_red2)
plot3d(nl_Dsec_ALPNs_DsecI_DM2_x2, soma =soma, lwd=lwd, col = colfunc_yellow)
nview3d("dorsal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_h_Dsec_VM5d_DM2_dorsal_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {close3d()}



### Dmel - FAFB ----
#IS2 has to be transformed
# 2x DM2
loc_Dmel_EM_FAFB_ALPNs_IS2_R_DM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DM2/")
nl_Dmel_EM_FAFB_ALPNs_IS2_R_DM2 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_R_DM2, pattern = "*.swc", neuronnames = NULL)

# 4x VM5d
loc_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM5d/")
nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d, pattern = "*.swc", neuronnames = NULL)


open3d()
plot3d(IS2, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightblue1", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d[1:4], soma =soma, lwd=lwd, col = colfunc_darkblue)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_R_DM2[1:2], soma =soma, lwd=lwd, col = colfunc_cyan)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_h_Dmel_VM5d_DM2_frontal_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {close3d()}

open3d()
plot3d(IS2, alpha = 0.03, color ="grey")
#plot3d(br_SCL_DsecI, col = "lightskyblue3", alpha = 0.3)
#plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.05)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.3)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_R_VM5d[1:4], soma =soma, lwd=lwd, col = colfunc_darkblue)
plot3d(nl_Dmel_EM_FAFB_ALPNs_IS2_R_DM2[1:2], soma =soma, lwd=lwd, col = colfunc_cyan)
nview3d("dorsal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_h_Dmel_VM5d_DM2_dorsal_v1.png", fmt="png", height = height_frontal, width = width_frontal)
while (rgl.cur() > 0) {close3d()}









## Panel i - VM5d-like branching----
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_64_adPN_up_DM6, lwd=6, soma=3, col="orange1")    # DM6                                        # VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6, lwd=6, soma=3, col="orange3")    # DM6  # VM7v #>DM2                          # VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_12_adPN_up_DM6, lwd=6, soma=3, col="orange4")    # DM6  # VM7v #>VM2                          # VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d, lwd=6, soma=3, col="red1")      # VM7d                                       # small VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_66_adPN_up_VM7d, lwd=6, soma=3, col="red2")      # VM7d                                       # small VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_57_adPN_up_VM7d, lwd=6, soma=3, col="red3")      # VM7d                                       # small VM5d-like extra branch # dorsal branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_49_adPN_up_VM7v, lwd=6, soma=3, col="lightblue") # VM7v #>VC4 #>VC1 #>VM5d                    # VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v, lwd=6, soma=3, col="purple")    # VM7v # VM2                                 # small VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3, lwd=6, soma=3, col="orange")     # VM3  # VC4 #VC1 #>VC3l #>VM7d #>VC3l #>VM2 # VM5d-like extra branch
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_25_adPN_up_VM3, lwd=6, soma=3, col="red")        # VM3  # VC4 #VC1 #DM6 #>VC3l #>VM2
# plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_120_adPN_up_VM2, lwd=6, soma=3, col="cyan")      # VM2  # VM3 #VC4 #>VM7v #>VC1               # VM5d-like extra branch


nl_Dsec_ALPNs_DsecI_VM5d_like <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_64_adPN_up_DM6,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_12_adPN_up_DM6,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_66_adPN_up_VM7d,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_57_adPN_up_VM7d,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_49_adPN_up_VM7v,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_25_adPN_up_VM3,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_120_adPN_up_VM2
                                            )

clear3d()
nl_Dsec_ALPNs_IS2_VM5d_like <- xform_brain(nl_Dsec_ALPNs_DsecI_VM5d_like, reference = "IS2", sample = "DsecI")

nl_Dsec_ALPNs_DsecI_VM5d_like_example <- neuronlist(nl_Dsec_ALPNs_DsecI_VM5d_like[1])

### All Cluster ALPNS - Dsec ----
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_like, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_like, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DC1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_like_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM5d_like_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DC1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Figure3/Figure3_i_Dsec_DM6-VM7v,d-VM3_VM5d_like_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}





### All Cluster ALPNS - Dmel LM ----
loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_DM6 <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_DM6/")
# loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VM3 <- file.path("./1_Data/6_Dataset_other//") # does not exist
loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VC4 <- file.path("./1_Data/6_Dataset_other/01.5.1_Dmel_ALPN_conf_VFB_FBbt_00067123_annotated_RH_IS2_n288_VC4/")
#loc_Dmel_Conf_FAFB_ALPNs_IS2_allR_VM5dlike_VM7d <- file.path("./1_Data/6_Dataset_other//") # does not exist
#loc_Dmel_Conf_FAFB_ALPNs_IS2_allR_VM5dlike_VM7v <- file.path("./1_Data/6_Dataset_other//") # does not exist


nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_DM6 <- read.neurons(loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_DM6, pattern = "*.swc", neuronnames = NULL)
#nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VM3 <- read.neurons(loc_Dmel_ConfALPNs_IS2_allR_VM5dlike_VM3, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VC4 <- read.neurons(loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VC4, pattern = "*.swc", neuronnames = NULL)
#nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VM7d <- read.neurons(loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VM7d, pattern = "*.swc", neuronnames = NULL)
#nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VM7v <- read.neurons(loc_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VM7v, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike <- c(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_DM6,
                                          nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_VC4
                                          )

#nlscan(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike, soma=soma)
#corrected soma of wrongly rooted PNs

nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_example <- neuronlist(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike[1])

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_frontal.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike, lwd=lwd, soma=soma, col=colfunc_lightblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_example, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_example, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Generate Sub-Panel
Frontal_R_all <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_frontal.png")
Frontal_R_all <- image_crop(Frontal_R_all, "787x1270+25+30")
Frontal_R_all <- image_resize(Frontal_R_all, "812x1300!")
Frontal_R_all <- rasterGrob(Frontal_R_all)

Frontal_R_example <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_frontal_example.png")
Frontal_R_example <- image_crop(Frontal_R_example, "787x1270+25+30")
Frontal_R_example <- image_resize(Frontal_R_example, "812x1300!")
Frontal_L_example <- image_flop(Frontal_R_example)
Frontal_L_example <- rasterGrob(Frontal_L_example)

Dorsal_R_all <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_dorsal.png")
Dorsal_R_all <- image_crop(Dorsal_R_all, "612x690+205+0")
Dorsal_R_all <- image_resize(Dorsal_R_all, "812x690!")
Dorsal_R_all <- rasterGrob(Dorsal_R_all)

Dorsal_R_example <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_dorsal_example.png")
Dorsal_R_example <- image_crop(Dorsal_R_example, "612x690+205+0")
Dorsal_R_example <- image_resize(Dorsal_R_example, "812x690!")
Dorsal_L_example <- image_flop(Dorsal_R_example)
Dorsal_L_example <- rasterGrob(Dorsal_L_example)

pdf("./3_Figures/Figure3/Figure3_i_Dmel_Conf_ALPNs_IS2_allR_VM5dlike_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_R_all, Frontal_L_example, Dorsal_R_all, Dorsal_L_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}





### All Cluster ALPNS - Dmel EM ----
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_DM6 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DM6/")
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM2/")
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM3/")
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VC4 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VC4/")
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM7d/")
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7v <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM7v/")

loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_DM6 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DM6/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM2/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM3/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VC4 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VC4/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM7d/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7v <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM7v/")

nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_DM6 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_DM6, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VC4 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VC4, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7d <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7d, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7v <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7v, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_DM6 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_DM6, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VC4 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VC4, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7d <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7d, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7v <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7v, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_DM6,
                                        nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2,
                                        nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3,
                                        nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VC4,
                                        nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7d,
                                        nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM7v,
                                        nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_DM6,
                                        nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2,
                                        nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3,
                                        nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VC4,
                                        nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7d,
                                        nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM7v
                                        )


#nlscan(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike, soma=soma)
#corrected soma of wrongly rooted PNs

nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_example <- neuronlist(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike[1])

# All Cluster ALPNS
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DM2---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_frontal.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Cluster example
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_example, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_example, lwd=lwd, soma=soma, col=colfunc_darkblue)
#plot3d(glom_Dsec_AL_RH_DsecI, materials = "RH_DL2d---", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = 0.46)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Generate Sub-Panel
Frontal_R_all <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_frontal.png")
Frontal_R_all <- image_crop(Frontal_R_all, "787x1270+25+30")
Frontal_R_all <- image_resize(Frontal_R_all, "812x1300!")
Frontal_R_all <- rasterGrob(Frontal_R_all)

Frontal_R_example <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_frontal_example.png")
Frontal_R_example <- image_crop(Frontal_R_example, "787x1270+25+30")
Frontal_R_example <- image_resize(Frontal_R_example, "812x1300!")
Frontal_L_example <- image_flop(Frontal_R_example)
Frontal_L_example <- rasterGrob(Frontal_L_example)

Dorsal_R_all <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_dorsal.png")
Dorsal_R_all <- image_crop(Dorsal_R_all, "612x690+205+0")
Dorsal_R_all <- image_resize(Dorsal_R_all, "812x690!")
Dorsal_R_all <- rasterGrob(Dorsal_R_all)

Dorsal_R_example <- image_read("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_dorsal_example.png")
Dorsal_R_example <- image_crop(Dorsal_R_example, "612x690+205+0")
Dorsal_R_example <- image_resize(Dorsal_R_example, "812x690!")
Dorsal_L_example <- image_flop(Dorsal_R_example)
Dorsal_L_example <- rasterGrob(Dorsal_L_example)

pdf("./3_Figures/Figure3/Figure3_i_Dmel_EM_ALPNs_IS2_allR_VM5dlike_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_R_all, Frontal_L_example, Dorsal_R_all, Dorsal_L_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}










### Panel i - VM7d  ----

#### Dsec ----
nl_Dsec_ALPNs_DsecI_VM5d_like_VM7d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d,
                                                 nl_Dsec_ALPNs_DsecI_allR$Dsec_66_adPN_up_VM7d,
                                                 nl_Dsec_ALPNs_DsecI_allR$Dsec_57_adPN_up_VM7d
                                                 )

nl_Dsec_ALPNs_IS2_VM5d_like_VM7d <- xform_brain(nl_Dsec_ALPNs_DsecI_VM5d_like_VM7d, sample = DsecI, reference = IS2)


#### Dmel - EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM7d/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM7d/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_VM7d <- c(nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_VM7d,nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_VM7d)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_VM7d[1], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM7d[1], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_VM7d[2], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM7d[2], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_VM7d[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM7d[3], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "550x300+60+150")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

Frontal_LH_Example2 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_Example2.png")
Frontal_LH_Example2 <- image_crop(Frontal_LH_Example2, "550x300+60+150")
Frontal_LH_Example2 <- image_flop(Frontal_LH_Example2)
Frontal_LH_Example2 <- rasterGrob(Frontal_LH_Example2)

Frontal_LH_Example3 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_Example3.png")
Frontal_LH_Example3 <- image_crop(Frontal_LH_Example3, "550x300+60+150")
Frontal_LH_Example3 <- image_flop(Frontal_LH_Example3)
Frontal_LH_Example3 <- rasterGrob(Frontal_LH_Example3)

pdf("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM7d_LH_AllExamples_v1.pdf", width = 1, height = 1.7)
layout <- rbind(c(1),c(2),c(3))
grid.arrange(arrangeGrob(Frontal_LH_Example1, Frontal_LH_Example2, Frontal_LH_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}










### Panel i - DM6 ----

#### Dsec ----
nl_Dsec_ALPNs_DsecI_VM5d_like_DM6_VM7v <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_64_adPN_up_DM6,
                                                     nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6,
                                                     nl_Dsec_ALPNs_DsecI_allR$Dsec_12_adPN_up_DM6)

nl_Dsec_ALPNs_IS2_VM5d_like_DM6_VM7v <- xform_brain(nl_Dsec_ALPNs_DsecI_VM5d_like_DM6_VM7v, sample = DsecI, reference = IS2)


#### Dmel - EM ----
loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DM6 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_DM6/")
nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DM6 <- read.neurons(loc_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DM6, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DM6 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_DM6/")
nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DM6 <- read.neurons(loc_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DM6, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allRH_DM6 <- c(nl_Dmel_EM_FlyEM_other_ALPNs_IS2_allRH_DM6,nl_Dmel_EM_FAFB_other_ALPNs_IS2_allRH_DM6)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_DM6_VM7v[1], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM6[1], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_DM6_VM7v[2], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM6[2], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_DM6_VM7v[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_DM6[3], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "550x300+60+150")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

Frontal_LH_Example2 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_Example2.png")
Frontal_LH_Example2 <- image_crop(Frontal_LH_Example2, "550x300+60+150")
Frontal_LH_Example2 <- image_flop(Frontal_LH_Example2)
Frontal_LH_Example2 <- rasterGrob(Frontal_LH_Example2)

Frontal_LH_Example3 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_Example3.png")
Frontal_LH_Example3 <- image_crop(Frontal_LH_Example3, "550x300+60+150")
Frontal_LH_Example3 <- image_flop(Frontal_LH_Example3)
Frontal_LH_Example3 <- rasterGrob(Frontal_LH_Example3)

pdf("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_DM6_LH_AllExamples_v1.pdf", width = 1, height = 1.7)
layout <- rbind(c(1),c(2),c(3))
grid.arrange(arrangeGrob(Frontal_LH_Example1, Frontal_LH_Example2, Frontal_LH_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}














### Panel i - VM3-VM2-VC4 ----

#### Dsec ----
nl_Dsec_ALPNs_IS2_VM5d_like_VM3_VM2 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3,
                                                  nl_Dsec_ALPNs_DsecI_allR$Dsec_25_adPN_up_VM3,
                                                  nl_Dsec_ALPNs_DsecI_allR$Dsec_120_adPN_up_VM2)

nl_Dsec_ALPNs_IS2_VM5d_like_VM3_VM2 <- xform_brain(nl_Dsec_ALPNs_IS2_VM5d_like_VM3_VM2, reference = "IS2", sample = "DsecI")


#### EM - LH - VM3-VM2(-VC4) ----
loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM3/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM3/")
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3, pattern = "*.swc", neuronnames = NULL)

loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FlyEM_RH_IS2_VM2/")
loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2 <- file.path("./1_Data/6_Dataset_other/01.8.1_Dmel_ALPN_em_FAFB_RH_IS2_VM2/")
nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2 <- read.neurons(loc_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2, pattern = "*.swc", neuronnames = NULL)
nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2 <- read.neurons(loc_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2, pattern = "*.swc", neuronnames = NULL)

nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_VM3 <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM3,
                                            nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM3)

nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_VM2 <- c(nl_Dmel_EM_FlyEM_ALPNs_IS2_allR_VM5dlike_VM2,
                                            nl_Dmel_EM_FAFB_ALPNs_IS2_allR_VM5dlike_VM2)


open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_VM3_VM2[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_VM2[1], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_VM3_VM2[2], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_VM3[2], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dsec_ALPNs_IS2_VM5d_like_VM3_VM2[1], lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(nl_Dmel_EM_ALPNs_IS2_allR_VM5dlike_VM3[3], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "550x300+60+150")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

Frontal_LH_Example2 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_Example2.png")
Frontal_LH_Example2 <- image_crop(Frontal_LH_Example2, "550x300+60+150")
Frontal_LH_Example2 <- image_flop(Frontal_LH_Example2)
Frontal_LH_Example2 <- rasterGrob(Frontal_LH_Example2)

Frontal_LH_Example3 <- image_read("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_Example3.png")
Frontal_LH_Example3 <- image_crop(Frontal_LH_Example3, "550x300+60+150")
Frontal_LH_Example3 <- image_flop(Frontal_LH_Example3)
Frontal_LH_Example3 <- rasterGrob(Frontal_LH_Example3)

pdf("./3_Figures/Figure3/Figure3_i_Dsec_Dmel_VM3_LH_AllExamples_v1.pdf", width = 1, height = 1.7)
layout <- rbind(c(1),c(2),c(3))
grid.arrange(arrangeGrob(Frontal_LH_Example1, Frontal_LH_Example2, Frontal_LH_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}










### Panel j - VM5d extra branch Tracts ----

#### Brain regions - VM5d extra branch ----
##### Dsec ----
nl_Dsec_ALPNs_DsecI_VM5d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_1_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_97_adPN_u_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_24_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_133_adPN_u_VM5d
)

nl_Dsec_ALPNs_DsecI_VM5d_like <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_64_adPN_up_DM6,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_12_adPN_up_DM6,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_66_adPN_up_VM7d,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_57_adPN_up_VM7d,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_49_adPN_up_VM7v,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_25_adPN_up_VM3,
                                            nl_Dsec_ALPNs_DsecI_allR$Dsec_120_adPN_up_VM2
)

# We are aware of a DM1 adPN with a branch that reaches out into the direction  as out Dsec VM5d's, it can be shown with the following two lines:
# nl_Dmel_ALPNs_IS2_DM1 <- read.neurons("./1_Data/6_Dataset_other/13_Dmel_DM1/")
# nl_Dmel_ALPNs_DsecI_DM1 <- xform_brain(nl_Dmel_ALPNs_IS2_DM1, sample = IS2, reference = DsecI)


# I used two different color for the brain area surfaces as they differed between dorsal and ventral perspectives
open3d()
clear3d()
plot3d(DsecI_surf, color ="grey", alpha = 0.03, )
plot3d(br_SCL_DsecI, col = "lightblue1", alpha = 0.2)
plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.04)
plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma =soma, lwd=lwd, col = colfunc_red)
#plot3d(nl_Dmel_ALPNs_DsecI_DM1, soma =soma, lwd=lwd, col = colfunc_lightblue)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure3/Figure3_j_Dsec_VM5d_SCL_SLP_anterior.png", fmt="png", height = height_frontal, width = width_frontal)


open3d()
clear3d()
plot3d(DsecI_surf, color ="grey", alpha = 0.03, )
plot3d(br_SCL_DsecI, col = "lightskyblue3", alpha = 0.2)
plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.04)
plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
#plot3d(nl_Dmel_ALPNs_DsecI_DM1, soma=soma, lwd=lwd, col = colfunc_lightblue)
nview3d("dorsal", 0, zoom = 0.365)
snapshot3d("./3_Figures/Figure3/Figure3_j_Dsec_VM5d_SCL_SLP_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Figure3/Figure3_j_Dsec_VM5d_SCL_SLP_anterior.png")
Frontal <- image_crop(Frontal, "740x700+90+14")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Figure3/Figure3_j_Dsec_VM5d_SCL_SLP_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+90+14")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Figure3/Figure3_j_Dsec_VM5d_SCL_SLP_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}









### Panel k - Annotated Dataset with morphological changes ----
# made in Illustrator






























