

install.packages("raster")
library(raster)
#HPD
p <- shapefile("C:\\Users\\dmehri\\Documents\\DATA\\311 Analysis\\CommunityBoard\\Community_Districts.shp")
d <- read.csv("C:\\Users\\dmehri\\Documents\\DATA\\311 Analysis\\311 HPD Community Board.csv")

# merge on common variable, here called 'boro_cd'
m <- merge(p, d, by='boro_cd')

# perhaps save as shapefile again
shapefile(m, "C:\\Users\\dmehri\\Documents\\DATA\\311 Analysis\\Community_Districts.shp")


#DOB
p <- shapefile("C:\\Users\\dmehri\\Documents\\DATA\\311 Analysis\\CommunityBoard\\Community_Districts.shp")
d <- read.csv("C:\\Users\\dmehri\\Documents\\DATA\\311 Analysis\\311 DOB Community Board.csv")

# merge on common variable, here called 'boro_cd'
m <- merge(p, d, by='boro_cd')

# perhaps save as shapefile again
shapefile(m, "C:\\Users\\dmehri\\Documents\\DATA\\311 Analysis\\Community_Districts_DOB.shp")
