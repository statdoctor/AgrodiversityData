#' Forage quality data of the Agrodiversity experiment
#'
#'The \code{Forage1} dataset provides details about forage quality per site for each harvest.
#'    The nutritive value of the harvested herbage, containing both sown species and weeds at each harvest, was measured for each plot.
#'     The primary forage quality analysis was carried out at the Christian-Albrechts-Universität Kiel, Kiel, Germany.
#'     Additional analysis for four North European sites was carried out at Agriculture and Agrifood Canada at Levis, Canada. 
#'     In addition, N concentration of bulk samples was locally analyzed by 21 sites. 
#'     Measurements are coded _k, _c or _l to indicate whether samples were analysed at Kiel, Canada or local laboratories. More details regarding the measurement of nutritive values are provided in E. Sturludottir et al. (2014).
#'    The missing data corresponds to the sites which did not perform the forage quality analysis. 
#'
#' @format A dataframe with 7782 rows and 62 variables:
#' \describe{
#'   \item{SITE}{Site ID number}
#'   \item{Country}{Country}
#'   \item{Year}{Year}
#'   \item{Yearn}{Experimental year number}
#'   \item{Nh}{Number of harvests}
#'   \item{Harvest}{Harvest number (within year)}
#'   \item{Harvest_dt}{Date of harvest}
#'   \item{Plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{Treat}{Indicator variable: 1=basic 30 plots; 2 and 3=additional treatment plots (some sites implemented two levels of additional treatments)}
#'   \item{Rep}{Replicate number (applies only to sites 15 and 45)}
#'   \item{G1}{Initial sown proportion of fast-establishing grass}
#'   \item{G2}{Initial sown proportion of persistent grass}
#'   \item{L1}{Initial sown proportion of fast-establishing legume}
#'   \item{L2}{Initial sown proportion of persistent legume}
#'   \item{E}{Initial sown evenness}
#'   \item{Dens}{Indicator variable: high=high level of initial sown biomass, low = low level (60% of high)}
#'  \item{Local_n}{Indicator variable (Local lab analysis present=1, absent=0)}
#'   \item{Kiel}{Indicator variable (Kiel bulk sample present=1 , absent=0)}
#'   \item{Canada}{Indicator variable ( Canada bulk sample present=1 , absent=0)}
#'   \item{Kiel_sep}{Indicator variable ( Kiel separated sample present=1 , absent=0)}
#'   \item{N_l}{Nitrogen percent in total harvest yield (% of dry matter) (analysis performed by local lab)}
#'  \item{N_k}{Nitrogen percent in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ash_k}{Ash in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ndf_k}{Neutral Detergent Fibre in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{Adf_k}{Acid Detergent Fibre in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{Cdomd_k}{Cellulase Digestible of Organic Matter of Dry Matter in total harvest yield (% of dry matter) (Kiel data)}
#'  \item{Me_k}{Metabolizable Energy in total harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_c}{Nitrogen percent in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{Ndf_c}{Neutral Detergent Fibre in total harvest yield (% of dry matter) (Canadian data)}
#'  \item{Adf_c}{Acid Detergent Fibre in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{Ivtd_c}{In Vitro True Digestibility in total harvest yield (Canadian data)}
#'   \item{Ivcwd_c}{In Vitro Cell Wall Digestibility in total harvest yield (Canadian data)}
#'   \item{N_G1_k}{Nitrogen percent in G1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ash_G1_k}{Ash in total G1 harvest yield (% of dry matter) (Kiel data)}
#'  \item{Ndf_G1_k}{Neutral Detergent Fibre in total G1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Adf_G1_k}{Acid Detergent Fibre in total G1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Cdomd_G1_k}{Cellulase Digestible of Organic Matter of Dry Matter in G1 harvest yield (% of dry matter) (Kiel data)}
#'  \item{Me_G1_k}{Metabolizable Energy in G1 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_G2_k}{Nitrogen percent in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ash_G2_k}{Ash in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ndf_G2_k}{Neutral Detergent Fibre in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Adf_G2_k}{Acid Detergent Fibre in G2 harvest yield (% of dry matter) (Kiel data)}
#'  \item{Cdomd_G2_k}{Cellulase Digestible of Organic Matter of Dry Matter in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Me_G2_k}{Metabolizable Energy in G2 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_L1_k}{Nitrogen percent in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ash_L1_k}{Ash in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ndf_L1_k}{Neutral Detergent Fibre in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Adf_L1_k}{Acid Detergent Fibre in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Cdomd_L1_k}{Cellulase Digestible of Organic Matter of Dry Matter in L1 harvest yield (% of dry matter) (Kiel data)}
#'  \item{Me_L1_k}{Metabolizable Energy in L1 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_L2_k}{Nitrogen percent in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ash_L2_k}{Ash in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ndf_L2_k}{Neutral Detergent Fibre in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Adf_L2_k}{Acid Detergent Fibre in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Cdomd_L2_k}{Cellulase Digestible of Organic Matter of Dry Matter in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{Me_L2_k}{Metabolizable Energy in L2 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'  \item{N_weed_k}{Nitrogen percent in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ash_weed_k}{Ash in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{Ndf_weed_k}{Neutral Detergent Fibre in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{Adf_weed_k}{Acid Detergent Fibre in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{Cdomd_weed_k}{Cellulase Digestible of Organic Matter of Dry Matter in weed species harvest yield (% of dry matter) (Kiel data)}
#'  \item{Me_weed_k}{Metabolizable Energy in weed species harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   }
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.

#' Sturludóttir, E., Brophy, C., Belanger, G., Gustavsson, A.M., Jørgensen, M., Lunnan, T. and Helgadóttir, Á., 2014. Benefits of mixing grasses and legumes for herbage yield and nutritive value in Northern Europe and Canada. Grass and forage science, 69(2), pp.229-240.
#' Dataset is available at: <https://doi.org/10.6084/m9.figshare.3560352.v1>
"Forage1"
