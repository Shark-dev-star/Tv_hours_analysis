if(!require(pacman)) install.packages("pacman")
pacman::p_load(tidyverse,
               here)

tv_hours_tab <- gss_cat %>%
  filter(age < 30) %>%
  group_by(marital) %>% 
  summarize(mean_tv_hours = mean(tvhours, na.rm = T))
tv_hours_analysis

write.csv(tv_hours_tab, here("tv_hours_spent.csv"))


