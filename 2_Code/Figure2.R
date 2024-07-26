#----------------------------------------------------#
# Figure 2  ----
# Generation of PN Dataset with novel genetic tools
#----------------------------------------------------#


## Front Matter ----
### Load Packages & Resources ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#



# Panel a - Dataset Overview ----
## Subpanel 1 - All 133 PNs in DsecI on Right Hemisphere - Anterior & Dorsal View ----
# run "2_Dataset_Our" first

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_allR, lwd = lwd, soma = soma, col = colfunc_red)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_133ALPNs_n=133_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
snapshot3d("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_133ALPNs_n=133_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_R_all <- image_read("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_133ALPNs_n=133_anterior.png")
Frontal_R_all <- rasterGrob(Frontal_R_all)

Dorsal_R_all <- image_read("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_ALPNs_n=133_dorsal.png")
Dorsal_R_all <- rasterGrob(Dorsal_R_all)

pdf("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_133ALPNs_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_R_all, Dorsal_R_all,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





## Subpanel 2 - All (93) u/upPNs in DsecI on Right Hemisphere - Anterior & Dorsal View ----

loc_Dsec_ALPNs_DsecI_alluPNs <- file.path("./1_Data/5_Dataset_our_v2/3.4_Dsec_ALPNs_DsecI_allR_uPNs_upPNs")
nl_Dsec_ALPNs_DsecI_alluPNs <- read.neurons(loc_Dsec_ALPNs_DsecI_alluPNs, pattern = "*.swc", neuronnames = NULL)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_alluPNs, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=93_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
snapshot3d("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=93_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_R_all <- image_read("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=93_anterior.png")
Frontal_R_all <- rasterGrob(Frontal_R_all)

Dorsal_R_all <- image_read("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=93_dorsal.png")
Dorsal_R_all <- rasterGrob(Dorsal_R_all)

pdf("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=93_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_R_all, Dorsal_R_all,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





## Subpanel 3 - All (40) mPNs in DsecI on Right Hemisphere - Anterior & Dorsal View ----

loc_Dsec_ALPNs_DsecI_mPNs <- file.path("./1_Data/5_Dataset_our_v2/3.4_Dsec_ALPNs_DsecI_allR_mPNs")
nl_Dsec_ALPNs_DsecI_mPNs <- read.neurons(loc_Dsec_ALPNs_DsecI_mPNs, pattern = "*.swc", neuronnames = NULL)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_mPNs, lwd=lwd, soma=soma, col=colfunc_red)
nview3d("frontal", 0, zoom = 0.69)
snapshot3d("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_mPNs_n=40_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
snapshot3d("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_mPNs_n=40_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal_R_all <- image_read("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=40_anterior.png")
Frontal_R_all <- rasterGrob(Frontal_R_all)

Dorsal_R_all <- image_read("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPNs_n=40_dorsal.png")
Dorsal_R_all <- rasterGrob(Dorsal_R_all)

pdf("./3_Figures/Figure2/Figure2_a_Dsec_Dataset_Overview_u&upPN_n=40_v1.pdf", width = 1, height = 1.2258)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal_R_all, Dorsal_R_all,
                         heights = (c(0.668, 0.355)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









# Panel b - Dataset NBLAST - renamed - short name ----

nl_Dsec_ALPNs_DsecI_allR <- read.neurons("./1_Data/5_Dataset_our_v2/3.4_Dsec_ALPNs_DsecI_allR_renamed", pattern = "*.swc", neuronnames = NULL)

## Analysis ----
dots_Dsec_ALPNs_DsecF <- dotprops(nl_Dsec_ALPNs_DsecI_allR, OmitFailures = NA)
scores_Dsec_ALPNs_DsecF <- nblast_allbyall(dots_Dsec_ALPNs_DsecF)
hc_Dsec_ALPNs_DsecF <- nhclust(scoremat=scores_Dsec_ALPNs_DsecF)
h = 0.80
color_Dsec_ALPNs_DsecF <- colour_clusters(hc_Dsec_ALPNs_DsecF, h=h, groupLabels=F)

## Dendrogram ----
pdf("./3_Figures/Figure2/Figure2_b_NBLAST_Dsec_ALPNs_DsecI_v1_n=133.pdf", 
    width=22, height=10)
# PDF export: x= 0,2 inch per entry; y= 15inch

par(mar = c(15,3,5,1))
par(mgp = c(1.5, 0.5, 0))
plot(color_Dsec_ALPNs_DsecF,
     main = "Dsec_ALPNs_DsecI (n=133)",
     ylab = "NBLAST Score")
abline(h=h, lty=2, col="grey")
rect <- rect.hclust(hc_Dsec_ALPNs_DsecF, h=h, border = "grey")
beg_clus <- head(cumsum(c(1, lengths(rect))), -1)
y_clus <- weighted.mean(rev(hc_Dsec_ALPNs_DsecF$height)+0.1)
text(x=beg_clus, y=y_clus, col="black", font=2)

dev.off()





# Panel b - Dataset NBLAST - renamed - long name ----

nl_Dsec_ALPNs_DsecI_allR <- read.neurons("./1_Data/5_Dataset_our_v2/3.4_Dsec_ALPNs_DsecI_allR_renamed_long", pattern = "*.swc", neuronnames = NULL)

## Analysis ----
dots_Dsec_ALPNs_DsecF <- dotprops(nl_Dsec_ALPNs_DsecI_allR, OmitFailures = NA)
scores_Dsec_ALPNs_DsecF <- nblast_allbyall(dots_Dsec_ALPNs_DsecF)
hc_Dsec_ALPNs_DsecF <- nhclust(scoremat=scores_Dsec_ALPNs_DsecF)
h = 0.80
color_Dsec_ALPNs_DsecF <- colour_clusters(hc_Dsec_ALPNs_DsecF, h=h, groupLabels=F)

## Dendrogram ----
pdf("./3_Figures/Figure2/Figure2_b_NBLAST_Dsec_ALPNs_DsecI_v1_n=133_long.pdf", 
    width=22, height=10)
# PDF export: x= 0,2 inch per entry; y= 15inch

par(mar = c(15,3,5,1))
par(mgp = c(1.5, 0.5, 0))
plot(color_Dsec_ALPNs_DsecF,
     main = "Dsec_ALPNs_DsecI (n=133)",
     ylab = "NBLAST Score")
abline(h=h, lty=2, col="grey")
rect <- rect.hclust(hc_Dsec_ALPNs_DsecF, h=h, border = "grey")
beg_clus <- head(cumsum(c(1, lengths(rect))), -1)
y_clus <- weighted.mean(rev(hc_Dsec_ALPNs_DsecF$height)+0.1)
text(x=beg_clus, y=y_clus, col="black", font=2)

dev.off()









# Panel c - Antennal Lobe Segmentation ----

### All ----
clear3d()
plot3d(DsecI_surf,alpha = alpha_brain, col = "grey")
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_D", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom_DA1, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA2", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = col_glom_grey, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4m", color = col_glom_grey, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom_DC1, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC2", color = col_glom_grey, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color = col_glom_DL2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color = col_glom_DL2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom_DM2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1m", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_V", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1d", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1v", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom_VA2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA6", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7l", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7m", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC2", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = col_glom_VC3l, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom_VL2a, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2p", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5v", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom_VM7d, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom_grey, alpha = alpha_glom_low)
nview3d("frontal",0, zoom = 0.63)
par3d(windowRect = c(0,0,1200,1000))
#par3d(antialias = 2)
rgl.snapshot("./3_Figures/Figure2/Figure2_c_Dsec_Glomeruli_Annotations_Whole_Brain_v1.png")


## Suppanel 2 - Antennal Lobe Segmentation - Antennal Lobe ----
open3d()
#plot3d(DsecI,alpha = alpha_brain)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_D", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom_DA1, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA2", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = col_glom_grey, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4m", color = col_glom_grey, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom_DC1, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC2", color = col_glom_grey, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color = col_glom_DL2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color = col_glom_DL2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = col_glom_DM2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1m", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_V", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1d", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1v", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom_VA2, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA6", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7l", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7m", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC2", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = col_glom_VC3l, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC5", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom_VL2a, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2p", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM1", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM4", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom_VM5d, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5v", color = col_glom_grey, alpha = alpha_glom_low)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom_VM7d, alpha = alpha_glom_high)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom_grey, alpha = alpha_glom_low)
nview3d("frontal",0, zoom = 0.7)
par3d(windowRect = c(0,0,1200,1200))
#par3d(antialias = 2)
rgl.snapshot("./3_Figures/Figure2/Figure2_c_Dsec_Glomeruli_Annotations_AL_v1.png")









# Panel d - Manual Annotation ----
# >> see 4_ALPN_Annotation








# Panel e - Neuron Clusters ----
# >> see Sup Fig 3


## Panel g.1  - VC3l ----
## Panel g.2  - VC3l+ ----
## Panel g.3  - VM5d ----
## Panel g.4  - VM7d ----
## Panel g.5  - DM2 ----
## Panel g.6  - VA2 ----
## Panel g.7  - DL2v ----
## Panel g.8  - DL2d ----
## Panel g.9  - DA1 ----
## Panel g.10 - VL2a ----
## Panel g.11 - DC1 ----




# Panel f - Neuron Example Traces in Lateral Horn (LH) ----

## SupPanel 1 - Traces ----
### DA1 ----
nl_Dsec_ALPNs_DsecI_DA1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_110_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_129_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_128_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_132_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_130_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_131_lPN_u_DA1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_127_lPN_u_DA1)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA1[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA1[5], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_DA1[7], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_LH_Example1 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_Example1.png")
Frontal_LH_Example1 <- image_crop(Frontal_LH_Example1, "550x300+60+120")
Frontal_LH_Example1 <- image_flop(Frontal_LH_Example1)
Frontal_LH_Example1 <- rasterGrob(Frontal_LH_Example1)

Frontal_LH_Example2 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_Example2.png")
Frontal_LH_Example2 <- image_crop(Frontal_LH_Example2, "550x300+60+120")
Frontal_LH_Example2 <- image_flop(Frontal_LH_Example2)
Frontal_LH_Example2 <- rasterGrob(Frontal_LH_Example2)

Frontal_LH_Example3 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_Example3.png")
Frontal_LH_Example3 <- image_crop(Frontal_LH_Example3, "550x300+60+120")
Frontal_LH_Example3 <- image_flop(Frontal_LH_Example3)
Frontal_LH_Example3 <- rasterGrob(Frontal_LH_Example3)

pdf("./3_Figures/Figure2/Figure2_f_Dsec_DA1_LH_AllExamples_v1.pdf", width = 1, height = 0.1818)
layout <- rbind(c(1,2,3))
grid.arrange(arrangeGrob(Frontal_LH_Example1, Frontal_LH_Example2, Frontal_LH_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### DC1 ----
nl_Dsec_ALPNs_DsecI_DC1 <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_96_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_87_adPN_up_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_121_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_32_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_11_adPN_u_DC1,
                                      nl_Dsec_ALPNs_DsecI_allR$Dsec_123_adPN_u_DC1
                                      )

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1[2], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_DC1[6], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_L_Example1 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_Example1.png")
Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "550x300+60+120")
Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)

Frontal_L_Example2 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_Example2.png")
Frontal_L_Example2 <- image_crop(Frontal_L_Example2, "550x300+60+120")
Frontal_L_Example2 <- image_flop(Frontal_L_Example2)
Frontal_L_Example2 <- rasterGrob(Frontal_L_Example2)

Frontal_L_Example3 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_Example3.png")
Frontal_L_Example3 <- image_crop(Frontal_L_Example3, "550x300+60+120")
Frontal_L_Example3 <- image_flop(Frontal_L_Example3)
Frontal_L_Example3 <- rasterGrob(Frontal_L_Example3)

pdf("./3_Figures/Figure2/Figure2_f_Dsec_DC1_LH_AllExamples_v1.pdf", width = 1, height = 0.1818)
layout <- rbind(c(1,2,3))
grid.arrange(arrangeGrob(Frontal_L_Example1, Frontal_L_Example2, Frontal_L_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}





### VL2a ----
nl_Dsec_ALPNs_DsecI_VL2a <- neuronlist(nl_Dsec_ALPNs_DsecI_allR$Dsec_107_adPN_u_VL2a,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_85_adPN_u_VL2a,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_94_adPN_u_VL2a,
                                       nl_Dsec_ALPNs_DsecI_allR$Dsec_69_adPN_up_VL2a
                                       )

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a[1], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_Example1.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a[2], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_Example2.png", fmt="png", height = height_frontal, width = width_frontal)

open3d()
plot3d(DsecI_surf, alpha = alpha_brain, col="grey")
plot3d(nl_Dsec_ALPNs_DsecI_VL2a[3], lwd=lwd, soma=soma, col=col_neuron_expl1)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
nview3d("frontal", 0, zoom = zoom_frontal)
snapshot3d("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_Example3.png", fmt="png", height = height_frontal, width = width_frontal)

# Generate Sub-Panel
Frontal_L_Example1 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_Example1.png")
Frontal_L_Example1 <- image_crop(Frontal_L_Example1, "550x300+60+120")
Frontal_L_Example1 <- image_flop(Frontal_L_Example1)
Frontal_L_Example1 <- rasterGrob(Frontal_L_Example1)

Frontal_L_Example2 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_Example2.png")
Frontal_L_Example2 <- image_crop(Frontal_L_Example2, "550x300+60+120")
Frontal_L_Example2 <- image_flop(Frontal_L_Example2)
Frontal_L_Example2 <- rasterGrob(Frontal_L_Example2)

Frontal_L_Example3 <- image_read("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_Example3.png")
Frontal_L_Example3 <- image_crop(Frontal_L_Example3, "550x300+60+120")
Frontal_L_Example3 <- image_flop(Frontal_L_Example3)
Frontal_L_Example3 <- rasterGrob(Frontal_L_Example3)

pdf("./3_Figures/Figure2/Figure2_f_Dsec_VL2a_LH_AllExamples_v1.pdf", width = 1, height = 0.1818)
layout <- rbind(c(1,2,3))
grid.arrange(arrangeGrob(Frontal_L_Example1, Frontal_L_Example2, Frontal_L_Example3,
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}










## SupPanel 2 - Corresponding Immuostainings ----
# in Fiji
  # Zprojections (max intensity) slices 70-150 of Brains registered to DseF were used
  # Brightness was adjusted using: > Image > Adjust > Brightness/Contrast > "Auto"
  # ROI:
  # ROI was saved under: ./1_Data/






