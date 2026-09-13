# Рисуем древесно-разветвленную диаграмму через библиотеку treemap
library(treemap)
 
# шаг-1. Вначале строим датасет / Build Dataset
group=c(rep("artificial intelligence",4),rep("agriculture",10),rep("GIS & remote sensing",2))
subgroup=paste(c("Machine Learning", "Deep Learning", "Convolutional Neural Networks", "Predictive Analysis",
		"Farming \nCrops", "Soil", "Harvest", "Irrigation", "Water", "Topography", "Terraces", "Pesticides", "Climate", "Precision Agriculture",
		"Satellite \nImages", "Cartography \nMapping \nGeospatial \nAnalysis"))
value=c(22,14,18,7,12,10,6,4,5,9,10,3,2,7,14,17)
data=data.frame(group,subgroup,value)
 
# шаг-2. Теперь рисуем разветвленную диаграмму // treemap
treemap(data,
    title = "AI and ML Impact Factors",
	index=c("group","subgroup"),
	palette="Pastel2",
#	palette="Accent", palette="", Set2 Set1 Paired Spectral Pastel1
	vSize="value",
	type="index",
    fontsize.labels=c(18,12),
# size of labels per level of aggregation: size for group, size for subgroup, sub-subgroups...
    fontcolor.labels=c("white","gray40"),
    fontface.labels=c(2,1),
# Fonts: 1,2,3,4 for normal, bold, italic, bold-italic
    bg.labels=c("transparent"),
# Background color of labels
    align.labels=list(
        c("center", "center"),
        c("center", "center")
        ),
    overlap.labels=0.9,
    inflate.labels=F,
# If true, labels are bigger when rectangle is bigger.
	border.col=c("gray48","gray30"),
# Color of borders of groups, of subgroups
    border.lwds=c(4,1)
)
