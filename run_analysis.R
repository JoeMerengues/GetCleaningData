#Ponemos un nombre de como se llama nuestro dataset cuando sea descargago 
filename <- "get_dataset.zip"

#Comprobamos que exista el file si no existe, procedemos a descargar 
if ( !file.exists(filename) ) {
	url  <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
	download.file(url, filename, method="curl")
}
#Se comprueba que   
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}