#' Site information data of the Agrodiversity experiment
#'
#'The \code{agrosite} dataset provides Information about individual sites in the experiment specifying details of country, species, treatment, harvest etc.
#' @format A dataframe with 39 rows and 42 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Country}{Country}
#'   \item{	Location}{Location of site within country}
#'   \item{Lat_Deg}{Location of site (Latitude degrees)}
#'   \item{Lat_Min}{Location of site (Latitude minutes)}
#'  \item{Lat_NS}{Location of site (Latitude North South)}
#'   \item{Long_Deg}{Location of site (Longitude degrees)}
#'   \item{Long_Min}{Location of site (Longitude minutes)}
#'   \item{Long_EW}{Location of site (Longitude East West)}
#'   \item{Elevation}{Elevation of site}
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
#'   \item{P at sowing}{P fertilizer applied at establishment}
#'   \item{K at sowing}{K fertilizer applied at establishment}
#'   \item{N at sowing}{N fertilizer applied at establishment}
#'    \item{Annual P}{P fertilizer applied per annum}
#'    \item{Annual K}{K fertilizer applied per annum}
#'   \item{Annual N}{N fertilizer applied per annum}
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
#'}
#' @source <https://repositori.udl.cat/handle/10459.1/60560>
#' @section References:
#' 
#'Kirwan, L., Lüscher, A., Sebastià, M.T., Finn, J.A., Collins, R.P., Porqueddu, C., Helgadottir, A., Baadshaug, O.H., Brophy, C., Coran, C. and Dalmannsdottir, S., 2007. Evenness drives consistent diversity effects in intensive grassland systems across 28 European sites. Journal of Ecology, 95(3), pp.530-539.
#'
#'Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R.P., Čop, J., Delgado, I. and De Vliegher, A., 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 2014, vol. 95, num. 9, p. 2680-2680.
"agrosite"
