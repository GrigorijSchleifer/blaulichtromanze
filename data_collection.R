require(readr)

data_folder <- "~/github/blaulichtromanze/Krankenhausdaten"
file_list <- list.files(path = data_folder, pattern = "*.csv") 

# read in each .csv file in file_list and create a data frame with the same name as the .csv file
for (i in 1:length(file_list)) {
    assign(file_list[i],
    read_delim(file = paste(data_folder, file_list[i], sep = "/"),
               delim = ";", 
               escape_double = FALSE, 
               trim_ws = TRUE)
    )
}

nrw_khs <- read_delim("Krankenhausdaten/krankenhaeuser_EPSG25832_CSV.csv", 
                                           delim = ";", escape_double = FALSE, trim_ws = TRUE)
nrw_khs |> 
    dplyr::filter(bs_gemeinde == "Bonn") |> 
    select(bs_bez, bs_strasse)
