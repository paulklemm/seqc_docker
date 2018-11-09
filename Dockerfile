FROM paulklemm/mytidyverse:base-3.5.1-2
RUN Rscript -e "devtools::install_github('paulklemm/seqc')"
