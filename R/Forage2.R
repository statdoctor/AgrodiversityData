#'  Annual forage quality data of the Agrodiversity experiment 
#'
#'  The \code{Forage2} dataset provides details about annual forage quality for sites including Iceland(a), Norway(a), Sweden and Canada. 
#'  The samples for the analysis were taken from every plot at every harvest, except at Iceland(a), plots with co-dominating species were omitted the first year. 
#'  In Iceland_a the nutritive values are missing for Plot 12 and 27 in year 2.
#'  All analyses were carried out on total yield, containing both sown and unsown species.    
#'  The concentrations of Adf, Ndf, and N, and Ivtd were then predicted in all samples using the selected  near-infrared spectrophotometer (NIRS) calibration equations. 
#'  Crude protein (Cp) was calculated  from the nitrogen content by multiplying N by 6.25 and in vitro cell wall digestibility (Ivcwd) was calculated using the following equation:
#' \eqn{Ivcwd = 1000-((1000 – Ivtd)/(Ndf/1000))}. 
#'  Annual weighted averages of forage quality value for each plot was calculated as: 
#'  \eqn{Fq_i= \sum_{j=1}^{h}(QM_{ij}*Y_j)/\sum_{j=1}^{h}Y_j}, 
#'  where \eqn{Fq_i} is the weighted average of forage quality value (canadian analysis) i (Adf_c,Ndf_c,Ivtd_c,Ivcwd_c and C_p), \eqn{QM_{ij}} is the quality measure for quality value \eqn{i} in the harvest \eqn{j} and \eqn{Y_j} represent yield of harvest \eqn{j}. 
#'  More details about the measurement of individual quality components can be found at E. Sturludottir et al. (2014).
#'
#' @format A dataframe with 408 rows and 10 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Country}{Country}
#'   \item{Year}{Year}
#'   \item{Plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{Nh}{Number of harvests}
#'   \item{N_ca}{Average nitrogen percent in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{Ndf_ca}{Average neutral detergent fibre in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{Adf_ca}{Average acid detergent fibre in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{Ivtd_ca}{Average in vitro true digestibility in total harvest yield (Canadian data)}
#'   \item{Ivcwd_ca}{Average in vitro cell wall digestibility in total harvest yield (Canadian data)}
#'   \item{Cp_ca}{Average crude protein in total harvest yield (Canadian data)}
#'   \item{Fq}{Annual forage quality in total harvest yield (Canadian data)}
#'   }
#'   
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#'
#' Sturludóttir, E., Brophy, C., Belanger, G., Gustavsson, A.M., Jørgensen, M., Lunnan, T. and Helgadóttir, Á., 2014. Benefits of mixing grasses and legumes for herbage yield and nutritive value in Northern Europe and Canada. Grass and forage science, 69(2), pp.229-240.
#' 
"Forage2"
