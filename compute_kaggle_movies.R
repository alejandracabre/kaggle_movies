##dowload data set

#Create data folder
if(!file.exists('data'))
{
  dir.create('data')
}
#write dataset to disk
dataset_url <
  
#read data into memory
movies_metadata <- read.csv('data/movies_metadata.csv',
                                stringsAsFactors= FALSE)

#Explore dataset
names(movies_metadata)
str(movies_metadata)
head(movies_metadata$budget)
tail(movies_metadata$budget)

#modify columns types
movies_metadata$budget_numeric <- as.numeric(movies_metadata$budget)
summary(movies_metadata$budget_numeric)