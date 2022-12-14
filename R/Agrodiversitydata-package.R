#' AgrodiversityData:  Datasets of agrodiversity experiment.
#'
#'@description The package \code{AgrodiversityData} provides datasets of Agrodiversity experiment introduced by Kirwan et al. (2007). 
#'    It is  useful for ecologists studying relationship between diversity and ecosystem function and agronomists interested in sustainable intensification.
#'    The package gives access to datasets for building Diversity-Interaction (DI) models (Kirwan et al. 2009), a statistical technique to investigate the effects of species diversity on community-level responses.
#'    The data contain community-level response variable(s), proportions for each species and additional factors like treatment used in the experimental plots.  
#'
#'@section Agrodiversity Experiment: 
#'    A coordinated, continental-scale 33 site experiment that investigated plant diversity and ecosystem function in intensively-managed grassland communities across 17 countries. 
#'    The study intended to see whether the experimental increases in plant diversity in intensively managed grassland communities can increase the resource use efficiency. 
#'    Each site had 30 core plots, representing 15 grassland communities of 11 mixtures and 4 monocultures, sown at two seed abundances. 
#'    The four monoculture species consisted of two grasses and two legumes, of which one was fast establishing and the other temporally persistent. 
#'    The 11 mixture communities varied in the relative abundance of the four species at sowing. 
#'    All sites agreed a protocol and employed the same experimental methods with certain plot management factors like seeding rates and number of cuts, determined by local practice. 
#'    The data set contains species-specific biomass measurements (yield per species and of weeds) for all harvests up to four years at each site. 
#'    More information about the  experiment can be found at (Kirwan et al. 2007)   
#'
#'@section Research questions addressed by the experiment:
#'    The primary objectives of the agrodiversity experiment mentioned in Kirwan et al. (2014) are: 
#'    1. Were there yield benefits (overyielding) from diversity and, if so, did the benefits persist over three years and across sites?
#'    2. Were the yield benefits sufficiently large for transgressive overyielding to occur?
#'    3. Did the benefits of diversity occur and persist across the range of mixture communities used in this experiment?
#'    4. Did both the functional traits of nitrogen acquisition and temporal development contribute to the diversity effect (the excess of mixture performance over that of the monoculture performances of component species)?
#'    5. What were the differences in resistance to weed invasion, nutrient dynamics and forage quality among the different plant communities?
#'    6. What were the factors affecting the stability of species composition?
#'
#'@section Analysis based on Agrodiversity Experiment:
#'  To model the Biodiversity Ecosystem Function (BEF) relationship for a single ecosystem function based on species identities and interactions among pairs of species, Kirwan et al. (2009) introduced the Diversity-Interactions (DI) modelling approach. 
#'  A Generalised DI model has been developed (Connolly et al. 2013) to allow the qualification of results across spatial and temporal gradients in experiments. 
#'  As an extension of this univariate approach, Dooley et al. (2015) developed the multivariate DI model to analyse the multifunctional BEF relationship.
#'  Brophy et al. (2017) demonstrated the importance of the relative growth rates of competing species for community dynamics and species shift over time.  
#'  Connolly et al. (2018) discussed how mixtures transgressively suppress weed biomass along with the relationship between weed supression and species??? relative abundance. 
#'
#' @section Details of Datasets: 
#'  
#' 1. \code{\link{Site}}: Information about individual sites in the experiment specifying details of country, species, treatment, harvest etc.
#'
#' 2. \code{\link{Weather1}}: Information about daily temperature and precipitation for each site.
#'
#' 3. \code{\link{Soil}}: The soil characteristics and concentration of soil nutrients for each site.
#'
#' 4. \code{\link{Biomass1}}: The species-specific biomass measurements (yield per species and of weeds) for all harvests for up to four years at at each site.
#' 
#' 5. \code{\link{Forage}}: Details of forage quality.
#'
#' 6. \code{\link{Biomass2}}: Species-specific, weed and overall annual biomass for each site
#' 
#' 7. \code{\link{Weather2}}: Annual precipitation and temperature in each site during the experiment.
#' 
#' 8. \code{\link{Combined}}: Combined \code{\link{Biomass2}}, \code{\link{Weather2}}, \code{\link{Soil}} and \code{\link{Site}} data of the Agrodiversity experiment. 
#' 
#'@source Datasets are available at :<https://doi.org/10.6084/m9.figshare.3560352.v1>
#'
#'@section References:
#' 1. Kirwan, L., L??scher, A., Sebasti??, M.T., Finn, J.A., Collins, R.P., Porqueddu, C., Helgadottir, A., Baadshaug, O.H., Brophy, C., Coran, C. and Dalmannsdottir, S., 2007. Evenness drives consistent diversity effects in intensive grassland systems across 28 European sites. Journal of Ecology, 95(3), pp.530-539.
#'
#' 2.	Kirwan, L., Connolly, J., Finn, J.A., Brophy, C., L??scher, A., Nyfeler, D. and Sebasti??, M.T., 2009. Diversity???interaction modeling: estimating contributions of species identities and interactions to ecosystem function. Ecology, 90(8), pp.2032-2038.
#' 
#' 3.	Connolly, J., Bell, T., Bolger, T., Brophy, C., Carnus, T., Finn, J.A., Kirwan, L., Isbell, F., Levine, J., L??scher, A. and Picasso, V., 2013. An improved model to predict the effects of changing biodiversity levels on ecosystem function. Journal of Ecology, 101(2), pp.344-355.
#' 
#' 4. Finn, J.A., Kirwan, L., Connolly, J., Sebasti??, M.T., Helgadottir, A., Baadshaug, O.H., B??langer, G., Black, A., Brophy, C., Collins, R.P. and ??op, J., 2013. Ecosystem function enhanced by combining four functional types of plant species in intensively managed grassland mixtures: a 3???year continental???scale field experiment. Journal of Applied Ecology, 50(2), pp.365-375.
#' 
#' 5. Laura Kirwan, John Connolly, Caroline Brophy, Ole Baadshaug, Gilles Belanger, Alistair Black, Tim Carnus, Rosemary Collins, Jure ??op, Ignacio Delgado, Alex De Vliegher, Anjo Elgersma, Bodil Frankow-Lindberg, Piotr Golinski, Philippe Grieu, Anne-Maj Gustavsson, ??slaug Helgad??ttir, Mats H??glind, Olivier Huguenin-Elie, Marit J??rgensen, ??ydr?? Kad??iulien??, Tor Lunnan, Andreas L??scher, P??ivi Kurki, Claudio Porqueddu, M.-Teresa Sebastia, Ulrich Thumm, David Walmsley, John Finn. 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp. 2680-2680. 
#'
#' 6.	Dooley, ??., Isbell, F., Kirwan, L., Connolly, J., Finn, J.A. and Brophy, C., 2015. Testing the effects of diversity on ecosystem multifunctionality using a multivariate model. Ecology Letters, 18(11), pp.1242-1251.
#'
#' 7. Brophy, C., Finn, J.A., L??scher, A., Suter, M., Kirwan, L., Sebasti??, M.T., Helgad??ttir, ??., Baadshaug, O.H., B??langer, G., Black, A. and Collins, R.P., 2017. Major shifts in species??? relative abundance in grassland mixtures alongside positive effects of species diversity in yield: A continental???scale experiment. Journal of Ecology, 105(5), pp.1210-1222.
#'
#' 8. Connolly, J., Sebasti??, M.T., Kirwan, L., Finn, J.A., Llurba, R., Suter, M., Collins, R.P., Porqueddu, C., Helgad??ttir, ??., Baadshaug, O.H. and B??langer, G., 2018. Weed suppression greatly increased by plant diversity in intensively managed grasslands: A continental???scale experiment. Journal of Applied Ecology, 55(2), pp.852-862.
#'  
#'@seealso Package: DImodels
#'  
#'@examples 
#'
#'  ## Work with Biomass1 dataset
#'     library(AgrodiversityData)
#' 
#'  ## Load the data
#'     data(Biomass1)
#'  
#'  ## To see the data structure
#'     str(Biomass1)
#'  
#'  ## To get summary statistics of Total harvest Yield
#'     summary(Biomass1$HARV_YIELD)
#'  
#'  ## To visualize the normality of the data
#'     qqnorm(Biomass1$HARV_YIELD)
#'  
#'  ## To check whether median yield is same for High and Low seed densities.
#'     test<-wilcox.test(Biomass1$HARV_YIELD~Biomass1$DENS)
#'     test
#'
#' @docType package
#' @name AgrodiversityData
NULL
