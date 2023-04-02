#' Biomass1 data of the Agrodiversity experiment
#'
#'@description 
#' The \code{biomass1} dataset is from a coordinated, continental-scale grassland experiment conducted in 33 sites across 17 countries. 
#' The experiment compared the agronomic performance of monocultures and 4-species mixtures that varied in the relative abundance of the component species at sowing.
#' It investigated the effects of different facets of diversity (composition, richness, relative abundance and genetic diversity) on ecosystem functions like species-specific biomass, forage quality and weed suppression. 
#' The coordination of this network was supported by EU COST Action 852: Quality Legume-Based Forage Systems for Contrasting Environments. 
#' More information about the experiment can be found at Kirwan et al. 2014; we recommend that and anyone using these data and the AgrodiversityData package should cite the aforementioned source.
#' The \code{Biomass1} dataset provides information about the species-specific biomass measurements (yield per species and of weeds) for all harvests for up to four years at 33 sites.
#' 
#' @format A dataframe with 15372 rows and 22 variables:
#' \describe{
#'   \item{site}{Site ID number}
#'   \item{country}{Country}
#'   \item{year}{Year}
#'   \item{yearn}{Experimental year number}
#'   \item{nh}{Number of harvests – number of times the whole plot was cut in a year}
#'   \item{harvest}{Harvest number (within year)}
#'   \item{harvest_dt}{Date of harvest}
#'   \item{plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{treat}{Indicator variable: 1=basic 30 plots; 2 and 3=additional treatment plots (some sites implemented two levels of additional treatments)}
#'   \item{rep}{Replicate number (applies only to sites 15, 45, and 46)}
#'   \item{g1}{Initial sown proportion of fast-establishing grass}
#'   \item{g2}{Initial sown proportion of persistent grass}
#'   \item{l1}{Initial sown proportion of fast-establishing legume}
#'   \item{l2}{Initial sown proportion of persistent legume}
#'   \item{e}{Initial sown evenness}
#'   \item{dens}{Indicator variable: high=high level of initial sown biomass, low = low level (60%of high)}
#'   \item{type}{Species type: 0=monoculture, 1=mixture}
#'   \item{richness}{1=monoculture, 2= one species dominent mixture, 3= two species dominent mixture, 4= equi-proportional mixture}
#'   \item{g1_y}{Harvest Dry Matter Yield of fast-establishing grass (t/ha)}
#'   \item{g2_y}{Harvest Dry Matter Yield of persistent grass (t/ha)}
#'   \item{l1_y}{Harvest Dry Matter Yield of fast-establishing legume (t/ha)}
#'   \item{l2_y}{Harvest Dry Matter Yield of persistent legume (t/ha)}
#'   \item{weed_y}{Harvest Dry Matter Yield of weed species (t/ha)}
#'   \item{harv_yield}{Total Harvest Dry Matter Yield (t/ha)}
#'}
#' @source 
#'Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#' 
#'Data available at :<https://doi.org/10.6084/m9.figshare.3560352.v1>
"biomass1"
