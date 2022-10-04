#' Biomass data for the Agrodiversity experiment
#'
#'Biomass dataset provide information the 
#' @format A dataframe with 15372 rows and 22 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{COUNTRY}{Country}
#'   \item{YEAR}{Year}
#'   \item{YEARN}{Experimental year number}
#'   \item{NH}{Number of harvests – number of times the whole plot was cut in a year}
#'   \item{HARVEST}{Harvest number (within year)}
#'   \item{HARVEST DATE}{Date of harvest}
#'   \item{PLOT}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{TREAT}{Indicator variable: 1=basic 30 plots; 2 and 3=additional treatment plots (some sites implemented two levels of additional treatments)}
#'   \item{REP}{Replicate number (applies only to sites 15, 45, and 46)}
#'   \item{G1}{Initial sown proportion of fast-establishing grass}
#'   \item{G2}{Initial sown proportion of persistent grass}
#'   \item{L1}{Initial sown proportion of fast-establishing legume}
#'   \item{L2}{Initial sown proportion of persistent legume}
#'   \item{E}{Initial sown evenness}
#'   \item{DENS}{Indicator variable: high=high level of initial sown biomass, low = low level (60%of high)}
#'   \item{G1_Y}{Harvest Dry Matter Yield of fast-establishing grass}
#'   \item{G2_Y}{Harvest Dry Matter Yield of persistent grass}
#'   \item{L1_Y}{Harvest Dry Matter Yield of fast-establishing legume}
#'   \item{L2_Y}{Harvest Dry Matter Yield of persistent legume}
#'   \item{WEED_Y}{Harvest Dry Matter Yield of weed species}
#'   \item{HARV_YIELD}{Total Harvest Dry Matter Yield}
#'}
#' @source <https://repositori.udl.cat/handle/10459.1/60560>
"agrobiomass"
