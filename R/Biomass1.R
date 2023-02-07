#' Biomass1 data of the Agrodiversity experiment
#'
#'@description 
#'The \code{Biomass1} dataset provides information about the species-specific biomass measurements (yield per species and of weeds) for all harvests for up to four years at 33 sites.
#' @format A dataframe with 15372 rows and 22 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Country}{Country}
#'   \item{Year}{Year}
#'   \item{Yearn}{Experimental year number}
#'   \item{Nh}{Number of harvests – number of times the whole plot was cut in a year}
#'   \item{Harvest}{Harvest number (within year)}
#'   \item{Harvest_dt}{Date of harvest}
#'   \item{Plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{Treat}{Indicator variable: 1=basic 30 plots; 2 and 3=additional treatment plots (some sites implemented two levels of additional treatments)}
#'   \item{Rep}{Replicate number (applies only to sites 15, 45, and 46)}
#'   \item{G1}{Initial sown proportion of fast-establishing grass}
#'   \item{G2}{Initial sown proportion of persistent grass}
#'   \item{L1}{Initial sown proportion of fast-establishing legume}
#'   \item{L2}{Initial sown proportion of persistent legume}
#'   \item{E}{Initial sown evenness}
#'   \item{Dens}{Indicator variable: high=high level of initial sown biomass, low = low level (60%of high)}
#'   \item{G1_y}{Harvest Dry Matter Yield of fast-establishing grass (t/ha)}
#'   \item{G2_y}{Harvest Dry Matter Yield of persistent grass (t/ha)}
#'   \item{L1_y}{Harvest Dry Matter Yield of fast-establishing legume (t/ha)}
#'   \item{L2_y}{Harvest Dry Matter Yield of persistent legume (t/ha)}
#'   \item{Weed_y}{Harvest Dry Matter Yield of weed species (t/ha)}
#'   \item{Harv_yield}{Total Harvest Dry Matter Yield (t/ha)}
#'}
#' @source 
#'Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#' 
#'Data available at :<https://doi.org/10.6084/m9.figshare.3560352.v1>
"Biomass1"
