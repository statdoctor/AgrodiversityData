#' Annual weather data of the Agrodiversity experiment
#'  
#'@description 
#'   The \code{Weather2} dataset gives annual climate information for each site during the experiment. 
#'   It is created from \code{Weather1} dataset which has daily precipitation (mm) and daily minimum, mean and maximum (air) temperature (°C) for each site. 
#'   From the \code{Weather1} dataset, daily precipitation values were summed and daily mean temperature values were averaged within each year for each site. 
#'   The average of the lowest 10 daily minimum temperature values and average of the highest 10 daily maximum temperature values within each year was also computed for each site. 
#'   Daily mean temperature was not recorded for sites 35 and 43 and the averages of daily minimum and maximum temperature values were used instead. 
#'  There was a small number of other missing daily values which were omitted from calculations.
#'
#' @format A dataframe with 124 rows and 6 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Year}{Year of data collected}
#'   \item{Precip_s}{Total Annual precipitation (mm/year)}
#'   \item{Air_min_a}{Minimum average annual air temperature (°C)}
#'   \item{Air_mean_a}{Mean annual air temperature (°C)}
#'   \item{Air_max_a}{Maximum average annual air temperature (°C)}
#'   }
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
"Weather2"
