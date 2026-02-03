# Use rocker/rstudio base
FROM rocker/rstudio:4.4.2

# Install ggplot2 and remotes
RUN R -e "install.packages(c('renv', 'remotes'), repos = 'https://cran.rstudio.com')"
RUN R -e "remotes::install_version('ggplot2', version = '3.5.1', dependencies = TRUE)"