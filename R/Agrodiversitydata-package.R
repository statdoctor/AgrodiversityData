#' AgrodiversityData:  Datasets of agrodiversity experiment.
#'
#'@description The package \code{AgrodiversityData} provides six datasets of Agrodiversity experiment. 
#'    It is  useful for ecologists studying relationships between diversity and ecosystem function and agronomists interested in sustainable intensification. 
#'
#'@section Agrodiversity Experiment: 
#'A coordinated, continental-scale 33 site experiment that investigated plant diversity and ecosystem function in intensively-managed grassland communities across 17 countries. 
#'   
#'
#' @section Details of Datasets: 
#' 
#' 1. \code{\link{Site}}: Information about individual sites in the experiment specifying details of country, species, treatment, harvest etc. .
#'
#' 2. \code{\link{Climate}}: Information about daily temperature and precipitation for each site.
#'
#' 3. \code{\link{Soil}}: The soil characteristics and concentration of soil nutrients for each site.
#'
#' 4. \code{\link{Biomass}}: The species-specific biomass measurements (yield per species and of weeds) for all harvests for up to four years at 33 sites.
#' 
#' 5. \code{\link{Forage}}: Details about forage quality.
#'
#' 6. \code{\link{Biosum}}: Species-specific biomass measurements (yield per species and of weeds) at 33 sites summarized by year.
#' 
#'@examples 
#'
#'  ## Work with Biomass dataset
#'     library(AgrodiversityData)
#' 
#'  ## Load the data
#'     data(Biomass)
#'  
#'  ## To see the data structure
#'     str(Biomass)
#'  
#'  ## To get summary statistics of Total harvest Yield
#'     summary(Biomass$HARV_YIELD)
#'  
#'  ## To check the normality of the data
#'     qqnorm(Biomass$HARV_YIELD)
#'  
#'  ## To check whether mean yield is same for High and Low seed densities.
#'     t.test(Biomass$HARV_YIELD~Biomass$DENS)
#'
#'
#'@seealso For more information about data :<https://t-stor.teagasc.ie/handle/11019/774>
#'
#' @section References:
#'Kirwan, L., Lüscher, A., Sebastià, M.T., Finn, J.A., Collins, R.P., Porqueddu, C., Helgadottir, A., Baadshaug, O.H., Brophy, C., Coran, C. and Dalmannsdottir, S., 2007. Evenness drives consistent diversity effects in intensive grassland systems across 28 European sites. Journal of Ecology, 95(3), pp.530-539.
#'
#'Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R.P., Čop, J., Delgado, I. and De Vliegher, A., 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 2014, vol. 95, num. 9, p. 2680-2680.
#' @docType package
#' @name AgrodiversityData
NULL

