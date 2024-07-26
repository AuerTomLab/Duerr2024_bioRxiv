#-----------------------------#
# Supplementary Figure 3  ----
# PN Cell types 
#-----------------------------#


## Front Matter ----
### Load Packages & Resources ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#

## Panel a - Constructs ----

## Panel b - uni/uni-plus ALPNs in DsecI ----

### uni - n=33 ----
loc_Dsec_ALPNs_DsecI_uPNs <- file.path("./1_Data/5_Dataset_our_v2/3.4_Dsec_ALPNs_DsecI_allR_uPNs")
nl_Dsec_ALPNs_DsecI_uPNs <- read.neurons(loc_Dsec_ALPNs_DsecI_uPNs, pattern = "*.swc", neuronnames = NULL)

open3d()
clear3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_uPNs, lwd = lwd, soma = soma, col = colfunc_red)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_b_Dsec_uPNs_n=33_anterior_v1.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_b_Dsec_uPNs_n=33_dorsal_v1.png", fmt="png", height = height_dorsal, width = width_dorsal)
while (rgl.cur() > 0) {rgl.close()}


### uni plus - n=60  ----
loc_Dsec_ALPNs_DsecI_upPNs <- file.path("./1_Data/5_Dataset_our_v2/3.4_Dsec_ALPNs_DsecI_allR_upPNs")
nl_Dsec_ALPNs_DsecI_upPNs <- read.neurons(loc_Dsec_ALPNs_DsecI_upPNs, pattern = "*.swc", neuronnames = NULL)

open3d()
clear3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_upPNs, lwd = lwd, soma = soma, col = colfunc_red)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_b_Dsec_upPNs_n=60_anterior_v1.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_b_Dsec_upPNs_n=60_dorsal_v1.png", fmt="png", height = height_dorsal, width = width_dorsal)
while (rgl.cur() > 0) {rgl.close()}














## Panel c - Representation of each cluster/cell type/morphology in DsecI ----

### Combine all - IN PROGRESS ----
panel_cl_VM5d <- image_read_pdf("./3_Figures/Sup_Figure2/Dsec_Cl11_VM5d.pdf") %>% rasterGrob()
panel_cl_DM2  <- image_read_pdf("./3_Figures/Sup_Figure2/Dsec_Cl11_VM5d.pdf") %>% rasterGrob()
panel_cl_VA2  <- image_read_pdf("./3_Figures/Sup_Figure2/Dsec_Cl11_VM5d.pdf") %>% rasterGrob()
panel_cl_DL2d <- image_read_pdf("./3_Figures/Sup_Figure2/Dsec_Cl11_VM5d.pdf") %>% rasterGrob()
panel_cl_DL2v <- image_read_pdf("./3_Figures/Sup_Figure2/Dsec_Cl11_VM5d.pdf") %>% rasterGrob()
panel_cl_DA1  <- image_read_pdf("./3_Figures/Sup_Figure2/Dsec_Cl11_VM5d.pdf") %>% rasterGrob()

pdf("./3_Figures/Sup_Figure2/Dsec_All_Clusters_v2.pdf")
layout <- rbind(c(1,2,3,4,5),
                c(6,7,8,9,10),
                c(11,12,13,14,15),
                c(16,17,18,19,20),
                c(21,22,23,24,25))
grid.arrange(arrangeGrob(panel_cl_VM5d,
                         panel_cl_DM2,
                         panel_cl_VA2,
                         panel_cl_DL2d,
                         panel_cl_DL2v,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()






### n ≥ 3 ----
####[update v2] DA1   [n=7] - v8_cl 17 ----

nl_Dsec_ALPNs_DsecI_DA1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_110_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_130_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_129_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_131_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_128_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_127_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_132_lPN_u_DA1
                                      )

nl_Dsec_ALPN_DsecI_DA1_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_128_lPN_u_DA1)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA1, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_frontal_all_v4.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA1, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DA1_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DA1_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl17_DA1_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


####[update v2] VM5d  [n=8] - v8_cl 8 ----
nl_Dsec_ALPNs_DsecI_VM5d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_1_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_24_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_97_adPN_u_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_133_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d
                                       )

nl_Dsec_ALPN_DsecI_VM5d_example_RH <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_VM5d_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Dsec_Cl8_VM5d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl8_VM5d_v3.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}




####[update v2] DM2   [n=3] - v8_cl 11 ----
nl_Dsec_ALPNs_DsecI_DM2 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_109_lPN_u_DM2,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_115_lPN_u_DM2,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_126_lPN_u_DM2
                                      )

nl_Dsec_ALPN_DsecI_DM2_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_115_lPN_u_DM2)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM2, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM2, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DM2_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DM2_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl11_DM2_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





####[update v2] DL2v  [n=7] - v8_cl 15 ----
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
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL2v, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DL2v_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2v_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}




####[update v2] DL2d  [n=3] - v8_cl 15----
nl_Dsec_ALPNs_DsecI_DL2d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_2_adPN_up_DL2d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_21_adPN_up_DL2d,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_9_adPN_up_DL2d
                                       )

nl_Dsec_ALPN_DsecI_DL2d_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_2_adPN_up_DL2d)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL2d, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL2d, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DL2d_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_DL2d_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl15_DL2d_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





####[update v2] VM7d  [n=3] - v8_cl 9 ----
nl_Dsec_DsecI_VM7d <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_57_adPN_up_VM7d,
                                 nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d,
                                 nl_Dsec_ALPNs_DsecI_allR$Dsec_66_adPN_up_VM7d)

nl_Dsec_ALPN_DsecI_VM7d_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_DsecI_VM7d, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_frontal_all_v2.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_DsecI_VM7d, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_VM7d_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPN_DsecI_VM7d_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl9_VM7d_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





####[update v2] VA2   [n=3] - v8_cl 12 ----
nl_Dsec_ALPNs_DsecI_VA2 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_67_adPN_u_VA2,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_119_adPN_u_VA2,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_99_adPN_up_VA2
                                      )

nl_Dsec_ALPNs_DsecI_VA2_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_119_adPN_u_VA2)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VA2, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VA2, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VA2_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VA2_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl12,13_VA2_v3.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









####[update v2] VL2a  [n=4] - v8_cl 18 ----
nl_Dsec_ALPNs_DsecI_VL2a <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_85_adPN_u_VL2a,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_94_adPN_u_VL2a,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_107_adPN_u_VL2a,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_69_adPN_up_VL2a
                                       )

nl_Dsec_ALPNs_DsecI_VL2a_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_107_adPN_u_VL2a)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_VL2a_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}



####[update v2] VM7v+ [n=6] - v8_cl 10,12,13 -----
nl_Dsec_ALPNs_DsecI_VM7v <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_4_adPN_up_VM7v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_7_adPN_up_VM7v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_73_adPN_up_VM7v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_118_adPN_up_VM7v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_49_adPN_up_VM7v,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_3_adPN_up_VM7v
                                       )

nl_Dsec_ALPNs_DsecI_VM7v_example_R <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM7v, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM7v, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM7v_example_R, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM7v_example_R, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10,12,13_VM7v_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


####[update v2] DM6+  [n=8] - v8_cl10 ----
nl_Dsec_ALPNs_DsecI_DM6 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_81_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_27_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_111_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_104_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_64_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_12_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_92_adPN_up_DM6
                                      )

nl_Dsec_ALPNs_DsecI_DM6_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM6, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM6, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM6_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom, alpha = alpha_glom)

nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM6_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom, alpha = alpha_glom)

nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl10_DM6_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





####[update v2] DC1   [n=8] - v8_cl19,20,21 ----
nl_Dsec_ALPNs_DsecI_DC1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_96_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_121_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_87_adPN_up_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_38_adPN_up_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_11_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_32_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_123_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_72_adPN_u_DC1
                                      )

nl_Dsec_ALPNs_DsecI_DC1_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_96_adPN_u_DC1)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1, lwd=lwd, soma=soma, col=colfunc_red)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl19,20,21_DC1_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}



####[update v2] VC3l  [n=8] - v8_cl6,7 ----
nl_Dsec_ALPNs_DsecI_VC3l <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_18_adPN_up_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_70_adPN_u_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_29_adPN_up_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_31_adPN_u_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_26_adPN_up_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_30_adPN_up_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_89_adPN_up_VC3l,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_17_adPN_up_VC3l)

nl_Dsec_ALPNs_DsecI_VC3l_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_31_adPN_u_VC3l)   

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3l, lwd=lwd, soma=soma, col=col_neuron_clust)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3l, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3l_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3l_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3l_v4.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}








####[update v2] VC3l+ [n=14] - v8_cl6,7 ----

nl_Dsec_ALPNs_DsecI_VC3lplus <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_34_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_47_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_52_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_84_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_39_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_43_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_19_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_83_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_45_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_56_adPN_up_VC3,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_82_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_15_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_101_adPN_up_VC3l,
                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_22_adPN_up_VC3l
                                           )

nl_Dsec_ALPNs_DsecI_VC3lplus_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_39_adPN_up_VC3l)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3lplus, lwd=lwd, soma=soma, col=col_neuron_clust)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3lplus, lwd=lwd, soma=soma, col=colfunc_red)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3lplus_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VC3lplus_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color =col_glom_2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color =col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl6,7_VC3lplus_v4.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}







####[update v2] VM3, VM2, VC4 [n=4] - v8_cl13 ----
nl_Dsec_ALPNs_DsecI_VM3_VM2_VC4 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3,
                                              nl_Dsec_ALPNs_DsecI_allR$Dsec_16_adPN_up_VM3,
                                              nl_Dsec_ALPNs_DsecI_allR$Dsec_25_adPN_up_VM3,
                                              nl_Dsec_ALPNs_DsecI_allR$Dsec_120_adPN_up_VM2
                                              )

nl_Dsec_ALPNs_DsecI_VM3_VM2_VC4_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM3_VM2_VC4, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = col_glom, alpha = alpha_glom_low)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM3_VM2_VC4, lwd=lwd, soma=soma, col=col_neuron_clust)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = col_glom, alpha = alpha_glom_low)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM3_VM2_VC4_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = col_glom, alpha = alpha_glom_low)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VM3_VM2_VC4_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = col_glom, alpha = alpha_glom_low)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl13_VM3_VM2_VC4_v2.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


####[update v2] Lateral Multi 1 - Hemisphere crossing [n=3] - v8_cl1 ----
nl_Dsec_ALPNs_DsecI_MultiLateral1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_37_lPN_m_ml1,
                                                nl_Dsec_ALPNs_DsecI_allR$Dsec_102_lPN_m_ml1,
                                                nl_Dsec_ALPNs_DsecI_allR$Dsec_76_lPN_m_ml1)

nl_Dsec_ALPNs_DsecI_MultiLateral1_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_102_lPN_m_ml1)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral1, lwd=lwd, soma=soma, col=col_neuron_clust)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl1_MultiLateral1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral1, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl1_MultiLateral1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl1_MultiLateral1_frontal_all.png")
#Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)


Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl1_MultiLateral1_dorsal_all.png")
#Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)


pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl1_MultiLateral1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_RH_all, Dorsal_RH_all,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


####[update v2] Lateral Multi 2 - full circle [n=6] - v8_cl2,3 ----
nl_Dsec_ALPNs_DsecI_MultiLateral2_FullCircle <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_105_lPN_m_ml2,
                                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_65_lPN_m_ml2,
                                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_106_lPN_m_ml2,
                                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_100_lPN_m_ml2,
                                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_95_lPN_m_ml2,
                                                           nl_Dsec_ALPNs_DsecI_allR$Dsec_42_lPN_m_ml2
                                                           )

nl_Dsec_ALPNs_DsecI_MultiLateral2_FullCircle_example_RH <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_65_lPN_m_ml2)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral2_FullCircle, lwd=lwd, soma=soma, col=col_neuron_clust)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral2_FullCircle, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral2_FullCircle_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral2_FullCircle_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl2_MultiLateral2_FullCircle_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}



####[update v2] Lateral Multi 3 - half/no circle [n=8] - v8_cl3----
nl_Dsec_ALPNs_DsecI_MultiLateral3_HalfNoCircle <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_93_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_98_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_77_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_35_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_122_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_46_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_80_lPN_m_ml3,
                                                             nl_Dsec_ALPNs_DsecI_allR$Dsec_54_lPN_m_ml3
                                                             )

nl_Dsec_ALPNs_DsecI_MultiLateral3_HalfNoCircle_example_RH <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_98_lPN_m_ml3)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral3_HalfNoCircle, lwd=lwd, soma=soma, col=col_neuron_clust)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral3_HalfNoCircle, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral3_HalfNoCircle_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_MultiLateral3_HalfNoCircle_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Dsec_Cl3_MultiLateral3_HalfNoCircle_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl3_MultiLateral3_HalfNoCircle_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}



####[update v2] Dorsal Multi 1 [n=14] - v8_cl5 ----
nl_Dsec_ALPNs_DsecI_DorsalMulti1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_74_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_112_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_8_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_5_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_71_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_50_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_79_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_41_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_116_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_108_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_91_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_20_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_124_adPN_m_md1,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_55_adPN_m_md1
                                               )

nl_Dsec_ALPNs_DsecI_DorsalMulti1_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_50_adPN_m_md1)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti1, lwd=lwd, soma=soma, col=col_neuron_clust)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti1, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti1_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti1_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl5_DorsalMulti1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}












####[update v2] Dorsal Multi 2 [n=8]  - v8_cl14 ----
nl_Dsec_ALPNs_DsecI_DorsalMulti2 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_53_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_61_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_48_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_58_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_36_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_51_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_103_adPN_m_md2,
                                               nl_Dsec_ALPNs_DsecI_allR$Dsec_14_adPN_m_md2
                                               )


nl_Dsec_ALPNs_DsecI_DorsalMulti2_example <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_53_adPN_m_md2)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti2, lwd=lwd, soma=soma, col=col_neuron_clust)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti2, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti2_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DorsalMulti2_example, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Dsec_Cl14_DorsalMulti2_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl14_DorsalMulti2_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}




### n ≤ 2 ----


####[update v2] DP1l & DP1m [n=1] - v8_cl16 ----
nl_Dsec_ALPNs_DsecI_DP1l_DP1m <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_10_adPN_up_DM1)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DP1l_DP1m, lwd=lwd, soma=soma, col="red")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1m", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DP1l_DP1m, lwd=lwd, soma=soma, col="red")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1m", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DP1l_DP1m_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}

####[update v2] DM1  [n=1] - v8_cl16 ----
nl_Dsec_ALPNs_DsecI_DM1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_28_adPN_u_DM1)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM1, lwd=lwd, soma=soma, col= "red")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DM1, lwd=lwd, soma=soma, col= "red")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl16_DM1_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}



####[update v2] VA7m [n=1] - v8 cl21 ----
nl_Dsec_ALPNs_DsecI_VA7m <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_44_adPN_u_VA7m)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VA7m, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7m", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_VA7m, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7m", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_VA7m_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_VA7m_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_VA7m_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}

####[update v2] DL1  [n=1] - v8_cl21 ----
nl_Dsec_ALPNs_DsecI_DL1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_117_adPN_up_DL1)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL1, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DL1, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL1", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DL1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


####[update v2] DC3  [n=1] - v8_cl18 ----
nl_Dsec_ALPNs_DsecI_DC3 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_23_adPN_u_DC3)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC3, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC3, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl18_DC3_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





####[update v2] DA4m & DA4l [n=1] - v8_cl19 ----
nl_Dsec_ALPNs_DsecI_DA4m_DA4l <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_75_adPN_up_DA4m)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA4m_DA4l, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4m", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA4m_DA4l, lwd=lwd, soma=soma, col="red2")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4m", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = col_glom, alpha = alpha_glom)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_DM1_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl21_DA4m_DA4l_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}



####[update v2] Lateral Multi 4 [n=1] - v8_cl4 ----
nl_Dsec_ALPNs_DsecI_ml4 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_125_lPN_m_ml4)

# All Cluster ALPNS
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_ml4, lwd=lwd, soma=soma, col="red2")
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_frontal_all.png", fmt="png", height = height_frontal, width = width_frontal)
close3d()

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_ml4, lwd=lwd, soma=soma, col="red2")
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_dorsal_all.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Cluster example
open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_ml4_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_frontal_example.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = "grey")
#plot3d(nl_Dsec_ALPNs_DsecI_ml4_example_RH, lwd=lwd, soma=soma, col=col_neuron_expl1)
nview3d("dorsal", 0, zoom = zoom_dorsal)
snapshot3d("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_dorsal_example.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_frontal_all.png")
Frontal_RH_all <- image_crop(Frontal_RH_all, "812x1300+0+0")
Frontal_RH_all <- rasterGrob(Frontal_RH_all)

Frontal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_frontal_example.png")
Frontal_RH_example <- image_crop(Frontal_RH_example, "812x1300+0+0")
Frontal_LH_example <- image_flop(Frontal_RH_example)
Frontal_LH_example <- rasterGrob(Frontal_LH_example)

Dorsal_RH_all <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_dorsal_all.png")
Dorsal_RH_all <- image_crop(Dorsal_RH_all, "812x690+0+0")
Dorsal_RH_all <- rasterGrob(Dorsal_RH_all)

Dorsal_RH_example <- image_read("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_dorsal_example.png")
Dorsal_RH_example <- image_crop(Dorsal_RH_example, "812x690+0+0")
Dorsal_LH_example <- image_flop(Dorsal_RH_example)
Dorsal_LH_example <- rasterGrob(Dorsal_LH_example)

pdf("./3_Figures/Sup_Figure2/Sup_Figure2_c_Dsec_Cl4_ml4_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1,2),c(3,4))
grid.arrange(arrangeGrob(Frontal_RH_all, Frontal_LH_example, Dorsal_RH_all, Dorsal_LH_example,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}










