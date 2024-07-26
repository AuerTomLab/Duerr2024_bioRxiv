<img src="General/Logo_Github_Dsec_Dataset_Overview_ALPNs_n133_anterior.png" align="right" height="200" /> 

# Dürr et al. 2024

## Authors
Benedikt R. Dürr<sup>1,2</sup>, Enrico Bertolini<sup>1,3#</sup> , Suguru Takagi<sup>1#</sup>, Justine Pascual<sup>1,3#</sup>, Liliane Abuin<sup>1</sup>, Giovanna Lucarelli<sup>1</sup>, Richard Benton<sup>1</sup>, and Thomas O. Auer<sup>1,3</sup>*

1. Center for Integrative Genomics Faculty of Biology and Medicine, University of Lausanne CH-1015 Lausanne Switzerland
2. Current address: Centre for Organismal Studies, Heidelberg University, DE-69120 Heidelberg Germany
3. Department of Biology, University of Fribourg, CH-1700 Fribourg Switzerland

    \# equal contribution 

    \* Corresponding author: Thomas O. Auer E-mail: thomas.auer@unifr.ch

## Dataset
- You can find .swc files of the 133 Antennal Lobe Projection Neurons used in this study in the "5_Duerr2024_Dataset_Dsec_ALPN_DsecI_SWCs" folder. These files are registered to the DsecI reference space.
- In the "1_Data" folder you can find more detailed files which were used in this study


## Code Description

### 1 - Libraries & Installation
- Collection of all necessary installations to be done before using the scipts 
- Loads locations and necessary data into the work environment
- Load the libraries installed here in each Figure script


### 2 - Datasets Ours
- Here we apply CMTK Registration-files to each PN trace in our Dsec dataset 
- We also bridge the traces between brain reference spaces and mirror them as necessary
- We also relabel and export traces into folders which are used for generating Figure panels

### 2 - Datasets Others
- Here we query, sort and prepare datasets relevant for our analysis

### 3 - Glomeruli
- Here we demonstrated an workflow to use Glomeruli Annotations created with the [Microscopy Image Browser](http://mib.helsinki.fi) instead of AMIRA 

### 4 - ALPN Annotation
- Here we manually annotated neurons after using NBLAST

### Figures
- Here we combined all necessary code to reproduce R-based figure panels shown in the manuscript of Dürr et al. 2024
- We commented important sections to support readers
