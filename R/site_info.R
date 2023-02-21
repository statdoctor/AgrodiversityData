#' Site information data of the Agrodiversity experiment
#'
#'The \code{Site} dataset provides Information about individual sites in the experiment specifying details of country, species, treatment, harvest etc.
#' @format A dataframe with 39 rows and 42 variables:
#' \describe{
#'   \item{site}{Site ID number}
#'   \item{country}{Country}
#'   \item{location}{Location of site within country}
#'   \item{lat_deg}{Location of site (Latitude degrees)}
#'   \item{lat_min}{Location of site (Latitude minutes)}
#'  \item{lat_ns}{Location of site (Latitude North South)}
#'   \item{long_deg}{Location of site (Longitude degrees)}
#'   \item{long_min}{Location of site (Longitude minutes)}
#'   \item{long_ew}{Location of site (Longitude East West)}
#'   \item{elevation}{Elevation of site (m above sea level)}
#'   \item{mixture_type}{Seed mixture used: ME=Mid European, NE=Northern European,DM=Dry Mediterranean, MM=Moist Mediterranean, Other=Site specific mix}
#'  \item{g1_species}{Fast establishing grass species}
#'   \item{g1_variety}{Fast establishing grass variety}
#'   \item{g2_species}{Persistent grass species}
#'   \item{g2_variety}{Persistent grass variety}
#'   \item{l1_species}{Fast establishing legume species}
#'   \item{l1_variety}{Fast establishing legume variety}
#'   \item{l2_species}{Persistent legume species}
#'   \item{l2_variety}{Persistent legume variety}
#'    \item{sowing_date}{Date the plots were established}
#'   \item{sowing_method}{Method of sowing – drilled / hand sown}
#'   \item{P_sown}{P fertilizer applied at establishment (Kg/ha)}
#'   \item{K_sown}{K fertilizer applied at establishment (Kg/ha)}
#'   \item{N_sown}{N fertilizer applied at establishment (Kg/ha)}
#'    \item{an_P}{P fertilizer applied per annum (Kg/ha)}
#'    \item{an_K}{K fertilizer applied per annum (Kg/ha)}
#'   \item{an_N}{N fertilizer applied per annum (Kg/ha)}
#'   \item{y1_harv}{Number of harvests taken in the year 1 of the experiment (year after sowing)}
#'   \item{y2_harv}{Number of harvests taken in the year 2 of the experiment}
#'   \item{y3_harv}{Number of harvests taken in the year 3 of the experiment (year after sowing)}
#'   \item{y4_harv}{Number of harvests taken in the year 4 of the experiment}
#'   \item{harvest_ht}{Cutting height when taking harvests (cm)}
#'   \item{sep_method}{Method of selecting subsample of biomass for separation into species components}
#'   \item{plot_size}{Size of plots (m²)}
#'   \item{area_yield}{Area within plot that was sampled for total aboveground biomass (m²)}
#'   \item{area_composition}{Area within plot that was sampled for separation into species components in m² (if fixed quadrat method was used)}
#'   \item{harvest_method}{Method used to harvest biomass (manually or by machine)}
#'   \item{treat_details}{Details of treatment(s) applied (where relevant)}
#'   \item{cleaning_cut_date}{Date of cleaning cut (if any)}
#'   \item{weeding_details}{Details of any weeding undertaken during establishment}
#'}
#' @source 
#' Kirwan, L., Connolly, J., Brophy, C., Baadshaug, O.H., Belanger, G., Black, A., Carnus, T., Collins, R., Čop, J., Delgado, I., De Vliegher, A., Elgersma, A., Frankow-Lindberg, B., Golinski, P., Grieu, P., Gustavsson, A.-M., Helgadottir, A., Höglind, M., Huguenin-Elie, O., Jørgensen, M., Kadziulienė, Z., Lunnan, T., Lüscher, A., Kurki P., Porqueddu, C.,  Sebastià, M.T., Thumm, U., Walmsley, D. and Finn, J.A, 2014. The Agrodiversity Experiment: three years of data from a multisite study in intensively managed grasslands. Ecology, 95(9), pp.2680-2680.
#' 
#' Dataset is available at: <https://doi.org/10.6084/m9.figshare.3560352.v1>
"site_info"

