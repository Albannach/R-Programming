source("pollutantmean.R")
pollutantmean("specdata", "sulfate", 1:10)

## [1] 4.064

pollutantmean("specdata", "nitrate", 70:72)

## [1] 1.706

pollutantmean("specdata", "nitrate", 23)

## [1] 1.281