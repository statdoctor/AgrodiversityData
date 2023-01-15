#' Combined Biosum, Climatesum and Soil and Site information data of the agrodiversity experiment
#'
#' The \code{Combined} dataset provides information on all harvest years for all plots in each experimental site along with climate, soil and site details.
#' 
#' @format A dataframe with 3828 rows and 76 variables:
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
#'   \item{G1_YN}{Annual harvest dry matter yield of fast-establishing grass}
#'   \item{G2_YN}{Annual harvest dry matter yield of persistent grass}
#'   \item{L1_YN}{Annual harvest dry matter yield of fast-establishing legume}
#'   \item{L2_YN}{Annual harvest dry matter yield of persistent legume}
#'   \item{WEED_YN}{Annual harvest dry matter yield of weed species}
#'   \item{HARV_YIELD2}{Annual harvest dry matter yield of all species including weed yield}
#'   \item{PRECIP_S}{Total Annual precipitation (mm/year)}
#'   \item{AIR_MIN_A}{Minimum average annual air temperature (°C)}
#'   \item{AIR_MEAN_A}{Mean annual air temperature (°C)}
#'   \item{AIR_MAX_A}{Maximum average annual air temperature (°C)}
#'   \item{Carbonates}{Soil Carbonates (%)}
#'   \item{EC}{Soil electrical conductivity (ds m-1)}
#'   \item{Silt}{Percent silt content in soil (%)}
#'   \item{Silt_fine}{Percent fine silt content in soil (%)}
#'   \item{Clay}{Percent clay content in soil (%)}
#'   \item{Sand}{Percent sand content in soil (%)}
#'   \item{OM}{Percent organic matter (%)}
#'   \item{Soil_Type}{Soil type}
#'   \item{Humidity}{Percent humidity (%)}
#'   \item{Ca}{Calcium concentration (ppm)}
#'   \item{K}{Potassium concentration (ppm)}
#'   \item{N-NO3}{Nitrate concentration (ppm)}
#'    \item{Mg}{Magnesium concentration (ppm)}
#'   \item{Na}{Sodium concentration (ppm)}
#'   \item{P}{Phosphorus concentration (ppm)}
#'   \item{pH}{Soil pH}
#'   \item{	Location}{Location of site within country}
#'   \item{Lat_Deg}{Location of site (Latitude degrees)}
#'   \item{Lat_Min}{Location of site (Latitude minutes)}
#'  \item{Lat_NS}{Location of site (Latitude North South)}
#'   \item{Long_Deg}{Location of site (Longitude degrees)}
#'   \item{Long_Min}{Location of site (Longitude minutes)}
#'   \item{Long_EW}{Location of site (Longitude East West)}
#'   \item{Elevation}{Elevation of site (m above sea level)}
#'   \item{Mixture Type}{Seed mixture used: ME=Mid European, NE=Northern European,DM=Dry Mediterranean, MM=Moist Mediterranean, Other=Site specific mix}
#'    \item{G1 Species}{Fast establishing grass species}
#'   \item{G1 Variety}{Fast establishing grass variety}
#'   \item{G2 Species}{Persistent grass species}
#'   \item{G2 Variety}{Persistent grass variety}
#'   \item{L1 Species}{Fast establishing legume species}
#'   \item{L1 Variety}{Fast establishing legume variety}
#'   \item{L2 Species}{Persistent legume species}
#'   \item{L2 Variety}{Persistent legume variety}
#'    \item{Sowing Date}{Date the plots were established}
#'   \item{Sowing Method}{Method of sowing – drilled / hand sown}
#'   \item{P at sowing}{P fertilizer applied at establishment (Kg/ha)}
#'   \item{K at sowing}{K fertilizer applied at establishment (Kg/ha)}
#'   \item{N at sowing}{N fertilizer applied at establishment (Kg/ha)}
#'    \item{Annual P}{P fertilizer applied per annum (Kg/ha)}
#'    \item{Annual K}{K fertilizer applied per annum (Kg/ha)}
#'   \item{Annual N}{N fertilizer applied per annum (Kg/ha)}
#'   \item{Year 1 number of harvests}{Number of harvests taken in the year 1 of the experiment (year after sowing)}
#'   \item{Year 2 number of harvests}{Number of harvests taken in the year 2 of the experiment}
#'   \item{Year 3 number of harvests}{Number of harvests taken in the year 3 of the experiment (year after sowing)}
#'   \item{Year 4 number of harvests}{Number of harvests taken in the year 4 of the experiment}
#'   \item{Harvest Height}{Cutting height when taking harvests (cm)}
#'   \item{Method of separation}{Method of selecting subsample of biomass for separation into species components}
#'   \item{Plot Size}{Size of plots (m²)}
#'   \item{Area Sampled for Total Yield}{Area within plot that was sampled for total aboveground biomass (m²)}
#'   \item{Area Sampled for Composition}{Area within plot that was sampled for separation into species components in m² (if fixed quadrat method was used)}
#'   \item{Harvesting Method}{Method used to harvest biomass (manually or by machine)}
#'   \item{Treatment details}{Details of treatment(s) applied (where relevant)}
#'   \item{Cleaning cut date}{Date of cleaning cut (if any)}
#'   \item{Weeding details}{Details of any weeding undertaken during establishment}
#'   }
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#' 
"Combined"