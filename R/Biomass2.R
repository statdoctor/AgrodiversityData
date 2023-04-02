#' Annual yield data of the Agrodiversity experiment
#'
#'@description 
#'   The \code{biomass2} dataset is a summary dataset based on \code{biomass1}. 
#'    It provides annual yield for each species obtained by sum the values at each harvest within a year for each plot in a site. 
#'    In the agrodiversity experiment, the herbage dry matter yield (t/ha) of the four sown species and pooled weed species was recorded at each harvest over a period of up to 3 years at each site where year 1 was the first full year after establishment. 
#'    Subsamples of the yield were separated and used to estimate the yield of each species type (g1,g2,l1,l2) and pooled weed species. 
#'    Some sites did not separate at each harvest but did measure total yield; in these cases, the harvests that were separated were used to estimate the components of each species in the accumulated annual yield before summarizing. The detailed steps are given below.
#' 
#' @details 
#'  The \code{biomass2} dataset is from a coordinated, continental-scale grassland experiment conducted in 33 sites across 17 countries. 
#'  The experiment compared the agronomic performance of monocultures and 4-species mixtures that varied in the relative abundance of the component species at sowing.
#'  It investigated the effects of different facets of diversity (composition, richness, relative abundance and genetic diversity) on ecosystem functions like species-specific biomass, forage quality and weed suppression. 
#'  The coordination of this network was supported by EU COST Action 852: Quality Legume-Based Forage Systems for Contrasting Environments. 
#'  More information about the experiment can be found at Kirwan et al. 2014; we recommend that and anyone using these data and the AgrodiversityData package should cite the aforementioned source.
#' 
#'
#'@section Steps for obtaining the \code{biomass2} dataset:
#'    1. In the \code{biomass1} dataset, created  a duplicate for harv_yield and renamed it as an_yield
#'    2. If an_yield is missing, then replace the harv_yield with NA for that record.
#'    3. After grouping the data by site, year, plot and rep, find averages for each species type, weed and for total yield after removing missing data .
#'    4. Find proportion of yield for each category.
#'    5. If the individual species yield is missing (say g1_y), the estimated yield is find by multiplying the corresponding species sown proportion with an_yield (the total yield for the plot, which is not separated) and repeat the same for rest of the species and weed.
#'    6. Use this extrapolated data to find the annual yield by summing each harvest within each year for a plot, grouped by rep in each site. 
#'    7. The dataset obtained in step 6 is merged with selected variables from \code{biomass1} dataset to incorporate species proportions, treatment and harvest details.
#'    8. The missing data in \code{biomass2} is either due to missing unseparated annual yield or if all harvest details in a site are missing. 
#'
#' @format A dataframe with 3926 rows and 19 variables:
#' \describe{
#'   \item{site}{Site ID number}
#'   \item{country}{Country}
#'   \item{year}{Year}
#'   \item{yearn}{Experimental year number}
#'   \item{nh}{Number of harvests – number of times the whole plot was cut in a year}
#'   \item{plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{g1}{Initial sown proportion of fast-establishing grass}
#'   \item{g2}{Initial sown proportion of persistent grass}
#'   \item{l1}{Initial sown proportion of fast-establishing legume}
#'   \item{l2}{Initial sown proportion of persistent legume}
#'   \item{e}{Initial sown evenness}
#'   \item{dens}{Indicator variable: high=high level of initial sown biomass, low = low level (60%of high)}
#'   \item{type}{Species type: 0=monoculture, 1=mixture}
#'   \item{richness}{1=monoculture, 2= one species dominent mixture, 3= two species dominent mixture, 4= equi-proportional mixture}
#'   \item{an_g1}{Annual harvest dry matter yield of fast-establishing grass}
#'   \item{an_g2}{Annual harvest dry matter yield of persistent grass}
#'   \item{an_l1}{Annual harvest dry matter yield of fast-establishing legume}
#'   \item{an_l2}{Annual harvest dry matter yield of persistent legume }
#'   \item{an_weed}{Annual harvest dry matter yield of weed species}
#'   \item{an_yield}{Annual harvest dry matter yield of all species including weed yield}
#'}
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#' 
"biomass2"