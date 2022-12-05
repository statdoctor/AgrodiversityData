#' Year wise Yield data of the Agrodiversity experiment
#'
#'The \code{Biosum} dataset provides information about Species-specific biomass measurements (yield per species and of weeds) at 33 sites summarized by year.
#' @format A dataframe with 3828 rows and 18 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Country}{Country}
#'   \item{Year}{Year}
#'   \item{YEARN}{Experimental year number}
#'   \item{NH}{Number of harvests – number of times the whole plot was cut in a year}
#'   \item{PLOT}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{G1}{Initial sown proportion of fast-establishing grass}
#'   \item{G2}{Initial sown proportion of persistent grass}
#'   \item{L1}{Initial sown proportion of fast-establishing legume}
#'   \item{L2}{Initial sown proportion of persistent legume}
#'   \item{E}{Initial sown evenness}
#'   \item{DENS}{Indicator variable: high=high level of initial sown biomass, low = low level (60%of high)}
#'   \item{G1_YN}{Total harvest Dry Matter Yield per year of fast-establishing grass}
#'   \item{G2_YN}{Total harvest Dry Matter Yield per year of persistent grass}
#'   \item{L1_YN}{Total harvest Dry Matter Yield per year of fast-establishing legume }
#'   \item{L2_YN}{Total harvest Dry Matter Yield per year of persistent legume }
#'   \item{WEED_YN}{Total harvest Dry Matter Yield per year of weed species }
#'   \item{HARV_YIELD2}{Total harvest Dry Matter Yield per year}
#'}
#' @source 
#' Laura Kirwan, John Connolly, Caroline Brophy, Ole Baadshaug, Gilles Belanger, Alistair Black, Tim Carnus, Rosemary Collins, Jure Čop, Ignacio Delgado, Alex De Vliegher, Anjo Elgersma, Bodil Frankow-Lindberg, Piotr Golinski, Philippe Grieu, Anne-Maj Gustavsson, Áslaug Helgadóttir, Mats Höglind, Olivier Huguenin-Elie, Marit Jørgensen, Žydrė Kadžiulienė, Tor Lunnan, Andreas Lüscher, Päivi Kurki, Claudio Porqueddu, M.-Teresa Sebastia, Ulrich Thumm, David Walmsley, John Finn. 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp. 2680-2680.
#' 
#' <https://doi.org/10.6084/m9.figshare.3560352.v1>
"Biosum"