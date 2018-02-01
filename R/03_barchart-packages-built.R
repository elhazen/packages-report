library(fs)
library(tidyverse)
library(stringr)
library(igraph)
library(ggraph)
library(here)

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
apt_freqtable <- readr::read_csv(here("data","add-on-packages-freqtable.csv"))

## read that csv into a data frame, then ...

## if you use ggplot2, code like this will work:
g<-ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

ggsave(g,file=here("figs","built-barchart.png"))
## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help


## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
