

library("DT")
library("readr")
library(htmlwidgets)

carto_logement <- read_csv("data/Cartographie_des_donnees_logement_-_2015-01-26.csv")


htmltable <- datatable(carto_logement, 
                       filter = "top", 
                       extensions = 'ColVis', 
                       options = list(dom = 'C<"clear">lfrtip')
                       )

# Export HTML
saveWidget(htmltable, 
           file = "~/Documents/projets/rapport_logement/output/table.html", 
           selfcontained = TRUE)

