

library("DT")
library("readr")
library(htmlwidgets)
library("dplyr")
library(magrittr)

carto_logement <- read_csv("data/Cartographie_des_donnees_logement_-_2015-01-26.csv")
names(carto_logement) <- c("Data", "Gestionnaire", "Description", 
               "Origine", "Accès", "Coût", "OpenData", 
               "Granularité", "Fréquence", "Qualité", 
               "Remarques", "Plus")


carto_logement %>% names()
carto_logement %>% str()

htmltable <- carto_logement %>% datatable(. , 
                       caption = "Cartographie des données logement", 
                       extensions = 'ColVis', 
                       options = list(
                         autoWidth = FALSE,
                         pageLength = 5,
                         dom = 'C<"clear">lfrtip'), 
                       rownames = TRUE, 
                       colnames = c("Numero" = 1)
                       )
htmltable

# Export HTML
saveWidget(htmltable, 
           file = "~/Documents/projets/rapport_logement/output/table.html", 
           selfcontained = TRUE)

