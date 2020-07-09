load("test.Rdata")



# error
k %>% 
    group_by(BZT3) %>% # the strata
    nest() %>% 
    mutate(sampl = map(data, st_sample, 5))  # taking sample

# works
s %>%
    group_by(BZT3) %>% # the strata
    nest() %>% 
    mutate(sampl = map(data, st_sample, 5)) # taking sample
