cd docker_reproducibility
Rscript ./src/test.R
R -e 'library(rmarkdown); rmarkdown::render("./docs/docker_slides.Rmd")'
