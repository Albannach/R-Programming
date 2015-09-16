complete <- function(directory, monitorIds = 1:332) {
    
    monitorData <- function(id, directory) {
        
        fileName <- formatC(id, width=3, format="d", flag="0")
        filePath <- paste(directory, '/', fileName, '.csv', sep='')
        
        result = read.csv(filePath)
    }
    
    completedObservations <- data.frame(id=integer(0), nobs=integer(0))
    
    for (id in monitorIds) {
        completed <- complete.cases(monitorData(id, directory))
        newRow <- c(id, length(completed[completed == TRUE]))
        completedObservations[nrow(completedObservations) + 1, ] <- newRow
    }
    
    completedObservations
}