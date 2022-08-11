#!/bin/R
# Set to 0, instead of NA, in those positions in which no information available of the mutational status or FLIPI information.

DB = read.table("/direction/Example.txt", sep = "\t", header = T)

DB$FLIPIcoef = c(0)
DB$TP53coef = c(0)
DB$NOTCH2coef = c(0)
DB$HIST1H1Ecoef = c(0)
DB$TNFRSF14coef = c(0)

x = which(DB$NOTCH2 > 0); DB$NOTCH2coef[x] = 3.179
x = which(DB$HIST1H1E > 0); DB$HIST1H1Ecoef[x] = 3.179
x = which(DB$TP53 > 0); DB$TP53coef[x] = 3.179
x = which(DB$TNFRSF14 > 0); DB$TNFRSF14coef[x] = -1.830
x = which(DB$FLIPI > 0); DB$FLIPIcoef[x] = 2.471

DB$HT_model_Coef = c(0)
DB$HT_model_Group = c(0)
colnames(DB)
for (l in 1:nrow(DB)) {
  DB$HT_model_Coef[l] = sum(DB[l,c(7,8,9,10,11)])
  if (DB$HT_model_Coef[l] < 0) {DB$HT_model_Group[l] = "Low-risk"}
  if (DB$HT_model_Coef[l] >= 2.4) {DB$HT_model_Group[l] = "High-risk"}
  if (DB$HT_model_Coef[l] >= 0 && DB$HT_model_Coef[l] < 2.4) {DB$HT_model_Group[l] = "Intermediate-risk"}
}

DB = write.table(DB, "/direction/Output_HT_prediction.txt", sep = "\t", row.names = F)




