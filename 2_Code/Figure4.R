#--------------------------------------------#
# Figure 4  ----
# VM5d branching
#--------------------------------------------#


## Front Matter ----
### Load Packages & Resources ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#


## Panel a - VM5d Specific driver - Whole population Immunostaining ----
### [to do] ----





## Panel b - VM5d Lateral Horn Extra Branch ----
### Dsec ----
# mushroom body not shown for clarity
nl_Dsec_ALPN_VM5d_example_woMB <- read.neurons("./1_Data/5_Dataset_our_v2/6_Figure4d_Dsec_VM5d_no_MB")

open3d()
plot3d(DsecI, alpha = alpha_brain)
plot3d(nl_Dsec_ALPN_VM5d_example_woMB, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(nl_Dmel_EM_ALPNs_IS2_allRH_VM5d[1], lwd=lwd, soma=soma, col=colfunc_darkblue)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_d_Dsec_VM5d_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure4/Figure4_d_Dsec_VM5d_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "500x300+70+100")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

pdf("./3_Figures/Figure4/Figure4_d_Dsec_VM5d_LH_Example1_v1.pdf", width = 1.7, height = 1)
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_LH_Example1,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}



### Dmel ----
# mushroom body not shown for clarity
nl_Dmel_ALPN_VM5d_example_woMB <- read.neurons("./1_Data/5_Dataset_our_v2/6_Figure4d_Dmel_VM5d_no_MB")

clear3d()
open3d()
plot3d(IS2, alpha = alpha_brain)
plot3d(nl_Dmel_ALPN_VM5d_example_woMB, lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_RH_IS2, materials = "RH_VM5d---", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_d_Dmel_VM5d_LH.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure4/Figure4_d_Dmel_VM5d_LH.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "500x300+70+130")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

pdf("./3_Figures/Figure4/Figure4_d_Dmel_VM5d_LH_v1.pdf", width = 1.7, height = 1)
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_LH_Example1,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}



## Panel c - VM5d Branch lenght comparison ----
### [to do] ----





## Panel d - VM5d Glomeruli Position & Size ----

### Dsec - Innervated Glomeruli ----
open3d()
#plot3d(DsecI, alpha = alpha_brain)
plot3d(DsecF_surf, alpha = alpha_brain, col="grey")
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_DM6", color = col_glom_DM6, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_VC3m", color = col_glom_VC3, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_VC3l", color = col_glom_VC3, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_VM2", color = col_glom_VM2, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_VM3", color = col_glom_VM3, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecF_highres, materials = "L_VM7d", color = col_glom_VM7d, alpha = alpha)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_b_Dsec_VM5d_Innervated_Glomeruli.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example1 <- image_read("./3_Figures/Figure4/Figure4_b_Dsec_VM5d_Innervated_Glomeruli.png")
Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+935+820")
Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)
pdf("./3_Figures/Figure4/Figure4_b_Dsec_VM5d_Innervated_Glomeruli_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example1, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}




### Dmel - Innervated Glomeruli ----
#### Using Microscopy Image Browser (MIB) - open source ----
# Dmel Glomeruli were used to demonstrate that an open-source workflow with the Microscopy Image Browser (MIB) instead of Amira (Thermo Fisher) is possible.
# So far this workflow is more inconvenient as natverse packages were built mainly for an Amira-based workflow.
# open3d()
# clear3d()
# #plot3d(IS2, alpha = alpha_brain)
# plot3d(IS2_surf, alpha = alpha_brain)
# plot3d(glom_Dmel_IS2_AL_L_VM5d, color = col_glom_VM5d, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VM7d, color = col_glom_VM7d, alpha = alpha_glom)
# #plot3d(glom_Dmel_IS2_AL_L_VA2, color = col_glom_VA2, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_DM6, color = col_glom_DM6, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VM2, color = col_glom_VM2, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VC3m, color = col_glom_VC3, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_VC3l, color = col_glom_VC3, alpha = alpha_glom)
# plot3d(glom_Dmel_IS2_AL_L_DM2, color = col_glom, alpha = alpha_glom)
# nview3d("frontal", 0, zoom = zoom_frontal)
# snapshot3d("./3_Figures/Figure4/Panel_b_Dmel_VM5d_Innervated_Glomeruli_v4.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
# Frontal_L_Example1 <- image_read("./3_Figures/Figure4/Panel_b_Dmel_VM5d_Innervated_Glomeruli_v3.png")
# #Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+920+670") "490x695+1160+630"
# Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+920+620")
# Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
# Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)
# pdf("./3_Figures/Figure4/Panel_b_Dmel_VM5d_Innervated_Glomeruli_v3.pdf")
# layout <- rbind(c(1))
# grid.arrange(arrangeGrob(Frontal_L_Example1, layout_matrix = layout))
# dev.off()
# while (rgl.cur() > 0) {close3d()}


#### Using Amira (Thermo Fisher Scientific) - commercial ----

##### Same as Dsec Glomeruli -----
# open3d()
# clear3d()
# #plot3d(IS2, alpha = alpha_brain)
# plot3d(IS2_surf, alpha = alpha_brain)
# #plot3d(glom_Dmel_AL_L_IS2_lowres, color = col_glom_VM5d, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM5d", color = col_glom_VM5d, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM5v", color = col_glom_VM3, alpha = alpha_glom_low)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM7d", color = col_glom_VM7d, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM7v", color = col_glom_VM7d, alpha = alpha_glom)
# #plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VA2", color = col_glom_VA2, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "DM6", color = col_glom_DM6, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM2", color = col_glom_VM2, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM3", color = col_glom_VM3, alpha = alpha_glom)
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VC3m", color = col_glom_VC3, alpha = alpha_glom) #VC3l
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VC3l", color = col_glom_VC3, alpha = alpha_glom) #VC3m
# plot3d(glom_Dmel_AL_L_IS2_lowres, material = "DM2", color = col_glom, alpha = alpha_glom)
# nview3d("frontal", 0, zoom = zoom_frontal)
# snapshot3d("./3_Figures/Figure4/Panel_a_Dmel_VM5d_Innervated_Glomeruli_v6.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
# Frontal_L_Example1 <- image_read("./3_Figures/Figure4/Panel_a_Dmel_VM5d_Innervated_Glomeruli_v6.png")
# #Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+920+670") "490x695+1160+630"
# Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+920+620")
# Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
# Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)
# pdf("./3_Figures/Figure4/Panel_a_Dmel_VM5d_Innervated_Glomeruli_v6.pdf")
# layout <- rbind(c(1))
# grid.arrange(arrangeGrob(Frontal_L_Example1, layout_matrix = layout))
# dev.off()
# while (rgl.cur() > 0) {close3d()}


##### Only Innervated Glomeruli -----
open3d()
#plot3d(IS2, alpha = alpha_brain)
plot3d(IS2_surf, alpha = alpha_brain)
#plot3d(glom_Dmel_AL_L_IS2_Lowres, color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "L_VM5v", color = col_glom_VM3, alpha = alpha_glom_low)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "L_VM7v", color = col_glom_VM7d, alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "L_VC3m", color = col_glom_VC3, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Panel_a_Dmel_VM5d_Innervated_Glomeruli.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example1 <- image_read("./3_Figures/Figure4/Panel_a_Dmel_VM5d_Innervated_Glomeruli.png")
#Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+920+670") "490x695+1160+630"
Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "705x695+920+620")
Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)
pdf("./3_Figures/Figure4/Panel_a_Dmel_VM5d_Innervated_Glomeruli_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example1, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}



## Panel e - VM5d Glomeruli Branching ----

### Dsec ----

#### Example 1 - Immuno Staining ----
##### [to do] ----
# Fiji Processing:
# Dsec VM5d ROI: x=174.36 (378), y=139.76 (303), w=55.35 (120), h78.41 (170)
# DsecF registered; z-Project slices 18-70, max intensity


#### Example 1 - Trace ----
open3d()
#plot3d(DsecI, alpha = alpha_brain)
plot3d(DsecF_surf, alpha = 0.05, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_113_adPN_up_VM5d, lwd=lwd_F4b, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_DM6", coslor = col_glom_DM6, alpha = alpha_glom_low)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example1.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example1 <- image_read("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example1.png")
Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "490x695+1160+820")
Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)
pdf("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example1_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example1, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}


#### Example 2 - Immuno Staining ----
##### [to do] ----
# Fiji Processing:
# DsecF registered; z-Project slices 16-70, max intensity
# flip horizontally



#### Example 2 - Trace ----
clear3d()
open3d()
#plot3d(DsecI, alpha = alpha_brain)
plot3d(DsecF_surf, alpha = 0.05, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_114_adPN_up_VM5d, lwd=lwd_F4b, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM2", color = col_glom_VM2, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_DM6", color = col_glom_DM6, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VC3m", color = col_glom_VC3, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VC3l", color = col_glom_VC3, alpha = alpha_glom_low)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example2.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example2 <- image_read("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example2.png")
Frontal_L_Example2 <- image_crop(Frontal_L_Example2, "490x695+1160+820")
Frontal_L_Example2 <- image_flop(Frontal_L_Example2)
Frontal_L_Example2 <- rasterGrob(Frontal_L_Example2)
pdf("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example2_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example2, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}

#### Example 3 - Immuno Staining ----
# Fiji Processing:
# DsecF registered; z-Project slice 10-70, max intensity

##### [to do] ----

#### Example 3 - Trace ----
open3d()
#plot3d(DsecI, alpha = alpha_brain)
plot3d(DsecF_surf, alpha = 0.05, col = "grey")
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_86_adPN_up_VM5d, lwd=lwd_F4b, soma=soma, col=col_neuron_expl1)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM2", color = col_glom_VM2, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM3", color = col_glom_VM3, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_highres, materials = "L_VM7d", color = col_glom_VM7d, alpha = alpha_glom_low)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example3.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example3 <- image_read("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example3.png")
Frontal_L_Example3 <- image_crop(Frontal_L_Example3, "490x695+1160+820")
Frontal_L_Example3 <- image_flop(Frontal_L_Example3)
Frontal_L_Example3 <- rasterGrob(Frontal_L_Example3)
pdf("./3_Figures/Figure4/Figure4_e_Dsec_VM5d_Example3_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example3, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}


### Dmel ----

#### Example 1 - Immuno Staining ----
##### [to do] ----
# Fiji Processing:
# DsecF registered; z-Project slices 11-70, max intensity
# flip horizontally


#### Example 1 - Trace ----
open3d()
plot3d(IS2_surf, alpha = alpha_brain)
plot3d(nl_Dmel_ALPNs_IS2_allRH[5], lwd=lwd_F4b, soma=soma, col=col_neuron_explLM)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM5d", color = col_glom_VM5d, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example1.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example1 <- image_read("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example1.png")
Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "490x695+1160+620")
Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)
pdf("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example1_v3.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example1, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}

#### Example 2 - Immuno Staining ----
##### [to do] ----
# Fiji Processing:
# DsecF registered; z-Project slices 14-70, max intensity
# flip horizontally

#### Example 2 - Trace ----
open3d()
plot3d(IS2_surf, alpha = alpha_brain)
plot3d(nl_Dmel_ALPNs_IS2_allRH[2], lwd=lwd_F4b, soma=soma, col=col_neuron_explLM)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM5d", color = col_glom_VM5d, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example2.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example2 <- image_read("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example2.png")
Frontal_L_Example2 <- image_crop(Frontal_L_Example2, "490x695+1160+620")
Frontal_L_Example2 <- image_flop(Frontal_L_Example2)
Frontal_L_Example2 <- rasterGrob(Frontal_L_Example2)
pdf("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example2_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example2, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}

#### Example 3 - Immuno Staining ----
##### [to do] ----
# Fiji Processing:
# DsecF registered; z-Project slices 11-70, max intensity
# flip horizontally

#### Example 3 - Trace ----
open3d()
clear3d()
plot3d(IS2_surf, alpha = alpha_brain)
plot3d(nl_Dmel_ALPNs_IS2_allRH[3], lwd=lwd_F4b, soma=soma, col=col_neuron_explLM)
#plot3d(nl_Dmel_ALPNs_IS2_allRH[1], lwd=lwd, soma=soma, col=col_neuron_explLM)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM5d", color = col_glom_VM5d, alpha = alpha_glom)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM5v", color = col_glom_VM5d, alpha = alpha_glom_low)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VM7v", color = col_glom_VM7v, alpha = alpha_glom_low)
plot3d(glom_Dmel_AL_L_IS2_lowres, material = "VC3m", color = col_glom_VC3, alpha = alpha_glom_low)

nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example3.png", fmt="png", height = height_frontal_F4b, width = width_frontal_F4b)
Frontal_L_Example3 <- image_read("./3_Figures/Figure4/Figure4_b_Dmel_VM5d_Example3.png")
Frontal_L_Example3 <- image_crop(Frontal_L_Example3, "490x695+1160+620")
Frontal_L_Example3 <- image_flop(Frontal_L_Example3)
Frontal_L_Example3 <- rasterGrob(Frontal_L_Example3)
pdf("./3_Figures/Figure4/Figure4_b__Dmel_VM5d_Example3_v1.pdf")
layout <- rbind(c(1))
grid.arrange(arrangeGrob(Frontal_L_Example3, layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {close3d()}






