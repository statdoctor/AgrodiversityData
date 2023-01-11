#' Annual climate data of the Agrodiversity experiment
#'
#'   The \code{Weather2} dataset gives annual climate information for each site during the experiment. 
#'   It is created from \code{Weather1} dataset which has daily precipitation (mm) and daily minimum, mean and maximum (air) temperature (°C) for each site. 
#'   From the \code{Weather1} dataset, daily precipitation values were summed and daily mean temperature values were averaged within each year for each site. 
#'   The average of the lowest 10 daily minimum temperature values and average of the highest 10 daily maximum temperature values within each year was also computed for each site. 
#'   Daily mean temperature was not recorded for sites 35 and 43 and the averages of daily minimum and maximum temperature values were used instead. 
#'   There was a small number of other missing daily values which were omitted from calculations.
#'
#' @format A dataframe with 124 rows and 6 variables:
#' \describe{
#'   \item{Site}{Site ID number}
#'   \item{Year}{Year of data collected}
#'   \item{PRECIP_S}{Total Annual precipitation (mm/year)}
#'   \item{AIR_MIN_A}{Minimum average annual air temperature (°C)}
#'   \item{AIR_MEAN_A}{Mean annual air temperature (°C)}
#'   \item{AIR_MAX_A}{Maximum average annual air temperature (°C)}
#'   }
#' @source 
#' Laura Kirwan, John Connolly, Caroline Brophy, Ole Baadshaug, Gilles Belanger, Alistair Black, Tim Carnus, Rosemary Collins, Jure Čop, Ignacio Delgado, Alex De Vliegher, Anjo Elgersma, Bodil Frankow-Lindberg, Piotr Golinski, Philippe Grieu, Anne-Maj Gustavsson, Áslaug Helgadóttir, Mats Höglind, Olivier Huguenin-Elie, Marit Jørgensen, Žydrė Kadžiulienė, Tor Lunnan, Andreas Lüscher, Päivi Kurki, Claudio Porqueddu, M.-Teresa Sebastia, Ulrich Thumm, David Walmsley, John Finn. 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp. 2680-2680.
#' 
"Weather2"