if(!require(pacman)) install.packages("pacman")
pacman::p_load(tidyverse,
               here)

tv_hours_tabulation <- gss_cat %>%
  filter(age < 30) %>%
  group_by(marital) %>% 
  summarize(mean_tv_hours = mean(tvhours, na.rm = T))
tv_hours_tabulation

write.csv(tv_hours_tabulation, here("tv_hours_spent.csv"))


