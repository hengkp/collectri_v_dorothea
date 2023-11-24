

setwd("/Users/heng/Dropbox/Macbook Pro/PhD/GRN Intern project/Codes")

library(OmnipathR)
library(decoupleR)
library(dplyr)



collectri_new <- collectri(extra_attrs = TRUE) %>% extra_attrs_to_cols(sign_decision = CollecTRI_sign_decision)

# Convert list columns to string
# Replace 'your_list_column' with the actual name of your list column
collectri_new2 <- collectri_new %>%
  mutate(across(where(is.list), ~sapply(., toString)))

# Then save the data frame
write.csv(collectri_new2, "collectri_new.csv", row.names = FALSE)


