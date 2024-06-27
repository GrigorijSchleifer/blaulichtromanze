require(readr)

data_folder <- "~/github/blaulichtromanze/Krankenhausdaten"
file_list <- list.files(path = data_folder, pattern = "*.csv") 

read_kh_data <- function(files) {
    # read in each .csv file in file_list
    # create a data frame with the same name as the .csv file
    # Args:
        # character vector with locating the files
    # Return:
        # not sure yet
    for (i in 1:length(files)) {
        gsub(files[i], ".csv", "") <- read_delim(file = paste(data_folder, files[i], sep = "/"),
                                         delim = ";",
                                         escape_double = FALSE, 
                                         trim_ws = TRUE,
                                         show_col_types = FALSE,
                                         locale = locale(encoding = "ISO-8859-1"))
                 }
}

read_kh_data(file_list)

kh <- read_delim(file = paste(data_folder, file_list[1], sep = "/"),
           delim = ";",
           escape_double = FALSE, 
           trim_ws = TRUE,
           show_col_types = FALSE,
           locale = locale(encoding = "ISO-8859-1"))

txt <- read_lines("inserate/ 03_09_2023_08_00.txt")
txt
