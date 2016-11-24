library(miniCRAN)

create_miniCRAN <- function(pkgs) {
    repo <- c("https://cran.rstudio.com",
              "https://bioconductor.org/packages/release/bioc",
              "https://guangchuangyu.github.io/drat")

    pkgList <- pkgDep(pkgs, repos=repo, type="source", suggests = TRUE)
    makeRepo(pkgList, path="docs", repos=repo,
             type=c("source", "win.binary"))
}


pkgs <- c("skleid")

create_miniCRAN(pkgs)
