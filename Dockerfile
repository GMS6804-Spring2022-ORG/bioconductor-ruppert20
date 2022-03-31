# Docker inheritance
FROM r-base:latest

### Install asciinema
RUN apt-get update && apt-get install -y  \
asciinema

RUN Rscript -e 'install.packages("BiocManager")'
RUN Rscript -e 'install.packages(BiocManager::install(c("GenomicFeatures")))'