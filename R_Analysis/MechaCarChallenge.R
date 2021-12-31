library(dplyr)
MechaCar_mpgs <- read.csv(file = 'MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpgs)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpgs))

SuspenCoil <-  read.csv(file = 'Suspension_Coil.csv')

total_summary <- SuspenCoil %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI)) 

total_summary

lot_summary <- SuspenCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
