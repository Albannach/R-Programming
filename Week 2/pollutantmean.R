pollutantmean <- function (directory, pollutant, monitorIds = 1:332) {
    
    monitorData <- function(id, directory) {
        
        fileName <- formatC(id, width=3, format="d", flag="0")
        filePath <- paste(directory, '/', fileName, '.csv', sep='')
        
        result = read.csv(filePath)
    }
    
    for (id in monitorIds) {
        if (!exists("readings")) readings = monitorData(id, directory) 
        else readings = rbind(readings, monitorData(id, directory))
    }

    mean(readings[[pollutant]][!is.na(readings[[pollutant]])])
}