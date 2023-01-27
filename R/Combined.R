#' Combined Biomass, Weathe, Soil and Site information data of the agrodiversity experiment
#'
#' The \code{Combined} dataset provides information on all harvest years for all plots in each experimental site along with climate, soil and site details.
#' 
#' @format A dataframe with 3828 rows and 48 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Country}{Country}
#'   \item{Location}{Location of site within country}
#'   \item{Lat_deg}{Location of site (Latitude degrees)}
#'   \item{Lat_min}{Location of site (Latitude minutes)}
#'   \item{Lat_ns}{Location of site (Latitude North South)}
#'   \item{Long_deg}{Location of site (Longitude degrees)}
#'   \item{Long_min}{Location of site (Longitude minutes)}
#'   \item{Long_ew}{Location of site (Longitude East West)}
#'   \item{Year}{Year}
#'   \item{Yearn}{Experimental year number}
#'   \item{Nh}{Number of harvests – number of times the whole plot was cut in a year}
#'   \item{Plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{G1}{Initial sown proportion of fast-establishing grass}
#'   \item{G2}{Initial sown proportion of persistent grass}
#'   \item{L1}{Initial sown proportion of fast-establishing legume}
#'   \item{L2}{Initial sown proportion of persistent legume}
#'   \item{E}{Initial sown evenness}
#'   \item{Dens}{Indicator variable: high=high level of initial sown biomass, low = low level (60%of high)}
#'   \item{G1_yn}{Annual harvest dry matter yield of fast-establishing grass}
#'   \item{G2_yn}{Annual harvest dry matter yield of persistent grass}
#'   \item{L1_yn}{Annual harvest dry matter yield of fast-establishing legume}
#'   \item{L2_yn}{Annual harvest dry matter yield of persistent legume }
#'   \item{Weed_yn}{Annual harvest dry matter yield of weed species}
#'   \item{Annual_yield}{Annual harvest dry matter yield of all species including weed yield}
#'  \item{Mixture_type}{Seed mixture used: ME=Mid European, NE=Northern European,DM=Dry Mediterranean, MM=Moist Mediterranean, Other=Site specific mix}
#'  \item{Sowing_method}{Method of sowing – drilled / hand sown}
#'   \item{Sep_method}{Method of selecting subsample of biomass for separation into species components}
#'   \item{Carbonates}{Soil Carbonates (%)}
#'   \item{Ec}{Soil electrical conductivity (ds m-1)}
#'   \item{Silt}{Percent silt content in soil (%)}
#'   \item{Silt_fine}{Percent fine silt content in soil (%)}
#'   \item{Clay}{Percent clay content in soil (%)}
#'   \item{Sand}{Percent sand content in soil (%)}
#'   \item{Om}{Percent organic matter (%)}
#'   \item{Soil_type}{Soil type}
#'   \item{Humidity}{Percent humidity (%)}
#'   \item{Ca}{Calcium concentration (ppm)}
#'   \item{K}{Potassium concentration (ppm)}
#'   \item{N-NO3}{Nitrate concentration (ppm)}
#'    \item{Mg}{Magnesium concentration (ppm)}
#'   \item{Na}{Sodium concentration (ppm)}
#'   \item{P}{Phosphorus concentration (ppm)}
#'   \item{pH}{Soil pH}
#'   \item{Precip_s}{Total Annual precipitation (mm/year)}
#'   \item{Air_mean_a}{Mean annual air temperature (°C)}
#'   \item{Air_min_a}{Minimum average annual air temperature (°C)}
#'   \item{Air_max_a}{Maximum average annual air temperature (°C)}
#'}
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#'
"Combined"