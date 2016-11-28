html:
	cd docs;\
	Rscript -e 'rmarkdown::render("index.rmd")'

miniCRAN:
	Rscript -e 'source("create_miniCRAN.R")'
