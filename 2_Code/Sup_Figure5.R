#----------------------------#
# Supplementary Figure 5 ----
#----------------------------#


## Front Matter ----
### Load Libraries ----
source("2_Code/1_Libraries.R")


#------------------------------  Description  ---------------------------------#
# 
# 
# 
#------------------------------------------------------------------------------#



## Panel b ----

### Brain regions - VM5d extra branch ----
#### Dsec ----
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
snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_b_Dsec_VM5d_SCL_SLP_anterior.png", fmt="png", height = height_frontal, width = width_frontal)


open3d()
clear3d()
plot3d(DsecI_surf, color ="grey", alpha = 0.03, )
plot3d(br_SCL_DsecI, col = "lightskyblue3", alpha = 0.2)
plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.04)
plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
#plot3d(nl_Dmel_ALPNs_DsecI_DM1, soma=soma, lwd=lwd, col = colfunc_lightblue)
nview3d("dorsal", 0, zoom = 0.365)
snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_b_Dsec_VM5d_SCL_SLP_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)


# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_b_Dsec_VM5d_SCL_SLP_anterior.png")
Frontal <- image_crop(Frontal, "740x700+90+14")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_b_Dsec_VM5d_SCL_SLP_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+90+14")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_b_Dsec_VM5d_SCL_SLP_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}




plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_SMPs_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_SMPs, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_SLPs_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_SLPs, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)



## Panel c ----
## Neuprint ----
neuprint_datasets()
ids_potential_SLPs <- c(359555152,
                        5813019807,
                        5813019807,
                        329582105,
                        391630222,
                        330303073,
                        330640381,
                        360315461,
                        299272806,
                        391599963,
                        361964228,
                        359900300,
                        5813087454,
                        329215304,
                        327509674,
                        297860627,
                        297519843,
                        328209735,
                        326504486,
                        327519295,
                        296143923,
                        325814784,
                        325484974,
                        451658249,
                        421642764,
                        296829531,
                        391971839,
                        390589591
                        )

ids_potential_SIPs <- c(328265281,
                        5813020789,
                        298935146,
                        298935146,
                        330989587,
                        359628017,
                        548562283,
                        518899771,
                        609587511,
                        609591989,
                        609591880,
                        609591758,
                        609591891,
                        609587594,
                        609591823,
                        607886496,
                        576864518,
                        5813104563,
                        609591640,
                        609591686,
                        577205852
                        )

ids_potential_SMPs <- c(516857964,
                        640276971,
                        515092013,
                        579239039,
                        578919867,
                        609247082,
                        5813082780,
                        579260627,
                        5813019920,
                        735470305,
                        297572235,
                        266873401,
                        5813055768,
                        298245502,
                        267223104,
                        5813039860,
                        266191395,
                        329566197
                        )

ids_potential_CLs <- c(544831533,
                        578587420,
                        548225503,
                        543412036,
                        574420970,
                        759633968,
                        5812981249,
                        543023799,
                        578587259,
                        542699260,
                        547551580
                        )

ids_potential_LHAV6 <- c(544435277,
                        482732443,
                        548199677,
                        607212413,
                        5813067769,
                        609587618,
                        519249805
                        )

id_LHPD4c1	<- c(421641859)
id_LHCENT6	<- c(5813068669)
id_LHCENT2	<- c(327499164)
id_LHMB1    <- c(5813020988)
id_MBON18	  <- c(5813020828)
id_MBON24	  <- c(487143497)
id_NPFP1    <- c(1043117106)


nl_potential_SLPs  <- neuprint_read_skeletons(ids_potential_SLPs)
nl_potential_SIPs  <- neuprint_read_skeletons(ids_potential_SIPs)
nl_potential_SMPs  <- neuprint_read_skeletons(ids_potential_SMPs)
nl_potential_CLs   <- neuprint_read_skeletons(ids_potential_CLs)
nl_potential_LHAV6 <- neuprint_read_skeletons(ids_potential_LHAV6)
nl_LHPD4c1         <- neuprint_read_skeletons(id_LHPD4c1)
nl_LHCENT6         <- neuprint_read_skeletons(id_LHCENT6)
nl_LHCENT2         <- neuprint_read_skeletons(id_LHCENT2)
nl_LHMB1           <- neuprint_read_skeletons(id_LHMB1)
nl_MBON18          <- neuprint_read_skeletons(id_MBON18)
nl_MBON24          <- neuprint_read_skeletons(id_MBON24)
nl_NPFP1           <- neuprint_read_skeletons(id_NPFP1)
# Somata are no correctly annotated for some neurons

nl_potential_SLPs_DsecI  <- xform_brain(nl_potential_SLPs*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_potential_SIPs_DsecI  <- xform_brain(nl_potential_SIPs*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_potential_SMPs_DsecI  <- xform_brain(nl_potential_SMPs*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_potential_CLs_DsecI   <- xform_brain(nl_potential_CLs*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_potential_LHAV6_DsecI <- xform_brain(nl_potential_LHAV6*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_LHPD4c1_DsecI         <- xform_brain(nl_LHPD4c1*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_LHCENT6_DsecI         <- xform_brain(nl_LHCENT6*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_LHCENT2_DsecI         <- xform_brain(nl_LHCENT2*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_LHMB1_DsecI           <- xform_brain(nl_LHMB1*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_MBON18_DsecI          <- xform_brain(nl_MBON18*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_MBON24_DsecI          <- xform_brain(nl_MBON24*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)
nl_NPFP1_DsecI           <- xform_brain(nl_NPFP1*8/1000, reference = "DsecI", sample="JRCFIB2018F", via=JRC2018F)


# write.neurons(nl_potential_SLPs_DsecI, dir = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/SLPs", format="swc")
# write.neurons(nl_potential_SIPs_DsecI, dir = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/SIPs", format="swc")
# write.neurons(nl_potential_SMPs_DsecI, dir = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/SMPs", format="swc")
# write.neurons(nl_potential_CLs_DsecI, dir = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/CLs", format="swc")
# write.neurons(nl_potential_LHAV6_DsecI, dir = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHAV6", format="swc")
# write.neuron(nl_LHPD4c1_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHPD4c1/421641859", format="swc")
# write.neuron(nl_LHCENT2_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHCENT2/327499164", format="swc")
# write.neuron(nl_LHCENT6_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHCENT6/5813068669", format="swc")
# write.neuron(nl_LHMB1_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHMB1/5813020988", format="swc")
# write.neuron(nl_MBON18_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/MBON18/5813020828", format="swc")
# write.neuron(nl_MBON24_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/MBON24/487143497", format="swc")
# write.neuron(nl_NPFP1_DsecI, file = "./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/NPFP1/1043117106", format="swc")


nl_potential_SLPs_DsecI   <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/SLPs", pattern = "*.swc", neuronnames = NULL)
nl_potential_SIPs_DsecI   <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/SIPs", pattern = "*.swc", neuronnames = NULL)
nl_potential_SMPs_DsecI   <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/SMPs", pattern = "*.swc", neuronnames = NULL)
nl_potential_CLs_DsecI    <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/CLs", pattern = "*.swc", neuronnames = NULL)
nl_potential_LHAV6_DsecI  <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHAV6", pattern = "*.swc", neuronnames = NULL)
nl_LHPD4c1_DsecI          <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHPD4c1", pattern = "*.swc", neuronnames = NULL)
nl_LHCENT2_DsecI          <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHCENT2", pattern = "*.swc", neuronnames = NULL)
nl_LHCENT6_DsecI          <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHCENT6", pattern = "*.swc", neuronnames = NULL)
nl_LHMB1_DsecI            <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/LHMB1", pattern = "*.swc", neuronnames = NULL)
nl_MBON18_DsecI           <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/MBON18", pattern = "*.swc", neuronnames = NULL)
nl_MBON24_DsecI           <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/MBON24", pattern = "*.swc", neuronnames = NULL)
nl_NPFP1_DsecI            <- read.neurons("./1_Data/6_Dataset_other/14_Dmel_Neurprint_Sup_Fig5/NPFP1", pattern = "*.swc", neuronnames = NULL)









### SLPs ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_SLPs_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_SLPs, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_SLPs_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### SMPs ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_SMPs_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_SMPs, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_SMPs_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### SIPs ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_SIPs_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_SIPs, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SIPs_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_SIPs_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_SIPs_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_SIPs_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_SIPs_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### CLs ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_CLs_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_CLs, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_CLs_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_CLs_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_CLs_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_CLs_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_CLs_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### LHAV6 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_potential_LHAV6_DsecI, soma=0, lwd=lwd_MultipleNeurons, col=col_LHAV6, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHAV6_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHAV6_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHAV6_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHAV6_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHAV6_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### LHPD4c1 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_LHPD4c1_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_LHPD4c1, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHPD4c1_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHPD4c1_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHPD4c1_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHPD4c1_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHPD4c1_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### LHCENT2 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_LHCENT2_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_LHCENT2, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT2_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT2_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT2_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT2_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT2_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### LHCENT6 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_LHCENT6_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_LHCENT6, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT6_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT6_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT6_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT6_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHCENT6_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### LHMB1 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_LHMB1_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_LHMB1, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHMB1_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHMB1_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHMB1_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHMB1_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_LHMB1_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### MBON18 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_MBON18_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_MBON18, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON18_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON18_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON18_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON18_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON18_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### MBON24 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_MBON24_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_MBON24, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON24_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON24_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON24_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON24_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_MBON24_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}









### NPFP1 ----
plot3d(nl_Dsec_ALPNs_DsecI_VM5d, soma=soma, lwd=lwd, col = colfunc_red)
plot3d(nl_NPFP1_DsecI, soma=0, lwd=lwd_SingleNeurons, col=col_NPFP1, WithNodes = FALSE)
#plot3d(tract_Dsec_AL_L_DsecI_lowres, material = "Superior_Latero-dorsal_Tract", col="blue", alpha= 0.2)
plot3d(DsecI_surf, col = "grey", alpha=0.05)
nview3d("frontal", 0, zoom = 0.69)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_NPFP1_anterior.png", fmt="png", height = height_frontal, width = width_frontal)
nview3d("dorsal", 0, zoom = 0.365)
rgl::snapshot3d("./3_Figures/Sup_Figure5/Sup_Figure5_d_NPFP1_dorsal.png", fmt="png", height = height_dorsal, width = width_dorsal)

# Generate Sub-Panel
Frontal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_NPFP1_anterior.png")
Frontal <- image_crop(Frontal, "740x700+88+22")
Frontal <- rasterGrob(Frontal)

Dorsal <- image_read("./3_Figures/Sup_Figure5/Sup_Figure5_d_NPFP1_dorsal.png")
Dorsal <- image_crop(Dorsal, "740x690+88+22")
Dorsal <- rasterGrob(Dorsal)

pdf("./3_Figures/Sup_Figure5/Sup_Figure5_d_NPFP1_v1.pdf", width = 1, height = 1.878)
layout <- rbind(c(1),c(2))
grid.arrange(arrangeGrob(Frontal, Dorsal,
                         heights = (c(1, 0.954)),
                         layout_matrix = layout))
dev.off()
while (rgl.cur() > 0) {rgl.close()}


