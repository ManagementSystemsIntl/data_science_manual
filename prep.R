# prep

packages <- c("arm", "BMA", "brms", "corrplot","DescTools", "estimatr","extrafont", "extrafontdb", "janitor",
              "reshape2","tidyr","broom", "haven", "HH","Hmisc","lubridate","knitr", "margins", "magrittr",
              "plotrix", "scales","survey", "srvyr", "sysfonts", "foreign","car", "ICC", "PowerUpR", "openxlsx",
              "ggrepel", "readr", "readxl", "sjmisc", "sjPlot", "sjstats", "sjlabelled", "skimr","labelled",
              "texreg", "janitor","psych","dplyr", "tidyverse", "viridis", "here", "ggridges", "ggthemes",
              "DT", "jtools", "huxtable", "stringi", "gghighlight", "plm", "brms", "rstan",
              "rstanarm","tidybayes","texreg","gt","gtsummary","huxtable","stargazer", "gsynth", "panelView",
              "assertr", "pointblank", "validate", "sandwich")

lapply(packages, library, character.only=T)

font_add_google("Source Sans Pro", "sans-serif")


base_packages <- c("tidyverse", "easystats", "corrplot","DescTools","estimatr","extrafont","janitor",
                   "reshape2", "haven", "broom","HH","Hmisc","plotrix","scales","sysfonts","foreign","car",
                   "ICC","openxlsx","readr","readxl","sjmisc","sjPlot","flextable", "sjstats","sjlabelled","skimr",
                   "labelled", "texreg","psych","viridis","here","jtools","huxtable","stringi", "kableExtra")

# Install packages not yet installed
installed_packages <- base_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(base_packages[!installed_packages])
}

lapply(base_packages, library, character.only=T)

viz_packages <- c("patchwork","gganimate","ggstatsplot","ggthemes","ggrepel","ggpubr","cowplot","ggdist","ggtext",
                  "geomtextpath","ggfortify", "ggridges", "gghighlight")

# Install packages not yet installed
installed_packages <- viz_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(viz_packages[!installed_packages])
}

lapply(viz_packages, library, character.only=T)

table_packages <- c("gt", "gtsummary", "gtExtras","flextable", "officer")
# Install packages not yet installed
installed_packages <- table_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(table_packages[!installed_packages])
}

lapply(table_packages, library, character.only=T)

miss_packages <- c("missForest","missMDA")

# Install packages not yet installed
installed_packages <- miss_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(miss_packages[!installed_packages])
}

lapply(miss_packages,library, character.only=T)

options(digits=3, scipen=6)

# set default
base <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(#face="bold",
                                                   size=16, hjust=.5, family = "Source Sans Pro"),
                           plot.subtitle = element_text(size=14, family="Source Sans Pro"),
                           plot.caption=element_text(size=11, family="Source Sans Pro"),
                           axis.title=element_text(size=14, family="Source Sans Pro"),
                           axis.text=element_text(size=12, family="Source Sans Pro"),
                           legend.text=element_text(size=12, family="Source Sans Pro"),
                           strip.text=element_text(size=12, family="Source Sans Pro"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())

theme_set(base)

faceted <- theme_bw() +
    theme(panel.grid.minor.x=element_blank(),
          panel.grid.minor.y=element_blank(),
          plot.title=element_text(#face="bold",
                                  size=18, hjust=.5, family = "Source Sans Pro"),
          plot.subtitle = element_text(size=16, family="Source Sans Pro"),
          plot.caption=element_text(size=12, family="Source Sans Pro"),
          axis.title=element_text(size=16, family="Source Sans Pro"),
          axis.text=element_text(size=14, family="Source Sans Pro"),
          legend.text=element_text(size=14, family="Source Sans Pro"),
          strip.text=element_text(size=14, family="Source Sans Pro"))



facet_style <- function(){theme_bw() +
        theme(panel.grid.minor.x=element_blank(),
              panel.grid.minor.y=element_blank(),
              plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans Pro"),
              plot.subtitle = element_text(size=16, family="Source Sans Pro"),
              plot.caption=element_text(size=12, family="Source Sans Pro"),
              axis.title=element_text(size=16, family="Source Sans Pro"),
              axis.text=element_text(size=14, family="Source Sans Pro"),
              legend.text=element_text(size=14, family="Source Sans Pro"),
              strip.text=element_text(size=14, family="Source Sans Pro"))
}


# read data

