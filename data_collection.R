require(readr)


file_list <- list.files("~/github/blaulichtromanze/Krankenhausdaten/") 

for (i in 1:length(fls)) {
    assign(fls)
}

nrw_khs <- read_delim("Krankenhausdaten/krankenhaeuser_EPSG25832_CSV.csv", 
                                           delim = ";", escape_double = FALSE, trim_ws = TRUE)
nrw_khs |> 
    dplyr::filter(bs_gemeinde == "Bonn") |> 
    select(bs_bez, bs_strasse)
