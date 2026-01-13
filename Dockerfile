FROM rocker/r-ver:4.5.2

## Install software dependencies
RUN apt-get update \
  && apt-get install -y \
    pandoc \
    texlive \
    texlive-latex-extra \
    texlive-bibtex-extra \
    biber
RUN . /etc/environment \
  && R -e 'install.packages("pacman");' \
  && R -e 'pacman::p_install_version("rmarkdown", "2.30");'
  
## Copy source code into the container
COPY ./src ./docker_reproducibility/src
COPY ./run_analysis.sh ./docker_reproducibility/run_analysis.sh

## Execute the analysis
CMD ["bash", "./docker_reproducibility/run_analysis.sh"]