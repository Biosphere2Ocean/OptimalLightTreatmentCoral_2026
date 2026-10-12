library(tidyverse)
library(readxl)
library(openxlsx)
library(rstatix)
library(nlme)

# - Data were then analysed separately for each genet using linear mixed effect models to account for repeated measures using the R package nlme (Fv/Fm ~Treatment × Time + (1|Replicate); sediment % cover ~Treatment × Time × Day + (1|Replicate)), and fixed effects were compared using ANOVA. Post hoc pairwise comparisons were then performed using least square means with Tukey adjustment (lsmeans).

# import data
df_rates <- read_csv("InputData/Clean/CoralData/CoralColorWeightData_Rates.csv") %>%
  # get rid of trial PBR 4 due to light timer malfunction keeping lights on continuously for 10 days
  filter(Trial != "PBR 4") %>%
  # add Colony 
  mutate(colony_id = substring(frag_id, first = 6, last = 6), .after = frag_id)

# y 
y <- df_rates[, c("weight_g_weekly", "surface_area_cm3_weekly", "rgb_weekly")]


# adonis2(y ~ df_rates$Species + df_rates$Treatment, method = "euclidean", strata = df_rates$colony_id)
# (Fv/Fm ~Treatment × Time + (1|Replicate)
mod <- nlme(df_rates$weight_g_weekly ~ df_rates$Treatment * df_rates$Species * df_rates$Trial + (1|df_rates$colony_id)) 
# errors bc idk what im doing :///////