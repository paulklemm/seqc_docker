FROM rocker/tidyverse:latest

# Install latest pandoc
# Pull the pandoc release
RUN wget https://github.com/jgm/pandoc/releases/download/2.4/pandoc-2.4-1-amd64.deb
# install pandoc release from debian package
RUN dpkg -i pandoc-2.4-1-amd64.deb
# install required pandoc files
# RUN pip3 install pandoc-eqnos pandoc-fignos pandoc-tablenos

RUN Rscript -e "install.packages('devtools')"
RUN Rscript -e "devtools::install_github('paulklemm/seqc')"