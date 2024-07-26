#-------------------#
# 2_Datasets_VFB ----
#-------------------#


## Front Matter ----
### Load Libraries ----
source("2_Code/1_Libraries.R")


#---------------------------------------------------------------#


# Summary of Finished Datasets

### Usefull code to sort

## Prune Neurons
HB_PNs_pruned <- nlapply(HB_PNs, prune_strahler)

## Combine Neurons
HBandOur_PNs<- c(HB_PNs_pruned, Our_PNs, recursive = FALSE)




###





# VFB Datasets ----
## VFB ALPNs ----
#### Interesting IDs & Numbers ----
#id: FBbt:00067123 name: adult antennal lobe projection neuron
VFB_inst_Dmel_ALPNs_em_conf <- vc$get_instances("FBbt_00067123", summary=T) # n=1667

#id: FBbt:00007438 name: adult antennal lobe projection neuron adPN
VFB_inst_Dmel_ALPNs_em_conf_adPN <- vc$get_instances("FBbt_00007438", summary=T) # n=584
#id: FBbt:00007437 name: adult antennal lobe projection neuron vPN
VFB_inst_Dmel_ALPNs_em_conf_vPN <- vc$get_instances("FBbt_00007437", summary=T) # n=387
#id: FBbt:00007439 name: adult antennal lobe projection neuron lPN
VFB_inst_Dmel_ALPNs_em_conf_lPN <- vc$get_instances("FBbt_00007439", summary=T) # n=128

#id: FBbt:00007440 name: adult uniglomerular antennal lobe projection neuron
VFB_inst_Dmel_ALPNs_em_conf_uniglomerular <- vc$get_instances("FBbt_00007440", summary=T) # n=863
#id: FBbt:00100368 name: adult uniglomerular antennal lobe projection neuron adPN
VFB_inst_Dmel_ALPNs_em_conf_adPN_uniglomerular <- vc$get_instances("FBbt_00100368", summary=T) # n=529
#id: FBbt:00049783 name: adult uniglomerular antennal lobe projection neuron vPN
VFB_inst_Dmel_ALPNs_em_conf_vPN_uniglomerular <- vc$get_instances("FBbt_00049783", summary=T) # n=65
#id: FBbt:00047312 name: adult uniglomerular antennal lobe projection neuron lPN
VFB_inst_Dmel_ALPNs_em_conf_lPN_uniglomerular <- vc$get_instances("FBbt_00047312", summary=T) # n=105

#id: FBbt:00007441 name: adult multiglomerular antennal lobe projection neuron
VFB_inst_Dmel_ALPNs_em_conf_multiglomerular <- vc$get_instances("FBbt_00007441", summary=T) # n=731
#id: FBbt:00100369 name: adult multiglomerular antennal lobe projection neuron adPN
VFB_inst_Dmel_ALPNs_em_conf_adPN_multiglomerular <- vc$get_instances("FBbt_00100369", summary=T) # n=55
#id: FBbt:00007414 name: adult multiglomerular antennal lobe projection neuron vPN
VFB_inst_Dmel_ALPNs_em_conf_vPN_multiglomerular <- vc$get_instances("FBbt_00007414", summary=T) # n=255
#id: FBbt:00049778 name: adult multiglomerular antennal lobe projection neuron lPN
VFB_inst_Dmel_ALPNs_em_conf_lPN_multiglomerular <- vc$get_instances("FBbt_00049778", summary=T) # n=23

## VFB ALPNs Confocal ----
### VFB - All "confocal" datasets available at VFB ----
VFB_datasets <- read.csv("./1_Data/01_Dataset - other/66_List_all_datasets_aligned_to_JRC2018Unisex.csv", ',',header = T)
VFB_datasets %>% 
  mutate(id2 = str_extract(id, "^(.*)----VFB.*", group = T)) %>%
  filter(technique == "Confocal") %>% 
  pull(id2) -> VFB_datasets_conf

VFB_datasets # 66 datasets total (2023)
VFB_datasets_conf # 41 confocal datasets (2023)

vc = VfbConnect()


### VFB - All Neurons from confocal datasets ----
for (i in VFB_datasets_conf){
  if(i== "Chiang2010"){ 
    dataset = vc$get_instances_by_dataset(dataset = i, summary = T) %>% vc_df()
  }
  else{
    VFB_dataset_next = vc$get_instances_by_dataset(dataset = i, summary = T) %>% vc_df()
    VFB_neurons_conf <- data_merge(dataset, dataset_next, join = "full")
  }
}

VFB_neurons_conf # 16'127 confocal neurons (2023)







### VFB - All Neurons with FBbt_00067123: "adult antennal lobe projection neuron" (ALPN) ----
vc=VfbConnect()
VFB_inst_Dmel_ALPNs_em_conf <- vc$get_instances("FBbt_00067123", summary=F)
VFB_inst_Dmel_ALPNs_em_conf_sum <- vc$get_instances("FBbt_00067123", summary=T)


### VFB - SWCs of FBbt_00067123 - Download and save all available skeletons ----
VFB_Dmel_ALPNs_em_conf_swc <- read.neurons.vfb("FBbt_00067123", template = "JRC2018Unisex") # n=1657
#write.neurons(VFB_Dmel_ALPNs_em_conf_swc,"./01_PN Dataset - other/01_Dmel_ALPN_em&conf_VFB_FBbt_00067123_n1657")

VFB_Dmel_ALPNs_em_conf_swc <- read.neurons("./1_Data/01_PN Dataset - other/01_Dmel_ALPN_em&conf_VFB_FBbt_00067123_n1657")
# except 2 neurons that have broken traces:
nlscan(VFB_Dmel_ALPNs_em_conf_swc)
for (i in seq_along(VFB_Dmel_ALPNs_em_conf_swc)){
  if (VFB_Dmel_ALPNs_em_conf_swc[[i]]$NeuronName == "Uniglomerular_mALT_DL3_lPN_R2__FAFB_177706_"){
    print(i)
  }
}
# [742] Uniglomerular_mALT_DL3_lPN_R2__FAFB_177706_
# [875] Uniglomerular_mALT_VM5v_adPN_R2__FAFB_23512_
VFB_Dmel_ALPNs_em_conf_swc <- VFB_Dmel_ALPNs_em_conf_swc[-875]
VFB_Dmel_ALPNs_em_conf_swc <- VFB_Dmel_ALPNs_em_conf_swc[-742]
#write.neurons(VFB_Dmel_ALPNs_em_conf_swc,"./1_Data/01_PN Dataset - other/01_Dmel_ALPN_em&conf_VFB_FBbt_00067123_n1655")

VFB_Dmel_ALPNs_em_conf_swc # n=1655 em/confocal ALPNs


### Curate ALPN Neuronlist - Replace "_" with "-" in the Neuron name (VFB uses "-") ----
VFB_Dmel_ALPNs_em_conf_swc$label <- gsub('_', '-', dataset$label)

for (i in seq_along(VFB_Dmel_ALPNs_em_conf_swc)){
  names(VFB_Dmel_ALPNs_em_conf_swc)[[i]] <- gsub('_', '-', names(VFB_Dmel_ALPNs_em_conf_swc)[[i]])
}


### Get labels to filter with ----
VFB_neurons_conf_labels <- VFB_neurons_conf$label


### Filter ----
VFB_ALPNs_conf <- VFB_Dmel_ALPNs_em_conf_swc[names(VFB_Dmel_ALPNs_em_conf_swc) %in% VFB_neurons_conf_labels]
#write.neurons(VFB_ALPNs_conf,"./01_PN Dataset - other/01.1_Dmel_ALPN_conf_VFB_FBbt_00067123_n806")

VFB_Dmel_ALPNs_conf_swc <- VFB_ALPNs_conf # n=806

### Check Traces ----
clear3d()
plot3d(VFB_Dmel_ALPNs_conf_swc, lwd= 3, col= colfunc_blue)
plot3d(JRC2018U, alpha = 1)
nview3d("frontal",0)


### Rename 1 - VFB_Dmel_ALPNs_conf_swc (n=806) ----
export_VFB_Dmel_ALPNs_conf_renamed_swc <- file.path("./1_Data/01_PN Dataset - other/01.2_Dmel_ALPN_conf_VFB_FBbt_00067123_renamed_n806")

for (i in VFB_Dmel_ALPNs_conf_swc){
  neuron_name <- paste(i$NeuronName, sep = "")
  
  for (j in VFB_inst_Dmel_ALPNs_em_conf){
    # meta_data <- paste(j$term$core$label, sep = "")
    meta_data <- paste(j$term$core$label, sep = "")
    
    #print(j)
    #print(meta_data)
    if (neuron_name == meta_data){
      k=1
      while (k <= length(j$parents)) {
        neuron_glomerulus <- j$parents[[k]]$symbol
        if (grepl("PN", neuron_glomerulus)){
          break
        }
        else {
          k <- k + 1
        }
      }
      if (!grepl("PN", neuron_glomerulus)){
        neuron_glomerulus <- "NA"
      }
      
      print(neuron_glomerulus)    
      neuron_VFBid <- j$term$core$short_form
      neuron_label <- j$term$core$label
      
      new_file_name <- paste(neuron_VFBid, neuron_label, neuron_glomerulus, sep = "_")
      export_file <- paste(export_renamed_VFB_Dmel_ALPNs_conf_swc, new_file_name, sep = "")
      write.neuron(i, file = export_file, format="swc")
    }
  }
}

VFB_Dmel_ALPNs_conf_renamed_swc <- read.neurons("./1_Data/01_PN Dataset - other/01.2_Dmel_ALPN_conf_VFB_FBbt_00067123_renamed_n806/")
VFB_Dmel_ALPNs_conf_renamed_swc # n=806


### Annotated Glomerulus Only ----
VFB_Dmel_ALPNs_conf_renamed_swc <- read.neurons("./1_Data/01_PN Dataset - other/01.2_Dmel_ALPN_conf_VFB_FBbt_00067123_renamed_n806")
export_VFB_Dmel_ALPNs_conf_annotated_swc <- file.path("./1_Data/01_PN Dataset - other/01.3_Dmel_ALPN_conf_VFB_FBbt_00067123_annotated_n289")

for (i in VFB_Dmel_ALPNs_conf_renamed_swc){
  if (grepl("PN", i$NeuronName)){
    neuron_name <- i$NeuronName
    print(neuron_name)
    export_file <- paste(export_VFB_Dmel_ALPNs_conf_annotated_swc, neuron_name, sep = "")
    write.neuron(i, file = export_file, format="swc")
  }
  else{
    print("NA")
  }
}

VFB_Dmel_ALPNs_conf_annotated_swc <- read.neurons("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_annotated_n288")

VFB_Dmel_ALPNs_conf_annotated_swc # n=288



### Mirror to right hemisphere ----

plot3d(JRC2018U)
VFB_Dmel_ALPNs_conf_annotated_LH <- nlscan(VFB_Dmel_ALPNs_conf_annotated_swc)
# results in 137 LH neurons


### Make LH neuronlist ----

VFB_Dmel_ALPNs_conf_annotated_LH_swc <- VFB_Dmel_ALPNs_conf_annotated_swc[names(VFB_Dmel_ALPNs_conf_annotated_swc) %in% VFB_Dmel_ALPNs_conf_annotated_LH]

VFB_Dmel_ALPNs_conf_names_RH <- setdiff(names(VFB_Dmel_ALPNs_conf_annotated_swc), VFB_Dmel_ALPNs_conf_annotated_LH)
VFB_Dmel_ALPNs_conf_annotated_RH_swc <- VFB_Dmel_ALPNs_conf_annotated_swc[names(VFB_Dmel_ALPNs_conf_annotated_swc) %in% VFB_Dmel_ALPNs_conf_names_RH]

clear3d()
plot3d(VFB_Dmel_ALPNs_conf_annotated_RH_swc, col = "red")
plot3d(VFB_Dmel_ALPNs_conf_annotated_LH_swc, col = "blue")
plot3d(JRC2018U, alpha = 1)
# PN traces are strongly miss registered with the JRC2018U template

VFB_Dmel_ALPNs_conf_annotated_RH_IS2_swc <- xform_brain(VFB_Dmel_ALPNs_conf_annotated_RH_swc, sample = JRC2018U, reference = IS2)
VFB_Dmel_ALPNs_conf_annotated_LH_IS2_swc <- xform_brain(VFB_Dmel_ALPNs_conf_annotated_LH_swc, sample = JRC2018U, reference = IS2)
VFB_Dmel_ALPNs_conf_annotated_LH_IS2_mir_swc <- mirror_brain(uni_PNs_conf_swc_LH_IS2, IS2, .progress='text')

clear3d()
plot3d(VFB_Dmel_ALPNs_conf_annotated_RH_IS2_swc, col = "red")
plot3d(VFB_Dmel_ALPNs_conf_annotated_LH_IS2_mir_swc, col = "blue")
plot3d(IS2, alpha = 1)

VFB_Dmel_ALPNs_conf_annotated_RH_IS2_all_swc <- c(VFB_Dmel_ALPNs_conf_annotated_RH_IS2_swc, VFB_Dmel_ALPNs_conf_annotated_LH_IS2_mir_swc, recursive = FALSE)

uni_PNs_conf_swc_RH_all_renamed <- 
write.neurons(VFB_Dmel_ALPNs_conf_annotated_RH_IS2_all_swc,"./1_Data/6_Dataset_other/01.5_Dmel_ALPN_conf_VFB_FBbt_00067123_annotated_RH_IS2_n288")



## VFB ALPNs Confocal uniglomerular ----
## VFB ALPNs Confocal multiglomerular ----

## VFB ALPNs Confocal Not annotated (NA) ----
### Whole Dataset - Dmel - Conf - annotated olfactory NA-PNs ----
nl_WholeDataset_Dmel_Conf_NA <- nat::read.neurons("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_n518/")
#WholeDataset_DsecF_path <- c("./1_Data/5_Dataset_our/03_PN_Traces_Dsec_reg_all/")

nl_WholeDataset_Dmel_Conf_NA_IS2 <- xform_brain(nl_WholeDataset_Dmel_Conf_NA, sample = JRC2018U, reference = IS2)

### Whole Dataset - Dmel - Conf - annotated olfactory NA-PNs - adPNs & lPNs----

# Manually select adPNs (soma position = antereo dorsal of antennal lobe; selected based on morphology, trace roots seem to be off most of the time)
# Source See above
WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs <- nlscan(nl_WholeDataset_Dmel_Conf_NA_IS2, lwd=3,soma=3)
WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_swc <- nl_WholeDataset_Dmel_Conf_NA_IS2[names(nl_WholeDataset_Dmel_Conf_NA_IS2) %in% WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs]
write.neurons(WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_swc,"./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_n282")

# Reach LH
#nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach <- nlscan(WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_swc, lwd=3,soma=3)
#nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach <- nl_WholeDataset_Dmel_Conf_NA_IS2[names(nl_WholeDataset_Dmel_Conf_NA_IS2) %in% nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach]
#write.neurons(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach,"./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_n178")

# Left & Right 
nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach <- read.neurons("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_n178/")
WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_L <- nlscan(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach, lwd=3,soma=3)
nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_L <- nl_WholeDataset_Dmel_Conf_NA_IS2[names(nl_WholeDataset_Dmel_Conf_NA_IS2) %in% WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_L]
nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_LtoR <- mirror_brain(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_L, IS2, .progress='text')
nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_R <- nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach[names(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach) %in% nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_L]
`%notin%` <- Negate(`%in%`)
nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_R <- nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach[names(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach) %notin% WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_L]
nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_allR <- c(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_R, nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_LtoR)
#write.neurons(nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_allR,"./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_allR_n178")

nl_WholeDataset_Dmel_Conf_NA_IS2_adPNs_lPNs_LHreach_allR <- read.neurons("./1_Data/6_Dataset_other/01.4_Dmel_ALPN_conf_VFB_FBbt_00067123_NA_adPNs_lPNs_v2_LHreach_n178/")






## VFB ALPNs EM ----


clear3d()
plot3d(JRC2018U, alpha = 0.1)

VFB_Dmel_ALPNs_em_LH <- read.neurons("./1_Data/6_Dataset_other/01.7_Dmel_ALPN_em_VFB_FBbt_00067123_LH_n164")
#plot3d(VFB_Dmel_ALPNs_em_LH)

VFB_Dmel_ALPNs_em_RH <- read.neurons("./1_Data/6_Dataset_other/01.7_Dmel_ALPN_em_VFB_FBbt_00067123_RH_n636")
#plot3d(VFB_Dmel_ALPNs_em_RH)

#VFB_Dmel_ALPNs_em_Ipsi <- read.neurons("./1_Data/6_Dataset_other/01.7_Dmel_ALPN_em_VFB_FBbt_00067123_ipsi&bi_n46")
#plot3d(VFB_Dmel_ALPNs_em_Ipsi)

# could not mirror in JRC2018U, so I bridged to IS2 and mirrored there
VFB_Dmel_ALPNs_em_LH_IS2 <- xform_brain(VFB_Dmel_ALPNs_em_LH, sample = JRC2018U, reference = IS2)
VFB_Dmel_ALPNs_em_LH_IS2_mir <- mirror_brain(VFB_Dmel_ALPNs_em_LH_IS2, IS2, .progress='text')
VFB_Dmel_ALPNs_em_RH_IS2 <- xform_brain(VFB_Dmel_ALPNs_em_RH, sample = JRC2018U, reference = IS2)

VFB_Dmel_ALPNs_em_RH_all_IS2 <- c(VFB_Dmel_ALPNs_em_RH_IS2,VFB_Dmel_ALPNs_em_LH_IS2_mir)
write.neurons(VFB_Dmel_ALPNs_em_RH_all_IS2,"./1_Data/6_Dataset_other/01.8_Dmel_ALPN_em_VFB_FBbt_00067123_RH_all_IS2_n800")

VFB_Dmel_ALPNs_em_RH_all_IS2 # n = 800

clear3d()
plot3d(IS2, alpha = 0.1)
plot3d(VFB_Dmel_ALPNs_em_RH_all_IS2)





## VFB ALPNs EM uniglomerular ----
## VFB ALPNs EM multiglomerular ----



# Hemibrain ? ----

## Prune Neurons
hemi_reg_IS2 <- xform_brain(hemi_uni*8/1000, reference = "IS2", sample="JRCFIB2018F", via=JRC2018F)
hemi_reg_Dsec <- xform_brain(hemi_reg_IS2, reference = "DsecI", sample = "IS2")
hemi_uni_pruned <- nlapply(hemi_reg_Dsec, prune_strahler)





# Brain Regions ----
## VFB_00102164 - Superior Intermediate Protocerebrum on JRC2018Unisex adult brain ----


## VFB_00102162 - Superior Lateral Protocerebrum on JRC2018Unisex adult brain ----
br_SLP_JRC2018U <- readOBJ("./1_Data/4_Brain_Area_Annotations/07_VFB_Brain_Areas/VFB_00102162_SLP_on_JRC2018Unisex_adult_brain.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

br_SLP_DsecI <- xform_brain(br_SLP_JRC2018U, reference = "DsecI", sample = "JRC2018U")
br_SLP_IS2 <- xform_brain(br_SLP_JRC2018U, reference = "IS2", sample = "JRC2018U")
#open3d()
plot3d(br_SLP_DsecI, col = col_glom_2, alpha = 0.04)
plot3d(DsecI, alpha = 0.1)


## VFB_00102176 - Superior Clamp ----
br_SCL_JRC2018U <- readOBJ("./1_Data/4_Brain_Area_Annotations/07_VFB_Brain_Areas/VFB_00102176_SCL_on_JRC2018Unisex_adult_brain.obj") %>%
  xyzmatrix() %>%
  ashape3d(alpha = 10, pert = TRUE) %>%
  as.mesh3d() %>%
  as.hxsurf()

br_SCL_DsecI <- xform_brain(br_SCL_JRC2018U, reference = "DsecI", sample = "JRC2018U")
br_SCL_IS2 <- xform_brain(br_SCL_JRC2018U, reference = "IS2", sample = "JRC2018U")















