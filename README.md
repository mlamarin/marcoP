# marcoP
marcoP test github deployment to use later with quartzbio.edp

## Prerequisites

* usethis
* pkgdown
* gh (gh >= v1.2.1)
* gret 
* gitcreds

## WalkTrough

* [usethis](https://usethis.r-lib.org/): obtain a template for an R package skeleton.  

* [pkgdown](https://pkgdown.r-lib.org/articles/pkgdown.html).  

* [usethis::use_pkgdown_github_pages()](https://usethis.r-lib.org/reference/use_pkgdown.html).  
    * need to follow [Managing Git(Hub) Credentials](https://usethis.r-lib.org/articles/git-credentials.html).  

* use_github_pages(): prepares to publish the pkgdown site from the gh-pages branch

* use_github_action("pkgdown")

## Dev

* [PkpTest](https://fanwangecon.github.io/PkgTestR/index.html)

```r
# One time set-up with Git, Github, and Github Actions
usethis::use_git(message = "Initial commit")
usethis::use_github(private = FALSE)
usethis::use_github_action("pkgdown")
usethis::use_pkgdown_github_pages()

# locally building site
pkgdown::build_site()

# Install package
devtools::install_github("FanWangEcon/PkgTestR")
```