monitorData <- function(id, directory) {
    
    fileName <- formatC(id, width=3, format="d", flag="0")
    filePath <- paste(directory, '/', fileName, '.csv', sep='')
    
    result = read.csv(filePath)
}