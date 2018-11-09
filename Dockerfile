FROM rocker/tidyverse:latest

# Install pandoc 2.X
RUN \
  # Pull the pandoc release
  wget https://github.com/jgm/pandoc/releases/download/2.4/pandoc-2.4-1-amd64.deb && \
  # install pandoc release from debian package
  dpkg -i pandoc-2.4-1-amd64.deb && \
  # Remove pre-installed pandoc from rstudio
  rm /usr/local/bin/pandoc

RUN Rscript -e "install.packages('devtools')"
RUN Rscript -e "devtools::install_github('paulklemm/seqc')"