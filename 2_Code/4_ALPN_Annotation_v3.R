#----------------------#
# 4_ALPN_Annotation - v2 ----
#----------------------#


## Front Matter ----
### Load Libraries ----
source("2_Code/1_Libraries.R")


#---------------------------------------------------------------#

### ALPNs to sort ----


plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M035_LH_PN1_m_l, lwd=6, soma=3, col=colfunc_red)




## NBLAST Cluster ----

###[done] 1 - [lateral multi] Hemisphere crossing ----
plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M035_LH_PN1_m_l, lwd=12, soma=3, col="red") # semi registration > branches a bit out of template
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M114_RH_PN1_m_l, lwd=12, soma=3, col="darkred")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M130_LH_PN1_m_l, lwd=12, soma=3, col="red3")

###[done] 2 - [lateral multi] full circle ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M105_RH_PN1_m_l, lwd=6, soma=3, col="yellow")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M131_LH_PN2_m_l, lwd=6, soma=3, col="yellow1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M133_RH_PN1_m_l, lwd=6, soma=3, col="yellow2")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M128_RH_PN1_m_l, lwd=6, soma=3, col="yellow3")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M129_LH_PN1_m_l, lwd=6, soma=3, col="yellow4")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M055_RH_PN1_m_l, lwd=6, soma=3, col="green")

###[done] 3 - [lateral multi] no/half circle ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M115_RH_PN1_m_l, lwd=6, soma=3, col="red1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M117_LH_PN1_m_l, lwd=6, soma=3, col="red2")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M129_RH_PN2_m_l, lwd=6, soma=3, col="red3")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M090_RH_PN1_m_l, lwd=6, soma=3, col="red4")


plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M127_RH_PN2_m_l, lwd=6, soma=3, col="blue4")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M035_RH_PN1_m_l, lwd=6, soma=3, col="cyan1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M058_RH_PN1_m_l, lwd=6, soma=3, col="cyan2")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M155_LH_PN2_m_l, lwd=6, soma=3, col="cyan3")


###[done] 4 - [dorsal multi1] ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M082_RH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M116_RH_PN1_m_d, lwd=5, soma=3, col="purple1")

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M053_LH_PN3_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M152_RH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M126_LH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M142_LH_PN1_m_d, lwd=5, soma=3, col="purple1")

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M147_LH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M091_RH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M158_RH_PN1_m_d, lwd=5, soma=3, col="purple1")

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M112_LH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_79_6_RH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M110_LH_PN1_m_d, lwd=5, soma=3, col="purple1")
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_79_4_LH_PN1_m_d, lwd=5, soma=3, col="purple1")



### 5 - annotate [1] ----
# clear3d()
# plot3d(DsecI, alpha = 0.05)
# plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M053_LH_PN1, lwd=6, soma=3, col="green") # maybe no PN >excluded


### 6 - annotate [1] ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M167_RH_PN1_m_l, lwd=6, soma=3, col="red")


###[done] 7.1 VC3l uni (innervate VC3m glomerulus segmentation but are adPNS >> VC3l) ----
# (Neurons innervate VC3m glomerulus segmentation (based on Ref) but are adPNS >> VC3l)
clear3d()
plot3d(DsecI_surf, alpha = alpha_brain, col = col_brain)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = "darkgreen", alpha = alpha) # VC3l
# plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color = "green", alpha = alpha) # VC3m
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "red", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "red", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA4", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M108_LH_PN2_u_d, lwd=6, soma=3, col="skyblue")     # VC3l
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_85_7_LH_PN1_u_d, lwd=6, soma=3, col="skyblue")     # VC3l
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_83_5_LH_PN1_up_d, lwd=6, soma=3, col="skyblue")    # VC3l
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M124_LH_PN1_u_d, lwd=6, soma=3, col="skyblue")     # VC3l
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_117_4_RH_PN1_u_d, lwd=6, soma=3, col="skyblue")    # VC3l 

plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_84_4_LH_PN1_up_d, lwd=6, soma=3, col="blue4")      # VC3l #>VM3 >ventrolateral branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_73_6_LH_PN1_up_d, lwd=6, soma=3, col="blue4")      # VC3l #>VA4 >ventrolateral branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_85_4_LH_PN1_up_d, lwd=6, soma=3, col="blue4")      # VC3l #>VM3 >ventrolateral branch



###[done] 7.2 [6] VC3l & VM5d ----
# (Neurons innervate VC3m glomerulus segmentation (based on Ref) but are adPNS >> VC3l)
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = "skyblue", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5v", color = "skyblue", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = "darkgreen", alpha = alpha) # VC3l
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = "orange", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = "red", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "red", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = "red", alpha = alpha)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "yellow", alpha = alpha)

plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_87_2_LH_PN1_up_d, lwd=6, soma=3, col="green")    # VC3l # VM5d
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_74_3_RH_PN1_up_d, lwd=6, soma=3, col="green")    # VC3l # VM5d # VM7d #>VC4

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M048_RH_PN1_up_d, lwd=6, soma=3, col="red3")     # VC3l #>VM3 #>VM5d #>VM7d #>VC4 #>VC1
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M083_LH_PN2_up_d, lwd=6, soma=3, col="red4")     # VC3l #>VM5d #>DM6
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M120_RH_PN1_up_d, lwd=6, soma=3, col="orange")   # VC3l #>VM5d

plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_73_7_LH_PN1_up_d, lwd=6, soma=3, col="orange2")  # VC3l # VM5d # VM7d 



###[done] 8 - [9] VC3l & more ----
# (Neurons innervate VC3m glomerulus segmentation (based on Ref) but are adPNS >> VC3l)
clear3d()
plot3d(DsecI, alpha = 0.05)
nview3d("frontal", 0, zoom = zoom_frontal)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = "darkgreen", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color = "darkgreen", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "purple", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = "darkorange", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = "darkorange", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = "orange1", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM4", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "yellow", alpha = alpha)

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M058_LH_PN1_up_d, lwd=6, soma=3, col="blue4")       # VC3l # VC3m #>VA2 #>VM5d

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M055_LH_PN1_up_d, lwd=6, soma=3, col="blue4")       # VC3l # VM7v

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M119_RH_PN1_up_d, lwd=6, soma=3, col="blue4")       # VC3l #>VM3 #>VM2 
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M057_RH_PN1_up_d, lwd=6, soma=3, col="blue2")       # VC3l #>VM3 #>VM2 
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_116_5_LH_PN1_up_d, lwd=6, soma=3, col="red")        # VC3l #>VM5d

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M093_RH_PN1_up_d, lwd=6, soma=3, col="blue4")  # bi # VC3l # VM3
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M119_LH_PN2_up_d, lwd=6, soma=3, col="blue4")  # bi # VC3l # VM3 #>VM5d

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M130_RH_PN1_up_d, lwd=6, soma=3, col="blue4")       # VC3l # VM7d # DC4 #>VC3m




##[done] 9 - [3] DM2 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M151_LH_PN1_m_l, lwd=6, soma=3, col="green")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M144_LH_PN1_u_l, lwd=6, soma=3, col="green")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M171_LH_PN1_u_l, lwd=6, soma=3, col="green")


##[done] 10 - [3] VA2 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M107_LH_PN1_u_d, lwd=6, soma=3, col="red")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M153_LH_PN2_u_d, lwd=6, soma=3, col="red4")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M129_RH_PN3_up_d, lwd=6, soma=3, col="red3") #VM2 #VM3


## 10.1 - [1] [VM5d & VM7v & VA3 & VM2] ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA3", color = col_glom, alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_77_7_LH_PN1_up_d, lwd=6, soma=3, col="blue") #VM7v #VA2 #VM5d #>VM2 #>VA2




##[done] 11 - [7] VM5d ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = col_glom, alpha = alpha) #VC3l
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom, alpha = alpha)

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M185_RH_PN1_up_d, lwd=6, soma=3, col="orange")   # VM5d
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M129_RH_PN1_u_d, lwd=6, soma=3, col="green")   # VM5d
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_82_5_RH_PN1_up_d, lwd=6, soma=3, col="red")    # VM5d #>VC3l
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M149_RH_PN1_up_d, lwd=6, soma=3, col="red")    # VM5d #DM6

# MisTargeting
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_79_5_RH_PN1_up_d, lwd=6, soma=3, col="red")    # VM5d #VM7d #>VM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_71_2_RH_PN1_up_d, lwd=6, soma=3, col="red")    # VM5d #VM7d #>VM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M123_RH_PN1_up_d, lwd=6, soma=3, col="red")    # VM5d #VM7d #VM3 #>VM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M150_LH_PN1_up_d, lwd=6, soma=3, col="red")    # VM5d #VC3l #VM7v #>VM3 #>VM2 #>DM6 ("extra ventral branch")


## 12.1 - [9] DM6 & VM2 (&DM2) (&VM7v)----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = "darkgreen", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM2", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM5", color = "pink", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "purple", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = "darkorange", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = "darkorange", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "darkgreen", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "blue", alpha = alpha)


plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M119_LH_PN1_up_d, lwd=6, soma=3, col="orange1")   # DM6 # VM3 #>VA2 #>VM7d #>VM5d #>DM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_84_3_LH_PN1_up_d, lwd=6, soma=3, col="orange2")   # DM6 # VM7v
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M100_LH_PN1_up_d, lwd=6, soma=3, col="orange3")   # DM6              # VM5d-like branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M096_LH_PN1_up_d, lwd=6, soma=3, col="orange4")   # DM6 # DM2 # VM7v # VM5d-like branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_93_9_RH_PN1_up_d, lwd=6, soma=3, col="blue2")     # DM6 # VM7v #>VM2 #>VM5d # VM5d-like branch

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M127_RH_PN1_up_d, lwd=6, soma=3, col="green")     # DM6 # VM5d # DM2 

plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M147_RH_PN1_up_d, lwd=6, soma=3, col="red")       # DM6 # VM2 # VM3 #>DM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M131_LH_PN1_up_d, lwd=6, soma=3, col="red")       # DM6 # VM2 # VM7v (good representation of the DM6-VM7v-VM2 axis)


##[done] 12.2 - [5] VM7v+ ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM6", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = col_glom, alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = col_glom, alpha = alpha) #VC3l
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M111_RH_PN2_up_d, lwd=6, soma=3, col="green")  # VM7v # DM6 #>VM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M153_LH_PN1_up_d, lwd=6, soma=3, col="pink")   # VM7v # VM2 #>VM3
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M094_LH_PN1_up_d, lwd=6, soma=3, col="purple") # VM7v # VM2 # small VM5d-like branch

plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_79_5_LH_PN1_up_d, lwd=6, soma=3, col="red")    # VM7v #>VM3 #>DM6 (probably semi ideal registration)
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_79_1_LH_PN1_up_d, lwd=6, soma=3, col="red")    # VM7v #>VM3 #>VC3l

plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_6_adPN_up_VM5d, lwd=6, soma=3, col="red")    # VM7v #>VM3 #>DM6 (probably semi ideal registration)


# > see below: plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_49_adPN_up_VM7v, lwd=6, soma=3, col="lightblue") # VM7v #>VC4 #>VC1 #>VM5d                    # VM5d-like extra branch
# > see below: plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v, lwd=6, soma=3, col="purple")    # VM7v # VM2                                 # small VM5d-like extra branch


##[done] 13.1 - [2] VM7d ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = col_glom, alpha = alpha_glom)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M053_RH_PN1_up_d, lwd=6, soma=3, col="red3") #VM7d  #small VM5d-like branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M106_LH_PN1_up_d, lwd=6, soma=3, col="red")  #VM7d  #small VM5d-like branch

##[done] 13.2 - [1] VM7d (& DM6) ----
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M093_LH_PN2_up_d, lwd=6, soma=3, col="blue") #VM7d #DM6 #small VM5d-like branch

## 13.3 > 12.2 - [1] VM7v & VM2 (&DM6) ---
# clear3d()
# plot3d(DsecI, alpha = 0.05)
# plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "RH_VM7v---", color = col_glom, alpha = alpha_glom)
# plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "RH_DM6---", color = col_glom, alpha = alpha)
# plot3d(nl_Dsec_ALPNs_DsecI_allR$`TA_79_5_LH_PN1`, lwd=6, soma=3, col="red") # VM7v # VM2 # DM6

# 13.4 - *** corrected [annotate > 12.2 ?] ----
# plot3d(nl_Dsec_ALPNs_DsecI_allR$`TA_79_1_LH_PN1`, lwd=6, soma=3, col="green") 



## VM5d-like branch - [8] DM6, VM7v/d, VM2 ----
open3d()
clear3d()
plot3d(DsecI, alpha = 0.05)
#nlscan(nl_Dsec_ALPNs_DsecI_allR,lwd=6, soma=3)
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_64_adPN_up_DM6, lwd=6, soma=3, col="orange1")    # DM6                                        # VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_62_adPN_up_DM6, lwd=6, soma=3, col="orange3")    # DM6  # VM7v #>DM2                          # VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_12_adPN_up_DM6, lwd=6, soma=3, col="orange4")    # DM6  # VM7v #>VM2                          # VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_40_adPN_up_VM7d, lwd=6, soma=3, col="red1")      # VM7d                                       # small VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_66_adPN_up_VM7d, lwd=6, soma=3, col="red2")      # VM7d                                       # small VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_57_adPN_up_VM7d, lwd=6, soma=3, col="red3")      # VM7d                                       # small VM5d-like extra branch # dorsal branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_49_adPN_up_VM7v, lwd=6, soma=3, col="lightblue") # VM7v #>VC4 #>VC1 #>VM5d                    # VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_59_adPN_up_VM7v, lwd=6, soma=3, col="purple")    # VM7v # VM2                                 # small VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_13_adPN_up_VM3, lwd=6, soma=3, col="orange")     # VM3  # VC4 #VC1 #>VC3l #>VM7d #>VC3l #>VM2 # VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_25_adPN_up_VM3, lwd=6, soma=3, col="red")        # VM3  # VC4 #VC1 #DM6 #>VC3l #>VM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$Dsec_120_adPN_up_VM2, lwd=6, soma=3, col="cyan")      # VM2  # VM3 #VC4 #>VM7v #>VC1               # VM5d-like extra branch



## 14 - [1] DC1; does not reach LH ----
# # soma ventro-medial
# clear3d()
# plot3d(DsecI, alpha = 0.05)
# plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "RH_DC1", color = "yellow", alpha = alpha)
# plot3d(nl_Dsec_ALPNs_DsecI_allR$`BD_M053_LH_PN2_u_v`, lwd=6, soma=3, col="red") # 

###[done] 15.1 - [2] [VM3 & VC4 & VC1] ----
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = "green", alpha = alpha)

clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA4", color = "green", alpha = alpha)

plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = "green", alpha = alpha) #VC3l

plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_82_6_LH_PN1_up_d, lwd=6, soma=3, col="red")       #VM3 #VC4 #VC1 #DM6 #>VC3l #>VM2
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_117_1_LH_PN1_up_d, lwd=6, soma=3, col="blue")     #VM3 #VC4 #VC1 #VA4 #DM6 #>VC3l


###[done] 15.2 - [2] [VA2, VM7v #>VC1] ----
clear3d()
plot3d(DsecI, alpha = 0.05)

plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA2", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM5d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM4", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M081_LH_PN2_up_d, lwd=6, soma=3, col="lightblue")  #VM7v #>VC4 #>VC1 #>VM5d    #VM5d-like extra branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M154_RH_PN1_up_d, lwd=6, soma=3, col="cyan")       #VM2 #VM3 #VC4 #>VM7v #>VC1 #VM5d-like extra branch


###[done] 15.3 - [1] [VM3 & VC4 & VC1] ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3m", color = "yellow", alpha = alpha) #VC3l
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM7d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VC3l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VM2", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_93_10_LH_PN1_up_d, lwd=6, soma=3, col="orange")    #VM3 #VC4 #VC1 #>VC3l #>VM7d #>VC3l #>VM2 #VM5d-like extra branch


###[done] 16.1 - [4] Dorsal Multi 1.1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1v", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M096_RH_PN1_m_d, lwd=6, soma=3, col="cyan") # fewer branches in AL
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M081_RH_PN1_m_d, lwd=6, soma=3, col="cyan")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M093_LH_PN3_m_d, lwd=6, soma=3, col="cyan") # MB branch > AL
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_97_1_LH_PN1_m_d, lwd=6, soma=3, col="cyan") # fewer branches in LH to dorsal


clear3d()
plot3d(DsecI, alpha = 0.03)
plot3d(nl_Dsec_ALPNs_DsecF_all, col = colfunc_orange, lwd = 3, soma = 3)
nview3d("dorsal", 0)


###[done] 16.2 - [1] Dorsal Multi 1.2 ----
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M085_RH_PN1_m_d, lwd=6, soma=3, col="cyan") #many LH branches

###[done] 16.3 - [2] Dorsal Multi 1.3 ----
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M130_LH_PN2_m_d, lwd=6, soma=3, col="cyan") # dorsal branch into other glom
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M083_LH_PN1_m_d, lwd=6, soma=3, col="cyan") # MB branch > AL

###[done] 16.4 - [1] Dorsal Multi 1.4----
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M035_RH_PN2_m_d, lwd=6, soma=3, col="cyan") # MB branch > AL



##[done] 17.3 - [3] DL2d----
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2v", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = "red", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_79_8_RH_PN1_up_d, lwd=6, soma=3, col="red")      #DL2d #>DL2v
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_74_2_RH_PN1_up_d, lwd=6, soma=3, col="red")      #DL2d #>DL2v
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_72_8_LH_PN1_up_d, lwd=6, soma=3, col="red")      #DL2d #>DL2v

##[done] 17.1 -  [2] DL2v.1----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M124_RH_PN1_up_d, lwd=6, soma=3, col="orange")   #DL2v #>DL2d # additional axonal branch
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M124_LH_PN2_u_d, lwd=6, soma=3, col="orange")    #DL2v #DC3 # additional axonal branch

##[done] 17.2 - [3] DL2v & DC3 ----
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M115_LH_PN1_up_d, lwd=6, soma=3, col="blue")     #DL2v #DC3
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_87_1_RH_PN1_up_d, lwd=6, soma=3, col="blue")     #DL2v #DC3
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M107_LH_PN2_up_d, lwd=6, soma=3, col="blue")     #DL2v #DC3

##[done] 17.4 - [2] DL2v & DC3 ----
open3d()
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M099_RH_PN1_up_d, lwd=6, soma=3, col="green")    #DL2v #DC3
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M095_RH_PN1_up_d, lwd=6, soma=3, col="green")    #DL2v #DC3



##[done] 18.1 - [1] DM1 & DM4 [uni] ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM4", color = "yellow", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_84_4_RH_PN1_u_d, lwd=6, soma=3, col="red")

##[done] 18.2 - [1] DM1 & DP1l & DP1m ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DM1", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = "yellow", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1m", color = "yellow", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$TA_81_1_RH_PN1_up_d, lwd=6, soma=3, col="blue") # DM1 & DP1l & DP1m

##[done] 19 - [7] DA1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA1", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M144_LH_PN2_u_l, lwd=6, soma=3, col="pink")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M179_RH_PN1_u_l, lwd=6, soma=3, col="pink")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M181_LH_PN1_u_l, lwd=6, soma=3, col="pink")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M181_RH_PN1_u_l, lwd=6, soma=3, col="pink")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M183_RH_PN1_u_l, lwd=6, soma=3, col="pink")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M183_LH_PN1_u_l, lwd=6, soma=3, col="pink")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M184_LH_PN1_u_l, lwd=6, soma=3, col="pink")


##[done] 20.1 - [3] VL2a ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = col_glom, alpha = alpha_glom)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M120_LH_PN1_u_d, lwd=6, soma=3, col="red")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M127_LH_PN1_u_d, lwd=6, soma=3, col="blue")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M142_RH_PN1_u_d, lwd=6, soma=3, col="orange")

##[done] 20.2 - [1] VL2a (&DL4) ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL4", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M108_LH_PN1_up_d, lwd=6, soma=3, col="green") # probably VL2a, but also goes to DL4


##[done] 20.3 - [1] DC3+ ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC3", color = "yellow", alpha = alpha) 
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VL2a", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DP1l", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL2d", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$JP_74_6_RH_PN1_u_d, lwd=6, soma=3, col="purple")


##[done] 21.1 - [3] DC1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M128_RH_PN2_up_d, lwd=6, soma=3, col="blue")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M123_LH_PN1_u_d, lwd=6, soma=3, col="green")
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M155_LH_PN1_u_d, lwd=6, soma=3, col="orange")

##[done] 21.2 - [1] DA4m/l & DC1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4m", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M113_RH_PN1_up_d, lwd=6, soma=3, col="red") #DA4m #DA4l #>DC1


##[done] 22 - [3] DC1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "RH_DC1", color = col_glom, alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "RH_D---", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$`JP_85_9_LH_PN1_u_d_DC1`, lwd=6, soma=3, col="blue") # DC1
plot3d(nl_Dsec_ALPNs_DsecI_allR$`TA_93_6_RH_PN1_u_d`, lwd=6, soma=3, col="green") # DC1

##[done] 22.1 - [1] DC1+ (DC1 LH-branching) ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = "green", alpha = alpha_glom)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_D", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL4", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA1d", color = "green", alpha = alpha)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DA4l", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M035_LH_PN2_up_d, lwd=6, soma=3, col="red") # DC1 #>D #>DL4 LH okay, AL branches out, no MB branches


##[done] 23.1 - [2] DC1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DC1", color = col_glom, alpha = alpha_glom)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M111_RH_PN1_u_d, lwd=6, soma=3, col="pink") # DC1
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M157_RH_PN1_u_d, lwd=6, soma=3, col="orange") # DC1


##[done] 23.2 - [1] VA7m ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA7m", color = "green", alpha = alpha)
#plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_VA6", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M055_LH_PN2_u_d, lwd=6, soma=3, col="red")

##[done] 23.3 - [1] DL1 ----
clear3d()
plot3d(DsecI, alpha = 0.05)
plot3d(glom_Dsec_AL_L_DsecI_lowres, materials = "L_DL1", color = "green", alpha = alpha)
plot3d(nl_Dsec_ALPNs_DsecI_allR$BD_M152_RH_PN2_up_d, lwd=6, soma=3, col="blue")

