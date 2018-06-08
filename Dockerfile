FROM rocker/tidyverse:latest

RUN Rscript -e "install.packages('devtools')"
RUN Rscript -e "devtools::install_github('paulklemm/seqc')"