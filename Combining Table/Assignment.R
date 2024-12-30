library(dslabs)
data(admissions)
dat <- admissions %>% select(-applicants)

dat

tmp <- admissions %>%
  pivot_longer(cols = c(admitted, applicants), names_to = "key", values_to = "value")
tmp