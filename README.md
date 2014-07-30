LecturenotesR
=============


###to delete duplicated items

```{R}
c <- c(1,2,3,4,5,5,5,5,5)
duplicated(c)##will show duplicated items
```

use c[!duplicated(c)] to delete them
```{r}
c[!duplicated(c)]
```

