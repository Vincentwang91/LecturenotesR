LecturenotesR
=============
sample()

x[1:2,"var2"]
x[order(x$var1),]
##order the x by the order in x$var1
x[order(x$var1,x$var3),]
##order X according to the order in x$var1
##and if their are item equal in x$var1,
##the equal items will be ordered by the order
##in x$var3
head(,n=?)
tail(,n=?)
summary()
str()
quantile(var,na.rm=TRUE)
##also you can find 33% QUANTILE of a data by specifying
##quantile(varname,probs=quantile)
table(restData$zipCode,useNA="ifany")
##to make a data table
##use NA is to include NA in this part
##by default the program will ignore NAs.
table(var1,var2)
##make a 2-dim table.
any(is.na(xx))
##check and see if any of this values is NA
all(if any value satisfy this condition)

##conditional commend
x[x %in% c(1,2,3)]
##print all values in X that is in the range specified by c()

##create subgroup
table(cut(x,breaks=quantile(x)))
##merge two data sets
mergedData = merge(merge1, merge2, by.x="solution_id", by.y="id", all TRUE)

tolower()
toupper()

strsplit(names(),"\\.")
##split names containing \\. and select the first element
firstElement <- function(x){x[1]}
sapply(splitNames,firstElement)
##substitute "_" for "" (the first)
sub("_","",list)
##gsub() replace all the cases...
##grep() search for the special case
grep("str",list,value=T) ##returns the str instead of order
nchar()
substr()
paste()
paste0() ##paste without space between
paste
