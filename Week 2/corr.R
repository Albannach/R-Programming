corr <- function(directory, threshold = 0) {
    
    monitorData <- function(id, directory) {
        
        fileName <- formatC(id, width=3, format="d", flag="0")
        filePath <- paste(directory, '/', fileName, '.csv', sep='')
        
        result = read.csv(filePath)
    }
    
    result <- numeric()
    
    for (id in subset(complete(directory), nobs > threshold)$id) {
        data <- monitorData(id, directory)
        completeData <- subset(data, !is.na(sulfate) & !is.na(nitrate))
        result <- c(result, cor(completeData$sulfate, completeData$nitrate))
    }

    result
}