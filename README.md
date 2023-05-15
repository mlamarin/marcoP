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