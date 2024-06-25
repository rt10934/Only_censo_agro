# Load required libraries
library(geobr)
library(ggplot2)
library(dplyr)
library(readxl)

# Define the variables to be mapped and their labels
vars <- c("difano_renda", "difano_renda_macro", "difano_renda_mun", "difano_renda_macro_mun", "difano_renda_rgi", "difano_renda_macro_rgi",
          "difmet_renda_macro_2017", "difmet_renda_mun_2017", "difmet_renda_macro_mun_2017", "difmet_renda_rgi_2017", "difmet_renda_macro_rgi_2017",
          "difmet_renda_macro_2021", "difmet_renda_mun_2021", "difmet_renda_macro_mun_2021", "difmet_renda_rgi_2021", "difmet_renda_macro_rgi_2021")

var_labels <- c("",
                "Por macroregião",
                "Por município",
                "Por município e macroregião",
                "Por RGI",
                "Por RGI e macroregião",
                "Por macroregião",
                "Por município",
                "Por município e macroregião",
                "Por RGI",
                "Por RGI e macroregião",
                "Por macroregião",
                "Por município",
                "Por município e macroregião",
                "Por RGI",
                "Por RGI e macroregião")

# Load municipality and state level shapefiles
mun_coor <- read_municipality(year = 2019) # You can choose the appropriate year
uf_coor <- read_state(year = 2019) # You can choose the appropriate year

# Import the data from the Excel file
data_path <- "C:/Users/torre/Downloads/giovani/dif_renda.xls"
your_data <- read_excel(data_path)

# Ensure the 'codmun' is numeric if necessary
your_data$codmun <- as.numeric(your_data$codmun)

# Adjust variables to convert "Igual" to 0 and "Diferente" to 1
adjust_vars <- function(data, vars) {
  for (var in vars) {
    data[[var]] <- ifelse(data[[var]] == "Igual", 0, ifelse(data[[var]] == "Diferente", 1, data[[var]]))
  }
  return(data)
}

# Adjust the relevant variables in the data
your_data <- adjust_vars(your_data, vars)

# Function to plot and save the map
plot_and_save <- function(var, var_label) {
  # Merge data with the shapefile
  data <- mun_coor %>%
    left_join(your_data, by = c("code_muni" = "codmun"))
  
  # Define custom color breaks and labels
  data[[var]] <- factor(data[[var]], levels = c("0", "1"), labels = c("Manteve classe de renda", "Alteração classe de renda"))
  colors <- c("Manteve classe de renda" = "white", "Alteração classe de renda" = "red")
  
  # Plot the map
  p <- ggplot(data = data) +
    geom_sf(aes_string(fill = var), color = "NA") +
    scale_fill_manual(values = colors, name = var_label) +
    ggplot2::geom_sf(data = uf_coor, mapping = ggplot2::aes(), color = "black", fill = NA) +
    labs(
      subtitle = var_label,
      title = "Diferença Classe de Renda (2017-2024)"
    ) +
    theme_minimal()
  
  # Save the plot
  ggsave(filename = paste0(var, ".jpg"), plot = p, path ="C:/Users/torre/Downloads/giovani/")
}

# Loop through the variables and create the maps
for (i in seq_along(vars)) {
  plot_and_save(vars[i], var_labels[i])
}
