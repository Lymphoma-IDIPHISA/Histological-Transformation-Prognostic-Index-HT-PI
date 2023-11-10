#!/bin/R
# Set to 0, instead of NA, in those positions in which no information available of the mutational status or FLIPI information.

DB = read.table("/file_folder/Example.txt", sep = "\t", header = T)

DB$FLIPIcoef = c(0)
DB$B2Mcoef = c(0)
DB$KMT2Dcoef = c(0)
DB$HIST1H1Ecoef = c(0)
DB$TNFRSF14coef = c(0)

x = which(DB$KMT2D == 0); DB$KMT2Dcoef[x] = 1.301285
x = which(DB$HIST1H1E > 0); DB$HIST1H1Ecoef[x] = 2.070181
x = which(DB$B2M > 0); DB$B2Mcoef[x] = 0.4126905
x = which(DB$TNFRSF14 == 0); DB$TNFRSF14coef[x] = 1.546078
x = which(DB$FLIPI > 0); DB$FLIPIcoef[x] = 1.608352

DB$HT_model_Coef = c(0)
DB$HT_prob_2years = c(0)
DB$HT_prob_5years = c(0)
column_coef = grep(colnames(DB), pattern = "coef")

for (l in 1:nrow(DB)) {
DB$HT_model_Coef[l] = sum(DB[l,c(column_coef)])
DB$HT_prob_2years[l] = 1-(0.9899^(exp(DB$HT_model_Coef[l])))
DB$HT_prob_5years[l] = 1-(0.9603^(exp(DB$HT_model_Coef[l])))
}

DB = write.table(DB, "/file_folder/Output_HT_prediction.txt", sep = "\t", row.names = F)


