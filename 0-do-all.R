# Open oec-atlas-data.Rproj before running this script

if (!require("pacman")) install.packages("pacman")
p_load(data.table, dplyr)
p_load_gh("ropensci/tabulizer")

# 1: download book -----------------------------------------------------------

try(dir.create("1-book-in-pdf"))

url_atlas_part_1 <- "https://atlas.media.mit.edu/static/pdf/atlas/AtlasOfEconomicComplexity_Part_I.pdf"
pdf_atlas_part_1 <- "1-book-in-pdf/atlas-part-1.pdf"
pdf_atlas_part_1_zip <- "1-book-in-pdf/atlas-part-1.zip"

if (!file.exists(pdf_atlas_part_1) & !file.exists(pdf_atlas_part_1_zip)) {
  download.file(url_atlas_part_1, pdf_atlas_part_1)
}

if (file.exists(pdf_atlas_part_1) & !file.exists(pdf_atlas_part_1_zip)) {
  system(paste("7z a", pdf_atlas_part_1_zip, pdf_atlas_part_1))
}

if (!file.exists(pdf_atlas_part_1) & file.exists(pdf_atlas_part_1_zip)) {
  system(paste("7z e", pdf_atlas_part_1_zip, "-oc:1-book-in-pdf"))
}

url_atlas_part_2 <- "https://atlas.media.mit.edu/static/pdf/atlas/AtlasOfEconomicComplexity_Part_II.pdf"
pdf_atlas_part_2 <- "1-book-in-pdf/atlas-part-2.pdf"
pdf_atlas_part_2_zip <- "1-book-in-pdf/atlas-part-2.zip"

if (!file.exists(pdf_atlas_part_2) & !file.exists(pdf_atlas_part_2_zip)) {
  download.file(url_atlas_part_2, pdf_atlas_part_2)
}

if (file.exists(pdf_atlas_part_2) & !file.exists(pdf_atlas_part_2_zip)) {
  system(paste("7z a", pdf_atlas_part_2_zip, pdf_atlas_part_2))
}

if (!file.exists(pdf_atlas_part_2) & file.exists(pdf_atlas_part_2_zip)) {
  system(paste("7z e", pdf_atlas_part_2_zip, "-oc:1-book-in-pdf"))
}

# 2: pdf scraping ------------------------------------------------------------

# this part is not automatic, you need to select areas
# just omit the cyan first row in the pdf selector to get tidy columns
# run the next subsections line by line when extract_areas appears (i.e lines 31-33)

# * extract countries table -------------------------------------------------

table_p64 <- as_tibble(extract_areas(pdf_atlas_part_1, pages = 64)[[1]])
table_p65 <- as_tibble(extract_areas(pdf_atlas_part_1, pages = 65)[[1]])
table_p66 <- as_tibble(extract_areas(pdf_atlas_part_1, pages = 66)[[1]])

table_p64 <- table_p64 %>% filter(row_number() > 5)
table_p65 <- table_p65 %>% filter(row_number() > 5)
table_p66 <- table_p66 %>% filter(row_number() > 5)

atlas_countries <- bind_rows(table_p64, table_p65, table_p66)

names(atlas_countries) <- c(
  "rank_eci_complexity_2008",
  "regional_eci_ranking",
  "country_name",
  "iso_code",
  "eci_2008",
  "rank_income_2009_usd",
  "income_2009_usd",
  "region"
)

try(dir.create("2-scraped-tables"))

fwrite(atlas_countries, "2-scraped-tables/atlas-countries.csv")
