miniCRAN:
	Rscript -e 'source("create_miniCRAN.R")';\
	Rscript -e 'rmarkdown::render("index.rmd")'
