library(miniCRAN)

create_miniCRAN <- function(pkgs) {
    repo <- c("https://cran.rstudio.com",
              "https://bioconductor.org/packages/release/bioc",
              "https://github.com/id-bioinfo/minicran")
    pkgList <- pkgDep(pkgs, repos=repo, type="source", suggests = FALSE)
    makeRepo(pkgList, path="docs", repos=repo,
             type=c("source", "win.binary"))
}


pkgs <- c("skleid")

create_miniCRAN(pkgs)
