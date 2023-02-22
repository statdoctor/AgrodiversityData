#' Forage quality data of the Agrodiversity experiment
#'
#'The \code{forage1} dataset provides details about forage quality per site for each harvest.
#'    The nutritive value of the harvested herbage, containing both sown species and weeds at each harvest, was measured for each plot.
#'     The primary forage quality analysis was carried out at the Christian-Albrechts-Universität Kiel, Kiel, Germany.
#'     Additional analysis for four North European sites was carried out at Agriculture and Agrifood Canada at Levis, Canada. 
#'     In addition, N concentration of bulk samples was locally analyzed by 21 sites. 
#'     Measurements are coded _K, _C or _l to indicate whether samples were analysed at Kiel, Canada or local laboratories. More details regarding the measurement of nutritive values are provided in E. Sturludottir et al. (2014).
#'    The missing data corresponds to the sites which did not perform the forage quality analysis. 
#'
#' @format A dataframe with 7782 rows and 62 variables:
#' \describe{
#'   \item{site}{Site ID number}
#'   \item{country}{Country}
#'   \item{year}{Year}
#'   \item{yearn}{Experimental year number}
#'   \item{nh}{Number of harvests}
#'   \item{harvest}{Harvest number (within year)}
#'   \item{harvest_dt}{Date of harvest}
#'   \item{plot}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{treat}{Indicator variable: 1=basic 30 plots; 2 and 3=additional treatment plots (some sites implemented two levels of additional treatments)}
#'   \item{rep}{Replicate number (applies only to sites 15 and 45)}
#'   \item{g1}{Initial sown proportion of fast-establishing grass}
#'   \item{g2}{Initial sown proportion of persistent grass}
#'   \item{l1}{Initial sown proportion of fast-establishing legume}
#'   \item{l2}{Initial sown proportion of persistent legume}
#'   \item{e}{Initial sown evenness}
#'   \item{dens}{Indicator variable: high=high level of initial sown biomass, low = low level (60% of high)}
#'  \item{local_n}{Indicator variable (Local lab analysis present=1, absent=0)}
#'   \item{Kiel}{Indicator variable (Kiel bulk sample present=1 , absent=0)}
#'   \item{Canada}{Indicator variable ( Canada bulk sample present=1 , absent=0)}
#'   \item{Kiel_sep}{Indicator variable ( Kiel separated sample present=1 , absent=0)}
#'   \item{N_l}{Nitrogen percent in total harvest yield (% of dry matter) (analysis performed by local lab)}
#'  \item{N_K}{Nitrogen percent in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{ash_K}{Ash in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{NDF_K}{Neutral Detergent Fibre in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{ADF_K}{Acid Detergent Fibre in total harvest yield (% of dry matter) (Kiel data)}
#'   \item{CDOMD_K}{Cellulase Digestible of Organic Matter of Dry Matter in total harvest yield (% of dry matter) (Kiel data)}
#'  \item{ME_K}{Metabolizable Energy in total harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_C}{Nitrogen percent in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{NDF_C}{Neutral Detergent Fibre in total harvest yield (% of dry matter) (Canadian data)}
#'  \item{ADF_C}{Acid Detergent Fibre in total harvest yield (% of dry matter) (Canadian data)}
#'   \item{IVTD_C}{In Vitro True Digestibility in total harvest yield (Canadian data)}
#'   \item{IVCWD_C}{In Vitro Cell Wall Digestibility in total harvest yield (Canadian data)}
#'   \item{N_g1_K}{Nitrogen percent in G1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ash_g1_K}{Ash in total G1 harvest yield (% of dry matter) (Kiel data)}
#'  \item{NDF_g1_K}{Neutral Detergent Fibre in total G1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ADF_g1_K}{Acid Detergent Fibre in total G1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{CDOMD_g1_K}{Cellulase Digestible of Organic Matter of Dry Matter in G1 harvest yield (% of dry matter) (Kiel data)}
#'  \item{ME_g1_K}{Metabolizable Energy in G1 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_g2_K}{Nitrogen percent in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ash_g2_K}{Ash in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{NDF_g2_K}{Neutral Detergent Fibre in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ADF_g2_K}{Acid Detergent Fibre in G2 harvest yield (% of dry matter) (Kiel data)}
#'  \item{CDOMD_g2_K}{Cellulase Digestible of Organic Matter of Dry Matter in G2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ME_g2_K}{Metabolizable Energy in G2 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_l1_K}{Nitrogen percent in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ash_l1_K}{Ash in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{NDF_l1_K}{Neutral Detergent Fibre in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ADF_l1_K}{Acid Detergent Fibre in L1 harvest yield (% of dry matter) (Kiel data)}
#'   \item{CDOMD_l1_K}{Cellulase Digestible of Organic Matter of Dry Matter in L1 harvest yield (% of dry matter) (Kiel data)}
#'  \item{ME_l1_K}{Metabolizable Energy in L1 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_l2_K}{Nitrogen percent in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ash_l2_K}{Ash in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{NDF_l2_K}{Neutral Detergent Fibre in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ADF_l2_K}{Acid Detergent Fibre in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{CDOMD_l2_K}{Cellulase Digestible of Organic Matter of Dry Matter in L2 harvest yield (% of dry matter) (Kiel data)}
#'   \item{ME_l2_K}{Metabolizable Energy in L2 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'  \item{N_weed_K}{Nitrogen percent in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{ash_weed_K}{Ash in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{NDF_weed_K}{Neutral Detergent Fibre in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{ADF_weed_K}{Acid Detergent Fibre in weed species harvest yield (% of dry matter) (Kiel data)}
#'   \item{CDOMD_weed_K}{Cellulase Digestible of Organic Matter of Dry Matter in weed species harvest yield (% of dry matter) (Kiel data)}
#'  \item{ME_weed_K}{Metabolizable Energy in weed species harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   }
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.

#' Sturludóttir, E., Brophy, C., Belanger, G., Gustavsson, A.M., Jørgensen, M., Lunnan, T. and Helgadóttir, Á., 2014. Benefits of mixing grasses and legumes for herbage yield and nutritive value in Northern Europe and Canada. Grass and forage science, 69(2), pp.229-240.
#' Dataset is available at: <https://doi.org/10.6084/m9.figshare.3560352.v1>
"forage1"
