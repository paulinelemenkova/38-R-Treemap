# ============================================================================
# Hierarchical treemap of Mariana Trench geomorphic impact factors (R, treemap).
# Companion to the author's R statistical-graphics analysis of the trench:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
#   figshare: https://doi.org/10.6084/m9.figshare.9762860
#   HAL: https://hal.science/hal-02277500  Zenodo: https://zenodo.org/record/3385005
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# Рисуем древесно-разветвленную диаграмму через библиотеку treemap
library(treemap)
 
# шаг-1. Вначале строим датасет / Build Dataset
group=c(rep("tectonics",4),rep("bathymetry",10),rep("geology",2))
subgroup=paste(c("Mariana Plate", "Philippine Plate", "Pacific Plate", "Caroline Plate", 
		"Depth \n(absolute maximum)", "Slope angle", "Aspect degree", "Depth (Mean)", "Depth (Median)", "Aspect class", "Steepness class", "Depth \n(1 quart.)", "Depth \n(3 quart.)", "tg angle", 
		"sedimental \nthickness", "igneous \nvolcanic \nspots"))
value=c(22,14,18,7,12,10,6,4,5,9,10,3,2,7,14,17)
data=data.frame(group,subgroup,value)
 
# шаг-2. Теперь рисуем разветвленную диаграмму // treemap
treemap(data,
	title = "Mariana Trench Impact Factors",
	index=c("group","subgroup"),
#	palette="Set2"
#	palette="Set1",
	palette="Accent",
	vSize="value",
	type="index" ,
    fontsize.labels=c(18,12),  # size of labels per level of aggregation: size for group, size for subgroup, sub-subgroups...
    fontcolor.labels=c("white","gray40"),    
    fontface.labels=c(2,1),                  # Fonts: 1,2,3,4 for normal, bold, italic, bold-italic
    bg.labels=c("transparent"),              # Background color of labels
    align.labels=list(
        c("center", "center"), 
        c("center", "center")
        ),                                   
    overlap.labels=0.9,                      
    inflate.labels=F,                        # If true, labels are bigger when rectangle is bigger.
	border.col=c("gray48","gray30"),             # Color of borders of groups, of subgroups
    border.lwds=c(4,1) 
)