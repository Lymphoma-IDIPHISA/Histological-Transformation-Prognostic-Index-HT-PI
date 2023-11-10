# Histological Transformation Prognostic Index (HT-PI)
Time to transformation was defined as the was calculated from the date of FL diagnosis to the date of HT
or last follow-up.
We used the Cox proportional hazards (PH) model for the univariate and multivariate survival analyses.
We did not consider the competing risks approach due to the low number of deaths in the non-
transformed group; the external validation process in the competing risk setting is more complex to apply
with the most used statistical approaches.
We developed three models: 1) firstly, we selected those genes with more than four mutations and
performed one Cox univariable regression model for each gene to select those genes with a p-value&lt;0.10.
After that, a multivariable Cox regression model with a backward strategy was performed (threshold of
0.05 in the p-value to retain the gene variable in the final model), so we obtained the “genetic” final model.
2) In parallel with this, we executed the “clinical” model including FLIPI through a Cox PH model. *HIST1H1E* and *B2M* were statistically associated with a higher risk of HT, and mutations in *TNFRSF14* and *KMT2D* with a lower risk of HT and so were included into the predictive model. Several clinico-pathological factors have been associated with a higher risk of HT, such as high-risk FLIPI, so was included into the HT predictive model.

The probability of HT at 2 and 5 years for an individual patient can be calculated using the following
equations, derived from the Cox proportional hazards model:

(HT at 2 years) = 1 − 0.9899 exp (Prognostic Index)
(HT at 5 years) = 1 − 0.9603 exp (Prognostic Index)

where Prognostic Index = 1.608352 * FLIPI (high-risk) + 1.301285 * KMT2D (not mutated) + 1.546078 *
TNFRSF14 (not mutated) + 0.4126905 * B2M (mutated) + 2.070181 * HIST1H1E (mutated).
