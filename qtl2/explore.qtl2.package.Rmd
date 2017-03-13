---
title: "Explore QTL2"
author: "Lauren Vanderlinden"
date: "March 8, 2017"
output: html_document
---

### Overview ###

Going to install and trying to use the R/qtl2 package from Karl Broman.  This is in the development version, but we are interested in using this for mixed-models (to help with population stratification in our HRDP) as well as multivariate qtl analyses (to help with the multiple outcomes sometimes we encounter).  

**Install Package Via GitHub**
```{r, eval=FALSE}
install.packages(c("devtools", "yaml", "jsonlite", "data.table", "RcppEigen"))
library(devtools)
library(jsonlite)
library(RcppEigen)
library(data.table)
library(yaml)

install_github(paste0("rqtl/qtl2", c("geno", "scan", "plot", "convert")))

library(qtl2geno)
library(qtl2scan)
library(qtl2plot)
library(qtl2convert)
```

Didn't take too long to install and at least have no errors when loading in the packages.  

**Get a Kinship Matrix**
```{r, eval=FALSE}

grav2 <- read_cross2("Y:/qtlMethods/qtl2/exampleData/grav2.yaml")




