#-----------------------------#
# Library - Visualisation -----
#-----------------------------#


## Visualisation Parameters ----

### Color pallets ----
colfunc_grey <- colorRampPalette(c("grey", "darkgrey"))
colfunc_red <- colorRampPalette(c("darkred", "red"))
colfunc_red2 <- colorRampPalette(c("red3", "red"))
colfunc_blue <- colorRampPalette(c("steelblue1", "dodgerblue4"))
colfunc_darkblue <- colorRampPalette(c("dodgerblue3", "midnightblue"))
colfunc_lightblue <- colorRampPalette(c("lightskyblue2", "dodgerblue3"))
colfunc_cyan <- colorRampPalette(c("cyan3", "cyan2"))
colfunc_orange <- colorRampPalette(c("darkorange", "orangered2"))
colfunc_yellow <- colorRampPalette(c("darkgoldenrod1", "gold1"))
colfunc_purple <- colorRampPalette(c("purple4", "purple"))
colfunc_green <- colorRampPalette(c("darkgreen", "green"))
colfunc_brown <- colorRampPalette(c("darkgoldenrod4", "darkgoldenrod1"))
colfunc_blue_orange <- colorRampPalette(c("dodgerblue4", "orangered2"))
colfunc_red_blue <- colorRampPalette(c("red", "blue"))
# Test
# clear3d()
# open3d()
# plot3d(nl_Dsec_ALPNs_DsecF_all, lwd = 6, soma = 3,col = colfunc_blue)
# plot3d(nl_Dsec_ALPNs_DsecF_all, lwd = 6, soma = 3, col = colfunc_lightblue)
# plot3d(nl_Dsec_ALPNs_DsecF_all, lwd = 6, soma = 3,col = colfunc_darkblue)


### General Settings ----
alpha = 0.5



#### Neurons ----
soma = 3.5
lwd = 6
lwd_x2 = 12
col_neuron_clust = colfunc_red
col_neuron_expl1 = "red2"
col_neuron_expl2 = "skyblue3"
col_neuron_explLM = "skyblue2"
col_neuron_explEM = "dodgerblue3"
# Test
# plot3d(nl_Dsec_ALPNs_DsecF_allR[1], col = col_neuron_expl1)
# plot3d(nl_Dsec_ALPNs_DsecF_allR[2], col = col_neuron_expl2)
# plot3d(nl_Dsec_ALPNs_DsecF_allR[3], col = col_neuron_explLM)
# plot3d(nl_Dsec_ALPNs_DsecF_allR[4], col = col_neuron_explEM)



#### Brain ----
alpha_brain = 0.05
col_brain = "grey"
# Test
# plot3d(DsecF_surf, alpha = alpha_brain, col = col_brain)


#### Glomeruli ----
alpha_glom = 0.5
alpha_glom_low = 0.2
alpha_glom_high = 0.75
col_glom = "deepskyblue"
col_glom_2 = "dodgerblue3"

col_glom_grey <- "lightgrey"
col_glom_DA1 <- "purple3"
col_glom_DC1 <- "red"
col_glom_DM2 <- "cyan"
col_glom_DM6 <- "cyan4"
col_glom_DL2v <- "red2"
#col_glom_DL2d
col_glom_VA2 <- "lightblue"
col_glom_VC3 <- "lightgreen"
col_glom_VL2a <- "purple"
col_glom_VM2 <- "blue"
col_glom_VM7d <- "darkgreen"
col_glom_VM7v <- "green4"
col_glom_VM5d <- "green"
col_glom_VM3 <- col_glom_VM5d



#### Panels ----
zoom_frontal = 0.67
zoom_dorsal = 0.356

height_frontal = 1300
width_frontal = 1600
height_dorsal = 690
width_dorsal = 1600

height_frontal_x2 = 2600
width_frontal_x2 = 3200
height_dorsal_x2 = 1380
width_dorsal_x2 = 3200

height_frontal_x0.5 = 650
width_frontal_x0.5 = 800
height_dorsal_x0.5 = 345
width_dorsal_x0.5 = 800

height_frontal_F4b <- 2600
width_frontal_F4b <- 3200
lwd_F4b <- 12





## Figure 2 ----
col_glom = "grey"
col_glom_VM5d = "deepskyblue"
col_glom_DM2 = "red2"

col_glom_DA1 <- "purple3"
col_glom_DC1 <- "red"
col_glom_DM2 <- "cyan"
col_glom_DL2 <- "blue"
col_glom_VA2 <- "lightblue"
col_glom_VC3l <- "lightgreen"
col_glom_VL2a <- "purple"
col_glom_VM7d <- "darkgreen"
col_glom_VM5d <- "green"
col_glom_grey <- "lightgrey"


alpha_glom_high <- 0.75
alpha_glom_low <- 0.2




## Sup Figure 5 ----
col_SLPs    <-"gold"
col_SIPs    <-"gold"
col_SMPs    <-"gold"
col_CLs     <-"gold"
col_LHAV6   <-"gold"
col_LHPD4c1 <-"green3"
col_LHCENT2 <-"magenta3"
col_LHCENT6 <-"orange2"
col_LHMB1   <-"darkgreen"
col_MBON18  <-"cyan2"
col_MBON24  <-"cyan4"
col_NPFP1   <-"blue3"

lwd_SingleNeurons <- 4
lwd_MultipleNeurons <- 2


## Advanced Settings ----
# To export high resolution images with snapshot3d()
# snapshot3d() increases the quality of the rgl neuron representation
# e.g. it smoothes the traces so they do not look as patchy

# Important!!!
# For more cmoplex rgl scenes, e.g. with many neurons, you have to increase the default chromote timeout time with the following lines:
# chrome <- chromote::default_chromote_object()
# chrome$default_timeout <- 120
# chromote::set_default_chromote_object(chrome)


