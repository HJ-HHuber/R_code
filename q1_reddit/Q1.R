#read the given data from csv
df<-read.csv("data.csv", sep=";", dec=".");

# create a list with sublists for each column and delete empty entries
my_list_with_sublists = lapply(df, function(x) x[!is.na(x)])

# there you go! Here is your list with lists 
# kind regards HJH


# before i got this short solution, i found the long one... 

#read the given data from csv
df<-read.csv("data.csv", sep=";", dec=".");

# now we create a list for each column 
  l1 = list(subset(df, select = c(Item1)))
  l2 = list(subset(df, select = c(Item2)))
  l3 = list(subset(df, select = c(Item3)))

# now we filter the empty rows in each list (former column)
  l1 = lapply(l1, function(x) x[!is.na(x)])
  l2 = lapply(l2, function(x) x[!is.na(x)])
  l3 = lapply(l3, function(x) x[!is.na(x)])
  
# now the lsits have a different length! :) 
# finally we make a list of lists
  
mlist <-list(l1, l2, l3)
mlist

# there you go! Here is your list with lists 
# kind regards HJH

# got a hint help from here:
# https://stackoverflow.com/questions/25777104/remove-na-from-list-of-lists


