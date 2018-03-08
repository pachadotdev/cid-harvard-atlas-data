
<!-- README.md is generated from README.Rmd. Please edit that file -->
OEC Atlas Data
==============

Description
-----------

Scripts to recreate the trade data available at the [Observatory of Economic Complexity](http://atlas.media.mit.edu/en/).

We have a repo explaining the methodological details. Please visit [OEC Documentation](https://observatory-economic-complexity.github.io/oec-documentation/) and the [Official website](http://atlas.media.mit.edu/en/) for the details.

These scripts are released under MIT license.

How to use this project
-----------------------

While you can run the scripts from UNIX terminal, we highly recommend [RStudio](https://www.rstudio.com/).

Each project is organized as an RStudio project. Each project contains a master script titled `0-some-function.R` at the top level but some projects such as *Product Space* are organized in subfolders where each subfolder contains a master script.

The master script, for any case, runs a function with user prompt and/or simple scripts. The safe way to run this without errors is to open the project and then run the master script from RStudio.

[OEC Packages Snapshot](https://github.com/observatory-economic-complexity/oec-packages-snapshot) stores all packages and its dependencies used across all repositories under this organization. To ease reproducibility [OEC Bundles](https://github.com/observatory-economic-complexity/oec-bundles) contains several bundles to avoid dependencies or packages related problems, and this project already contains an unbundled set of packages.

You can read more about RStudio projects [here](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects).

Project structure
-----------------

    oec-atlas-data
    └── README.md
    └── README.Rmd
    └── 0-do-all.R
    └── 1-book-in-pdf
    └── 2-scraped-tables
    └── packrat

Output
------

The script generates different files under `2-scraped-tables/`.

### Generated files

#### Atlas countries (csv)

    ## Skim summary statistics  
    ##  n obs: 128    
    ##  n variables: 8    
    ## 
    ## Variable type: character
    ## 
    ## variable               missing   complete   n     min   max   empty   n_unique 
    ## ---------------------  --------  ---------  ----  ----  ----  ------  ---------
    ## country_name           0         128        128   4     22    0       128      
    ## income_2009_usd        0         128        128   3     6     0       127      
    ## iso_code               0         128        128   3     3     0       128      
    ## region                 0         128        128   10    31    0       8        
    ## regional_eci_ranking   0         128        128   3     5     0       96       
    ## 
    ## Variable type: integer
    ## 
    ## variable                   missing   complete   n     mean   sd      p0   p25     median   p75     p100   hist     
    ## -------------------------  --------  ---------  ----  -----  ------  ---  ------  -------  ------  -----  ---------
    ## rank_eci_complexity_2008   0         128        128   64.5   37.09   1    32.75   64.5     96.25   128    ▇▇▇▇▇▇▇▇ 
    ## rank_income_2009_usd       0         128        128   64.5   37.09   1    32.75   64.5     96.25   128    ▇▇▇▇▇▇▇▇ 
    ## 
    ## Variable type: numeric
    ## 
    ## variable   missing   complete   n     mean   sd     p0      p25     median   p75    p100   hist     
    ## ---------  --------  ---------  ----  -----  -----  ------  ------  -------  -----  -----  ---------
    ## eci_2008   0         128        128   0.02   0.98   -1.91   -0.66   -0.082   0.78   2.32   ▂▇▆▇▆▅▃▂

Software details
----------------

Here the version information about R, the OS and attached or loaded packages for this project:

    ## R version 3.4.3 (2017-11-30)
    ## Platform: x86_64-pc-linux-gnu (64-bit)
    ## Running under: Ubuntu 16.04.3 LTS
    ## 
    ## Matrix products: default
    ## BLAS/LAPACK: /opt/intel/compilers_and_libraries_2017.5.239/linux/mkl/lib/intel64_lin/libmkl_gf_lp64.so
    ## 
    ## locale:
    ##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
    ##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
    ##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=en_US.UTF-8   
    ##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
    ##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
    ## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ## [1] bindrcpp_0.2 magrittr_1.5
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] Rcpp_0.12.15        knitr_1.20          bindr_0.1          
    ##  [4] tidyselect_0.2.4    R6_2.2.2            rlang_0.2.0        
    ##  [7] highr_0.6           stringr_1.3.0       skimr_1.0.1        
    ## [10] dplyr_0.7.4         tools_3.4.3         packrat_0.4.8-1    
    ## [13] data.table_1.10.4-3 htmltools_0.3.6     yaml_2.1.17        
    ## [16] rprojroot_1.3-2     digest_0.6.15       assertthat_0.2.0   
    ## [19] tibble_1.4.2        tidyr_0.8.0         purrr_0.2.4        
    ## [22] glue_1.2.0          evaluate_0.10.1     rmarkdown_1.9      
    ## [25] stringi_1.1.6       compiler_3.4.3      pander_0.6.1       
    ## [28] pillar_1.2.1        backports_1.1.2     pkgconfig_2.0.1

The MIT License
---------------

Copyright (c) 2017, Datawheel

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
