#' Forage quality data of the Agrodiversity experiment
#'
#'The primary forage quality analysis was carried out at the Christian-Albrechts-Universität Kiel, Kiel, Germany.
#'     Additional analysis for four North European sites was carried out at Agriculture and Agrifood Canada at Levis, Canada. 
#'     In addition, N concentration of bulk samples was locally analyzed by 21 sites. 
#'     Measurements are coded _K, _C or _L to indicate whether samples were analysed at Kiel, Canada or local laboratories.
#'
#' @format A dataframe with 7782 rows and 62 variables:
#' \describe{
#'   \item{Site}{Site ID number}
#'   \item{country}{Country}
#'   \item{YEAR}{Year}
#'   \item{YEARN}{Experimental year number}
#'   \item{NH}{Number of harvests}
#'   \item{Harvest}{Harvest number (within year)}
#'   \item{HARVEST_DATE}{Date of harvest}
#'   \item{PLOT}{Plot number as per design (1–30 = core design; 31–48 = treatment plots; 49–68 = additional plots at sites 45 and 46)}
#'   \item{TREAT}{Indicator variable: 1=basic 30 plots; 2 and 3=additional treatment plots (some sites implemented two levels of additional treatments)}
#'   \item{REP}{Replicate number (applies only to sites 15 and 45)}
#'   \item{G1}{Initial sown proportion of fast-establishing grass}
#'   \item{G2}{Initial sown proportion of persistent grass}
#'   \item{L1}{Initial sown proportion of fast-establishing legume}
#'   \item{L2}{Initial sown proportion of persistent legume}
#'   \item{E}{Initial sown evenness}
#'   \item{DENS}{Indicator variable: high=high level of initial sown biomass, low = low level (60% of high)}
#'  \item{Local_N}{Indicator variable (Local lab analysis present=1, absent=0)}
#'   \item{Kiel}{Indicator variable (Kiel bulk sample present=1 , absent=0)}
#'   \item{Canada}{Indicator variable ( Canada bulk sample present=1 , absent=0)}
#'   \item{Kiel_sep}{Indicator variable ( Kiel separated sample present=1 , absent=0)}
#'   \item{N_L}{Nitrogen percent in total harvest yield (analysis performed by local lab) (% of dry matter)}
#'  \item{N_K}{Nitrogen percent in total harvest yield (Kiel data)}
#'   \item{Ash_K}{Ash in total harvest yield (Kiel data)}
#'   \item{NDF_K}{Neutral Detergent Fibre in total harvest yield (Kiel data)}
#'   \item{ADF_K}{Acid Detergent Fibre in total harvest yield (Kiel data)}
#'   \item{CDOMD_K}{Cellulase Digestible of Organic Matter of Dry Matter in total harvest yield (Kiel data)}
#'  \item{ME_K}{Metabolizable Energy in total harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_C}{Nitrogen percent in total harvest yield (Canadian data)}
#'   \item{NDF_C}{Neutral Detergent Fibre in total harvest yield (Canadian data)}
#'  \item{ADF_C}{Acid Detergent Fibre in total harvest yield (Canadian data)}
#'   \item{IVTD_C}{In Vitro True Digestibility in total harvest yield (Canadian data)}
#'   \item{IVCWD_C}{In Vitro Cell Wall Digestibility in total harvest yield (Canadian data)}
#'   \item{N_G1_K}{Nitrogen percent in G1 harvest yield (Kiel data)}
#'   \item{Ash_G1_K}{Ash in total G1 harvest yield (Kiel data)}
#'  \item{NDF_G1_K}{Neutral Detergent Fibre in total G1 harvest yield (Kiel data)}
#'   \item{ADF_G1_K}{Acid Detergent Fibre in total G1 harvest yield (Kiel data)}
#'   \item{CDOMD_G1_K}{Cellulase Digestible of Organic Matter of Dry Matter in G1 harvest yield (Kiel data)}
#'  \item{ME_G1_K}{Metabolizable Energy in G1 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_G2_K}{Nitrogen percent in G2 harvest yield (Kiel data)}
#'   \item{Ash_G2_K}{Ash in G2 harvest yield (Kiel data)}
#'   \item{NDF_G2_K}{Neutral Detergent Fibre in G2 harvest yield (Kiel data)}
#'   \item{ADF_G2_K}{Acid Detergent Fibre in G2 harvest yield (Kiel data)}
#'  \item{CDOMD_G2_K}{Cellulase Digestible of Organic Matter of Dry Matter in G2 harvest yield (Kiel data)}
#'   \item{ME_G2_K}{Metabolizable Energy in G2 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_L1_K}{Nitrogen percent in L1 harvest yield (Kiel data)}
#'   \item{Ash_L1_K}{Ash in L1 harvest yield (Kiel data)}
#'   \item{NDF_L1_K}{Neutral Detergent Fibre in L1 harvest yield (Kiel data)}
#'   \item{ADF_L1_K}{Acid Detergent Fibre in L1 harvest yield (Kiel data)}
#'   \item{CDOMD_L1_K}{Cellulase Digestible of Organic Matter of Dry Matter in L1 harvest yield (Kiel data)}
#'  \item{ME_L1_K}{Metabolizable Energy in L1 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   \item{N_L2_K}{Nitrogen percent in L2 harvest yield (Kiel data)}
#'   \item{Ash_L2_K}{Ash in L2 harvest yield (Kiel data)}
#'   \item{NDF_L2_K}{Neutral Detergent Fibre in L2 harvest yield (Kiel data)}
#'   \item{ADF_L2_K}{Acid Detergent Fibre in L2 harvest yield (Kiel data)}
#'   \item{CDOMD_L2_K}{Cellulase Digestible of Organic Matter of Dry Matter in L2 harvest yield (Kiel data)}
#'   \item{ME_L2_K}{Metabolizable Energy in L2 harvest yield (Kiel data) (MJ ME per kg of DM)}
#'  \item{N_weed_K}{Nitrogen percent in weed species harvest yield (Kiel data)}
#'   \item{Ash_weed_K}{Ash in weed species harvest yield (Kiel data)}
#'   \item{NDF_weed_K}{Neutral Detergent Fibre in weed species harvest yield (Kiel data)}
#'   \item{ADF_weed_K}{Acid Detergent Fibre in weed species harvest yield (Kiel data)}
#'   \item{CDOMD_weed_K}{Cellulase Digestible of Organic Matter of Dry Matter in weed species harvest yield (Kiel data)}
#'  \item{ME_weed_K}{Metabolizable Energy in weed species harvest yield (Kiel data) (MJ ME per kg of DM)}
#'   }
#' @source <https://repositori.udl.cat/handle/10459.1/60560>
"agroforage"
