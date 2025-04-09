FROM inwt/r-shiny:4.4.1

ADD . .

RUN installPackage

CMD ["Rscript", "-e", "library(oxcAARS);startApplication(3838)"]
