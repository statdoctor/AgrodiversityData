#' Biomass data of the Agrodiversity experiment
#'
#'The \code{agrobiomass} dataset provide information about the species-specific biomass measurements (yield per species and of weeds) for all harvests for up to four years at 33 sites.
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

#' @section References:
#' 
#'Kirwan, L., Lüscher, A., Sebastià, M.T., Finn, J.A., Collins, R.P., Porqueddu, C., Helgadottir, A., Baadshaug, O.H., Brophy, C., Coran, C. and Dalmannsdottir, S., 2007. Evenness drives consistent diversity effects in intensive grassland systems across 28 European sites. Journal of Ecology, 95(3), pp.530-539.
#'
#'Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R.P., Čop, J., Delgado, I. and De Vliegher, A., 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 2014, vol. 95, num. 9, p. 2680-2680.

"agrobiomass"
