## deja vu from yesterday!

## create a data frame of your installed packages
#' ---
#' output: github_document
#' ---
library(fs)
library(tidyverse)
library(stringr)
library(igraph)
library(ggraph)
library(here)


## how jenny might do this in a first exploration
## purposely leaving a few things to change later!

#' Which libraries does R search for packages?
.libPaths()

## let's confirm the second element is, in fact, the default library
.Library

path_real(.Library)

#' Installed packages

ipt <- installed.packages() %>%
  as_tibble() %>%
  select("Package","LibPath","Version","Priority","Built") %>%
  write_csv(here("data","installed-packages.csv"))

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
