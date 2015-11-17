

library("DT")
library("readr")
library(htmlwidgets)

df <- read_csv("data/Cartographie_des_donnees_logement_-_2015-01-26.csv")

htmltable <- datatable(df, filter = "top", extensions = 'ColVis', options = list(dom = 'C<"clear">lfrtip'))



saveWidget(htmltable, 
           file = "~/Documents/projets/rapport_logement/output/table.html", 
           selfcontained = TRUE)



saveWidget()