iris %>% group_by (Species) %>% summarize(mean(Sepal.Length))
iris %>% group_by (Species) %>% summarize(var(Sepal.Length))
iris %>% group_by (Species) %>% summarize(sd(Sepal.Length))
iris %>% group_by (Species) %>% summarize(median(Sepal.Length))
iris %>% group_by (Species) %>% summarize(sdSL = sd(Sepal.Length))
iris %>% group_by (Species) %>% summarize(meanSL = mean(Sepal.Length),        varSL = var(Sepal.Length),        sdSL = sd(Sepal.Length))

 mtcars %>% group_by (vs,am) %>% summarize(meanMPG = median(mpg))
mtcars %>% select(1:drat) %>% head(4)
mtcars %>% select(cyl:vs) %>% head(4)
mtcars %>% mutate(sqtMPG = sqrt(mpg)) %>% head(5)
mtcars %>% mutate(sqrtqsec = sqrt(mpg)) %>% head(5)

mtcars %>% mutate(sqrtMPG = sqrt(mpg), logMPG = log(mpg)) %>% select(mpg,sqrtMPG,logMPG,everything()) %>% head(5)
