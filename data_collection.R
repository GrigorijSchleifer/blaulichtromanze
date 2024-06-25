require(readr)

data_folder <- "~/github/blaulichtromanze/Krankenhausdaten"
file_list <- list.files(path = data_folder, pattern = "*.csv") 

read_kh_data <- function(file_location) {
    # read in each .csv file in file_list
    # create a data frame with the same name as the .csv file
    # Args:
        # character vector with locating the files
    # Return:
        # not sure yet
    for (i in 1:length(file_list)) {
        assign(file_list[i],
               read_delim(file = paste(data_folder, file_list[i], sep = "/"),
                          delim = ";",
                          escape_double = FALSE, 
                          trim_ws = TRUE,
                          locale = locale(encoding = "ISO-8859-1"))
        )
    }
}


