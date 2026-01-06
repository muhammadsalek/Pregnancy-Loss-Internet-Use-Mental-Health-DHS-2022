
install.packages(c("ggplot2", "dplyr", "forcats", "viridis", "scales"))



####Anxiety pregnancy loss####

# Load necessary packages
library(ggplot2)
library(dplyr)
library(forcats)

# Create data frame
forest_data <- data.frame(
  variable = c(
    "One loss", "Two or more losses", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members", 
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing", 
    "Multiple Unions", "Media Exposure", "Chattogram", "Dhaka", "Khulna", 
    "Mymensingh", "Rajshahi", "Rangpur", "Sylhet"
  ),
  OR = c(
    1.310367, 1.814573, 1.278914, 0.8735536, 1.327507, 1.376475, 0.8740655,
    0.7870323, 0.8934228, 1.835192, 0.8062103, 0.9142283, 1.335645,
    1.044521, 1.170533, 0.8390068, 1.033844, 0.859789, 1.007478, 1.45822,
    1.077461
  ),
  lower_CI = c(
    1.197169, 1.54246, 1.141154, 0.7893883, 1.20468, 1.165539, 0.7812806,
    0.7072059, 0.8176124, 1.50089, 0.6674539, 0.8295356, 1.117105,
    0.9466911, 0.918113, 0.6763229, 0.8298647, 0.6748549, 0.7860862,
    1.168812, 0.8367241
  ),
  upper_CI = c(
    1.434269, 2.134691, 1.433304, 0.9666926, 1.462857, 1.625585, 0.9778695,
    0.8758691, 0.9762626, 2.243957, 0.9738127, 1.007568, 1.596937,
    1.15246, 1.492353, 1.040823, 1.28796, 1.095402, 1.291221, 1.819288,
    1.387461
  )
)
# Load necessary packages
library(ggplot2)
library(dplyr)
library(forcats)

# Create data frame
forest_data <- data.frame(
  variable = c(
    "One loss", "Two or more losses", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members", 
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing", 
    "Multiple Unions", "Media Exposure", "Chattogram", "Dhaka", "Khulna", 
    "Mymensingh", "Rajshahi", "Rangpur", "Sylhet"
  ),
  OR = c(
    1.310367, 1.814573, 1.278914, 0.8735536, 1.327507, 1.376475, 0.8740655,
    0.7870323, 0.8934228, 1.835192, 0.8062103, 0.9142283, 1.335645,
    1.044521, 1.170533, 0.8390068, 1.033844, 0.859789, 1.007478, 1.45822,
    1.077461
  ),
  lower_CI = c(
    1.197169, 1.54246, 1.141154, 0.7893883, 1.20468, 1.165539, 0.7812806,
    0.7072059, 0.8176124, 1.50089, 0.6674539, 0.8295356, 1.117105,
    0.9466911, 0.918113, 0.6763229, 0.8298647, 0.6748549, 0.7860862,
    1.168812, 0.8367241
  ),
  upper_CI = c(
    1.434269, 2.134691, 1.433304, 0.9666926, 1.462857, 1.625585, 0.9778695,
    0.8758691, 0.9762626, 2.243957, 0.9738127, 1.007568, 1.596937,
    1.15246, 1.492353, 1.040823, 1.28796, 1.095402, 1.291221, 1.819288,
    1.387461
  )
)
# Load necessary packages
library(ggplot2)
library(dplyr)
library(forcats)

# Create data frame
forest_data <- data.frame(
  variable = c(
    "One loss", "Two or more losses", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members", 
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing", 
    "Multiple Unions", "Media Exposure", "Chattogram", "Dhaka", "Khulna", 
    "Mymensingh", "Rajshahi", "Rangpur", "Sylhet"
  ),
  OR = c(
    1.310367, 1.814573, 1.278914, 0.8735536, 1.327507, 1.376475, 0.8740655,
    0.7870323, 0.8934228, 1.835192, 0.8062103, 0.9142283, 1.335645,
    1.044521, 1.170533, 0.8390068, 1.033844, 0.859789, 1.007478, 1.45822,
    1.077461
  ),
  lower_CI = c(
    1.197169, 1.54246, 1.141154, 0.7893883, 1.20468, 1.165539, 0.7812806,
    0.7072059, 0.8176124, 1.50089, 0.6674539, 0.8295356, 1.117105,
    0.9466911, 0.918113, 0.6763229, 0.8298647, 0.6748549, 0.7860862,
    1.168812, 0.8367241
  ),
  upper_CI = c(
    1.434269, 2.134691, 1.433304, 0.9666926, 1.462857, 1.625585, 0.9778695,
    0.8758691, 0.9762626, 2.243957, 0.9738127, 1.007568, 1.596937,
    1.15246, 1.492353, 1.040823, 1.28796, 1.095402, 1.291221, 1.819288,
    1.387461
  )
)
# Load necessary packages
library(ggplot2)
library(dplyr)
library(forcats)

# Create data frame
forest_data <- data.frame(
  variable = c(
    "One loss", "Two or more losses", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members", 
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing", 
    "Multiple Unions", "Media Exposure", "Chattogram", "Dhaka", "Khulna", 
    "Mymensingh", "Rajshahi", "Rangpur", "Sylhet"
  ),
  OR = c(
    1.310367, 1.814573, 1.278914, 0.8735536, 1.327507, 1.376475, 0.8740655,
    0.7870323, 0.8934228, 1.835192, 0.8062103, 0.9142283, 1.335645,
    1.044521, 1.170533, 0.8390068, 1.033844, 0.859789, 1.007478, 1.45822,
    1.077461
  ),
  lower_CI = c(
    1.197169, 1.54246, 1.141154, 0.7893883, 1.20468, 1.165539, 0.7812806,
    0.7072059, 0.8176124, 1.50089, 0.6674539, 0.8295356, 1.117105,
    0.9466911, 0.918113, 0.6763229, 0.8298647, 0.6748549, 0.7860862,
    1.168812, 0.8367241
  ),
  upper_CI = c(
    1.434269, 2.134691, 1.433304, 0.9666926, 1.462857, 1.625585, 0.9778695,
    0.8758691, 0.9762626, 2.243957, 0.9738127, 1.007568, 1.596937,
    1.15246, 1.492353, 1.040823, 1.28796, 1.095402, 1.291221, 1.819288,
    1.387461
  )
)
# Load necessary packages
library(ggplot2)
library(dplyr)
library(forcats)

# Create data frame
forest_data <- data.frame(
  variable = c(
    "One loss", "Two or more losses", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members", 
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing", 
    "Multiple Unions", "Media Exposure", "Chattogram", "Dhaka", "Khulna", 
    "Mymensingh", "Rajshahi", "Rangpur", "Sylhet"
  ),
  OR = c(
    1.310367, 1.814573, 1.278914, 0.8735536, 1.327507, 1.376475, 0.8740655,
    0.7870323, 0.8934228, 1.835192, 0.8062103, 0.9142283, 1.335645,
    1.044521, 1.170533, 0.8390068, 1.033844, 0.859789, 1.007478, 1.45822,
    1.077461
  ),
  lower_CI = c(
    1.197169, 1.54246, 1.141154, 0.7893883, 1.20468, 1.165539, 0.7812806,
    0.7072059, 0.8176124, 1.50089, 0.6674539, 0.8295356, 1.117105,
    0.9466911, 0.918113, 0.6763229, 0.8298647, 0.6748549, 0.7860862,
    1.168812, 0.8367241
  ),
  upper_CI = c(
    1.434269, 2.134691, 1.433304, 0.9666926, 1.462857, 1.625585, 0.9778695,
    0.8758691, 0.9762626, 2.243957, 0.9738127, 1.007568, 1.596937,
    1.15246, 1.492353, 1.040823, 1.28796, 1.095402, 1.291221, 1.819288,
    1.387461
  )
)
# Load necessary packages
library(ggplot2)
library(dplyr)
library(forcats)

# Create data frame
forest_data <- data.frame(
  variable = c(
    "One loss", "Two or more losses", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members", 
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing", 
    "Multiple Unions", "Media Exposure", "Chattogram", "Dhaka", "Khulna", 
    "Mymensingh", "Rajshahi", "Rangpur", "Sylhet"
  ),
  OR = c(
    1.310367, 1.814573, 1.278914, 0.8735536, 1.327507, 1.376475, 0.8740655,
    0.7870323, 0.8934228, 1.835192, 0.8062103, 0.9142283, 1.335645,
    1.044521, 1.170533, 0.8390068, 1.033844, 0.859789, 1.007478, 1.45822,
    1.077461
  ),
  lower_CI = c(
    1.197169, 1.54246, 1.141154, 0.7893883, 1.20468, 1.165539, 0.7812806,
    0.7072059, 0.8176124, 1.50089, 0.6674539, 0.8295356, 1.117105,
    0.9466911, 0.918113, 0.6763229, 0.8298647, 0.6748549, 0.7860862,
    1.168812, 0.8367241
  ),
  upper_CI = c(
    1.434269, 2.134691, 1.433304, 0.9666926, 1.462857, 1.625585, 0.9778695,
    0.8758691, 0.9762626, 2.243957, 0.9738127, 1.007568, 1.596937,
    1.15246, 1.492353, 1.040823, 1.28796, 1.095402, 1.291221, 1.819288,
    1.387461
  )
)








# Order variables by OR size for better visualization
forest_data <- forest_data %>%
  mutate(variable = fct_reorder(variable, OR))

# Create forest plot
ggplot(forest_data, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(color = "steelblue") +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray40") +
  coord_flip() +
  theme_minimal(base_size = 13) +
  labs(
    title = "Forest Plot of Adjusted Odds Ratios for Anxiety",
    x = "", y = "Odds Ratio (95% CI)"
  )










# Load required libraries
library(ggplot2)
library(dplyr)
library(forcats)
library(viridis)
library(scales)

# Reorder variables by OR for plotting
forest_data <- forest_data %>%
  mutate(variable = fct_reorder(variable, OR))

# Plot
ggplot(forest_data, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(
    aes(color = OR), 
    size = 1.1, 
    shape = 18, 
    linewidth = 0.7
  ) +
  geom_hline(yintercept = 1, linetype = "dotted", color = "gray40", linewidth = 0.8) +
  coord_flip() +
  scale_color_viridis(option = "C", direction = -1, guide = "none") +
  theme_minimal(base_size = 14, base_family = "serif") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.title.x = element_text(size = 13, face = "bold"),
    axis.text = element_text(color = "black", size = 12),
    plot.title = element_text(face = "bold", size = 15, hjust = 0),
    plot.margin = margin(10, 20, 10, 10)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    x = "", y = "Odds Ratio (95% Confidence Interval)"
  )









# Reorder variables for display
forest_data <- forest_data %>%
  mutate(variable = fct_reorder(variable, OR))

# Create forest plot
p <- ggplot(forest_data, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(
    aes(color = OR), 
    size = 1.3, 
    shape = 18,  # diamond shape
    linewidth = 0.8
  ) +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray40", linewidth = 0.9) +
  coord_flip() +
  scale_color_viridis(option = "D", direction = -1, guide = "none") +
  scale_y_continuous(trans = "log10", breaks = c(0.5, 0.75, 1, 1.5, 2, 2.5)) +
  theme_minimal(base_size = 15, base_family = "serif") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(size = 13, color = "black", face = "plain"),
    axis.text.x = element_text(size = 13, color = "black", face = "plain"),
    axis.title.y = element_text(size = 14, face = "bold"),
    axis.title.x = element_text(size = 14, face = "bold"),
    plot.title = element_text(size = 16, face = "bold", hjust = 0),
    plot.margin = margin(20, 40, 20, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    x = "", y = "Odds Ratio (95% CI)"
  )

# Show plot
print(p)




# Optional: reorder variables for display
forest_data <- forest_data %>%
  mutate(variable = fct_reorder(variable, OR))

# Create publication-quality forest plot
p <- ggplot(forest_data, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(
    aes(color = OR), 
    shape = 18, 
    size = 1.5, 
    linewidth = 1
  ) +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray30", linewidth = 1) +
  coord_flip() +
  scale_color_viridis(option = "D", direction = -1, guide = "none") +
  scale_y_continuous(
    trans = "log10", 
    breaks = c(0.5, 0.75, 1, 1.5, 2, 2.5), 
    labels = c("0.5", "0.75", "1", "1.5", "2", "2.5")
  ) +
  theme_minimal(base_size = 16, base_family = "serif") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(size = 13, color = "black"),
    axis.text.x = element_text(size = 13, color = "black"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 18, face = "bold", hjust = 0),
    plot.caption = element_text(size = 12, color = "gray40", hjust = 0),
    plot.margin = margin(15, 30, 15, 15)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    subtitle = "Survey-weighted logistic regression among ever-married women",
    x = "", y = "Odds Ratio (log scale, 95% CI)",
    caption = "Note: Reference categories omitted; vertical dashed line indicates OR = 1"
  )




# Save as TIFF: 600 DPI, suitable for BMJ/JAMA/The Lancet
tiff("forest_plot_bmj_style.tiff", width = 8, height = 10, units = "in", res = 600, compression = "lzw")
print(p)
dev.off()





#### Anxiety internet####

# Load necessary libraries
library(dplyr)

# Create data frame for final model
forest_data_final <- data.frame(
  variable = c(
    "Internet use (last 12 months)", "Justifies IPV", "Decision autonomy",
    "Big problem", "Muslim", "Middle Class", "Rich", "4+ HH Members",
    "Pressure to Pregnant", "Currently Abstaining", "Multiple Unions",
    "Non-urban Residing", "Media Exposure"
  ),
  OR = c(
    0.6521846, 1.259844, 0.9290605, 1.306431, 1.353049,
    0.871825, 0.8270056, 0.9013109, 1.87705, 0.8370001,
    1.321153, 0.8250813, 1.120911
  ),
  lower_CI = c(
    0.5848659, 1.12479, 0.8407423, 1.18674, 1.146113,
    0.7783289, 0.7384281, 0.8242946, 1.534, 0.6942526,
    1.103031, 0.7442443, 1.013311
  ),
  upper_CI = c(
    0.7272518, 1.411115, 1.026656, 1.438193, 1.597348,
    0.9765522, 0.9262082, 0.9855231, 2.296817, 1.009098,
    1.582407, 0.9146984, 1.239937
  )
)







# Load visualization libraries
library(ggplot2)
library(forcats)
library(viridis)
library(scales)

# Reorder for plot
forest_data_final <- forest_data_final %>%
  mutate(variable = fct_reorder(variable, OR))

# Create the plot
p_final <- ggplot(forest_data_final, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(
    aes(color = OR), 
    shape = 18, 
    size = 1.5, 
    linewidth = 1
  ) +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray40", linewidth = 1) +
  coord_flip() +
  scale_color_viridis(option = "D", direction = -1, guide = "none") +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.5, 2.0, 2.5),
    labels = c("0.5", "0.75", "1", "1.5", "2", "2.5")
  ) +
  theme_minimal(base_size = 16, base_family = "serif") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(size = 13, color = "black"),
    axis.text.x = element_text(size = 13, color = "black"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 18, face = "bold", hjust = 0),
    plot.caption = element_text(size = 12, color = "gray40", hjust = 0),
    plot.margin = margin(15, 30, 15, 15)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    subtitle = "Final model using survey-weighted logistic regression (BDHS 2022)",
    x = "", y = "Odds Ratio (log scale, 95% CI)",
    caption = "Reference categories omitted. OR < 1 indicates protective association."
  )

# Display plot
print(p_final)







# Load necessary libraries
library(ggplot2)
library(forcats)
library(viridis)
library(scales)

# Reorder variables by OR
forest_data_final <- forest_data_final %>%
  mutate(variable = fct_reorder(variable, OR))

# Create the polished forest plot
p_final <- ggplot(forest_data_final, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(
    aes(color = OR), 
    shape = 18, 
    size = 1.6, 
    linewidth = 1.2
  ) +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray30", linewidth = 1) +
  coord_flip() +
  scale_color_viridis(option = "C", direction = -1, guide = "none") +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.5, 2.0, 2.5),
    labels = c("0.5", "0.75", "1", "1.5", "2", "2.5")
  ) +
  theme_minimal(base_size = 16, base_family = "serif") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(size = 13.5, color = "black"),
    axis.text.x = element_text(size = 13.5, color = "black"),
    axis.title.x = element_text(size = 16, face = "bold"),
    plot.title = element_text(size = 19, face = "bold", hjust = 0),
    plot.subtitle = element_text(size = 15, hjust = 0, color = "gray30"),
    plot.caption = element_text(size = 12.5, color = "gray40", hjust = 0),
    plot.margin = margin(20, 30, 15, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    subtitle = "Fully adjusted model using survey-weighted logistic regression from BDHS 2022 data",
    x = "", y = "Odds Ratio (log scale, 95% CI)",
    caption = "Odds ratios (ORs) with 95% confidence intervals. Reference groups are omitted; OR < 1 indicates lower odds of anxiety symptoms."
  )

# Display plot
print(p_final)


# Load necessary libraries
library(ggplot2)
library(forcats)
library(viridis)
library(scales)

# Reorder variables for better visual alignment
forest_data_final <- forest_data_final %>%
  mutate(variable = fct_reorder(variable, OR))

# Create highly stylized forest plot
p_final <- ggplot(forest_data_final, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_pointrange(
    aes(color = OR),
    shape = 18,
    size = 1.6,
    linewidth = 1.2
  ) +
  geom_hline(yintercept = 1, linetype = "dotted", color = "gray50", linewidth = 1) +
  coord_flip() +
  scale_color_viridis(option = "C", direction = -1, guide = "none") +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.5, 2, 2.5),
    labels = c("0.5", "0.75", "1", "1.5", "2", "2.5"),
    limits = c(min(forest_data_final$lower_CI) * 0.9, max(forest_data_final$upper_CI) * 1.1)
  ) +
  theme_minimal(base_size = 17, base_family = "Times New Roman") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(size = 14, color = "#222222", face = "plain"),
    axis.text.x = element_text(size = 13, color = "#222222"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 19, face = "bold", hjust = 0),
    plot.subtitle = element_text(size = 14.5, face = "italic", color = "#444444", hjust = 0),
    plot.caption = element_text(size = 12, color = "gray40", hjust = 0),
    plot.margin = margin(15, 30, 15, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    subtitle = "Survey-weighted logistic regression model among ever-married women, BDHS 2022",
    x = "", y = "Odds Ratio (log scale, 95% CI)",
    caption = "Estimates adjusted for sociodemographic, reproductive, and media exposure factors. Reference groups not shown."
  )

# Display the plot
print(p_final)



library(ggplot2)
library(dplyr)
library(forcats)
library(scales)

# Reorder variables by OR
forest_data_final <- forest_data_final %>%
  mutate(variable = fct_reorder(variable, OR))

# Custom blue palette (lighter, bright)
blue_pal <- scales::seq_gradient_pal("lightblue", "steelblue")(seq(0,1,length.out=100))

ggplot(forest_data_final, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_errorbar(aes(color = OR), width = 0.2, size = 0.7, alpha = 0.8, show.legend = FALSE) +
  geom_point(aes(color = OR), shape = 21, size = 5, stroke = 1.2, fill = "white", show.legend = FALSE) +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray60", size = 0.9) +
  coord_flip() +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.5, 2, 2.5),
    labels = c("0.5", "0.75", "1", "1.5", "2", "2.5"),
    limits = c(min(forest_data_final$lower_CI) * 0.85, max(forest_data_final$upper_CI) * 1.15)
  ) +
  scale_color_gradient(low = "lightblue", high = "steelblue") +
  theme_minimal(base_size = 16, base_family = "Helvetica") +
  theme(
    panel.background = element_rect(fill = "#f9f9f9", color = NA),
    plot.background = element_rect(fill = "#f9f9f9", color = NA),
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray85", size = 0.4),
    axis.text.y = element_text(size = 14, color = "#222222"),
    axis.text.x = element_text(size = 13, color = "#222222"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 20, face = "bold", hjust = 0, margin = margin(b = 10)),
    plot.subtitle = element_text(size = 15, color = "#555555", hjust = 0, margin = margin(b = 15)),
    plot.caption = element_text(size = 12, color = "#666666", hjust = 0),
    plot.margin = margin(20, 40, 20, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    subtitle = "Fully adjusted survey-weighted logistic regression (BDHS 2022)",
    x = NULL,
    y = "Odds Ratio (log scale, 95% CI)",
    caption = "Reference categories excluded. OR < 1 indicates reduced odds of anxiety symptoms."
  )



library(ggplot2)
library(dplyr)
library(forcats)
library(scales)

# Reorder variables by OR
forest_data_final <- forest_data_final %>%
  mutate(variable = fct_reorder(variable, OR))

# Define a color palette (colorblind-friendly)
palette_cb <- c("#0072B2", "#D55E00") # blue for protective (OR<1), red for risk (OR>1)

# Assign color based on OR < 1 or >= 1
forest_data_final <- forest_data_final %>%
  mutate(color_group = ifelse(OR < 1, "Protective", "Risk"))

ggplot(forest_data_final, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_errorbar(aes(color = color_group), width = 0.25, size = 1) +
  geom_point(aes(color = color_group), shape = 21, size = 6, stroke = 1.2, fill = "white") +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray50", size = 1) +
  coord_flip() +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.5, 2, 2.5),
    labels = c("0.5", "0.75", "1", "1.5", "2", "2.5"),
    limits = c(min(forest_data_final$lower_CI)*0.85, max(forest_data_final$upper_CI)*1.15)
  ) +
  scale_color_manual(values = palette_cb) +
  theme_minimal(base_size = 16, base_family = "Helvetica") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray90", size = 0.4),
    axis.text.y = element_text(size = 14, color = "#222222"),
    axis.text.x = element_text(size = 13, color = "#222222"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 20, face = "bold", hjust = 0),
    plot.subtitle = element_text(size = 15, color = "#555555", hjust = 0, margin = margin(b = 15)),
    plot.caption = element_text(size = 12, color = "#666666", hjust = 0),
    legend.position = "none",
    plot.margin = margin(20, 40, 20, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Anxiety Symptoms",
    subtitle = "Fully adjusted survey-weighted logistic regression (BDHS 2022)",
    x = NULL,
    y = "Odds Ratio (log scale, 95% CI)",
    caption = "Reference categories excluded. Blue = protective (OR < 1), Red = risk (OR > 1)."
  )



#### Depresson pregloss####
library(dplyr)

forest_data_depression <- data.frame(
  variable = c(
    "One pregnancy loss", "Two or more losses", "Justifies IPV",
    "Participates in decision", "Big problem", "Muslim",
    "Middle Class", "Rich", "4+ HH Members",
    "Pressure to Pregnant", "Currently Abstaining", "Non-urban Residing",
    "More than one union", "Has media exposure"
  ),
  OR = c(
    1.293406, 1.439192, 1.160789, 0.9760393, 1.292323, 1.22922,
    0.9625256, 0.8424496, 0.8724702, 1.769299, 0.8597275,
    0.8941459, 1.199434, 0.9811795
  ),
  lower_CI = c(
    1.177992, 1.237754, 1.042029, 0.8800256, 1.178463, 1.029419,
    0.853758, 0.7520162, 0.7998177, 1.443168, 0.6991827,
    0.8067085, 1.005948, 0.888858
  ),
  upper_CI = c(
    1.420129, 1.673413, 1.293084, 1.082528, 1.417183, 1.467801,
    1.08515, 0.943758, 0.9517222, 2.16913, 1.057136,
    0.9910605, 1.430136, 1.08309
  )
)



library(ggplot2)
library(forcats)
library(scales)

# Reorder variables by OR
forest_data_depression <- forest_data_depression %>%
  mutate(variable = fct_reorder(variable, OR))

# Assign color group based on OR < 1 or >= 1
forest_data_depression <- forest_data_depression %>%
  mutate(color_group = ifelse(OR < 1, "Protective", "Risk"))

# Define color palette
palette_cb <- c("Protective" = "#0072B2", "Risk" = "#D55E00") # Blue and Red

# Plot
ggplot(forest_data_depression, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_errorbar(aes(color = color_group), width = 0.25, size = 1) +
  geom_point(aes(color = color_group), shape = 21, size = 6, stroke = 1.2, fill = "white") +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray50", size = 1) +
  coord_flip() +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.25, 1.5, 2, 2.5),
    labels = c("0.5", "0.75", "1", "1.25", "1.5", "2", "2.5"),
    limits = c(min(forest_data_depression$lower_CI) * 0.85, max(forest_data_depression$upper_CI) * 1.15)
  ) +
  scale_color_manual(values = palette_cb) +
  theme_minimal(base_size = 16, base_family = "Helvetica") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray90", size = 0.4),
    axis.text.y = element_text(size = 14, color = "#222222"),
    axis.text.x = element_text(size = 13, color = "#222222"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 20, face = "bold", hjust = 0),
    plot.subtitle = element_text(size = 15, color = "#555555", hjust = 0, margin = margin(b = 15)),
    plot.caption = element_text(size = 12, color = "#666666", hjust = 0),
    legend.position = "none",
    plot.margin = margin(20, 40, 20, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Depression Symptoms",
    subtitle = "Fully adjusted survey-weighted logistic regression (BDHS 2022)",
    x = NULL,
    y = "Odds Ratio (log scale, 95% CI)",
    caption = "Reference categories excluded. Blue = protective (OR < 1), Red = risk (OR > 1)."
  )






#### depression internet####


library(dplyr)

forest_data_depression_internet <- data.frame(
  variable = c(
    "Internet use last 12 months", "Justifies IPV", "Participates in decision",
    "Big problem", "Muslim", "Middle Class", "Rich",
    "4+ HH Members", "Pressure to Pregnant", "Currently Abstaining",
    "Non-urban Residing", "More than one union", "Has media exposure"
  ),
  OR = c(
    0.7692513, 1.166807, 1.01221, 1.282595, 1.259433, 0.985446,
    0.9092905, 0.8646237, 1.786915, 0.882589, 0.849219,
    1.204247, 1.035009
  ),
  lower_CI = c(
    0.6942155, 1.048254, 0.9123811, 1.169556, 1.053893, 0.8738348,
    0.8108885, 0.7930684, 1.455377, 0.7183575, 0.766049,
    1.007366, 0.9364614
  ),
  upper_CI = c(
    0.8523976, 1.298767, 1.122962, 1.40656, 1.50506, 1.111313,
    1.019634, 0.9426353, 2.193978, 1.084367, 0.9414187,
    1.439605, 1.143927
  )
)





library(ggplot2)
library(forcats)
library(scales)

# Reorder variables by OR for better plotting
forest_data_depression_internet <- forest_data_depression_internet %>%
  mutate(variable = fct_reorder(variable, OR))

# Create a color group based on OR < 1 or >= 1
forest_data_depression_internet <- forest_data_depression_internet %>%
  mutate(color_group = ifelse(OR < 1, "Protective", "Risk"))

# Define color palette: blue for protective, red for risk
palette_cb <- c("Protective" = "#0072B2", "Risk" = "#D55E00")

# Create forest plot
ggplot(forest_data_depression_internet, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_errorbar(aes(color = color_group), width = 0.25, size = 1) +
  geom_point(aes(color = color_group), shape = 21, size = 6, stroke = 1.2, fill = "white") +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray50", size = 1) +
  coord_flip() +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.25, 1.5, 2, 2.5),
    labels = c("0.5", "0.75", "1", "1.25", "1.5", "2", "2.5"),
    limits = c(min(forest_data_depression_internet$lower_CI) * 0.85, max(forest_data_depression_internet$upper_CI) * 1.15)
  ) +
  scale_color_manual(values = palette_cb) +
  theme_minimal(base_size = 16, base_family = "Helvetica") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray90", size = 0.4),
    axis.text.y = element_text(size = 14, color = "#222222"),
    axis.text.x = element_text(size = 13, color = "#222222"),
    axis.title.x = element_text(size = 15, face = "bold"),
    plot.title = element_text(size = 20, face = "bold", hjust = 0),
    plot.subtitle = element_text(size = 15, color = "#555555", hjust = 0, margin = margin(b = 15)),
    plot.caption = element_text(size = 12, color = "#666666", hjust = 0),
    legend.position = "none",
    plot.margin = margin(20, 40, 20, 20)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Depression Symptoms",
    subtitle = "Survey-weighted logistic regression including internet use (BDHS 2022)",
    x = NULL,
    y = "Odds Ratio (log scale, 95% CI)",
    caption = "Reference categories excluded. Blue = protective (OR < 1), Red = risk (OR > 1)."
  )























library(ggplot2)
library(forcats)
library(scales)
library(dplyr)

# Reorder variables by OR for plotting
forest_data_depression_internet <- forest_data_depression_internet %>%
  mutate(variable = fct_reorder(variable, OR)) %>%
  mutate(color_group = ifelse(OR < 1, "Protective", "Risk"))

# Color palette: vivid blue and red, strong contrast
palette_cb <- c("Protective" = "#0D6EFD", "Risk" = "#DC3545")  # Bootstrap blues & reds for clarity

ggplot(forest_data_depression_internet, aes(x = variable, y = OR, ymin = lower_CI, ymax = upper_CI)) +
  geom_errorbar(aes(color = color_group), width = 0.2, size = 1.2, alpha = 0.9) +
  geom_point(aes(color = color_group), shape = 21, size = 7, stroke = 1.5, fill = "white") +
  geom_hline(yintercept = 1, linetype = "dashed", color = "gray30", size = 1) +
  coord_flip() +
  scale_y_continuous(
    trans = "log10",
    breaks = c(0.5, 0.75, 1, 1.25, 1.5, 2, 2.5),
    labels = c("0.5", "0.75", "1", "1.25", "1.5", "2", "2.5"),
    limits = c(min(forest_data_depression_internet$lower_CI) * 0.85,
               max(forest_data_depression_internet$upper_CI) * 1.15)
  ) +
  scale_color_manual(values = palette_cb) +
  theme_minimal(base_size = 18, base_family = "Helvetica") +
  theme(
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray85", size = 0.5),
    axis.text.y = element_text(size = 16, face = "bold", color = "#222222"),
    axis.text.x = element_text(size = 14, face = "bold", color = "#222222"),
    axis.title.x = element_text(size = 16, face = "bold", color = "#222222"),
    plot.title = element_text(size = 24, face = "bold", color = "#111111", hjust = 0, margin = margin(b = 15)),
    plot.subtitle = element_text(size = 16, face = "italic", color = "#444444", hjust = 0, margin = margin(b = 20)),
    plot.caption = element_text(size = 13, color = "#666666", hjust = 0),
    legend.position = "none",
    plot.margin = margin(25, 40, 25, 25)
  ) +
  labs(
    title = "Adjusted Odds Ratios for Depression Symptoms",
    subtitle = "Survey-weighted logistic regression including internet use (BDHS 2022)",
    x = NULL,
    y = "Odds Ratio (log scale, 95% CI)",
    caption = "Reference categories excluded. Blue = protective (OR < 1), Red = risk (OR > 1)."
  )













#### spatial####
# Install (if needed)
install.packages(c("sf", "readxl", "dplyr", "tmap", "ggplot2"))
install.packages("stringr")
# Load
library(sf)
library(readxl)
library(dplyr)
library(tmap)
library(ggplot2)






excel_path <- "D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_pregnancy_loss.xlsx"
preg_data <- read_excel(excel_path)




library(sf)

bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")



names(bd_shp)
# Example output: [1] "id" "name" "source" "geometry"

unique(bd_shp$name)






library(sf)
library(readxl)
library(dplyr)
library(stringr)
library(tmap)

# Read shapefile
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

# Read Excel data
preg_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_pregnancy_loss.xlsx")

# Clean shapefile division names (lowercase, trim)
bd_shp <- bd_shp %>%
  mutate(division_clean = str_to_lower(str_trim(name))) %>%
  # Fix old names to new
  mutate(division_clean = case_when(
    division_clean == "barisal" ~ "barishal",
    division_clean == "chittagong" ~ "chattogram",
    TRUE ~ division_clean
  ))

# Clean Excel division names
preg_data <- preg_data %>%
  mutate(division_clean = str_to_lower(str_trim(division)))

# Check if all match now
setdiff(bd_shp$division_clean, preg_data$division_clean)
setdiff(preg_data$division_clean, bd_shp$division_clean)

# Join by cleaned division name
bd_merged <- bd_shp %>%
  left_join(preg_data, by = "division_clean")




names(bd_merged)




tm_shape(bd_merged) +
  tm_polygons("pregnancy_loss_percent",
              title = "Pregnancy Loss Rate (%)",
              palette = "Reds",
              style = "quantile",
              border.col = "gray30",
              lwd = 0.5) +
  tm_layout(title = "Pregnancy Loss Rate by Division in Bangladesh",
            legend.outside = TRUE,
            frame = FALSE)



tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 5,
      labels = scales::percent_format(scale = 1)
    ),
    values = "Reds",
    border.col = "gray30",
    lwd = 0.5,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_title("Pregnancy Loss Rate by Division in Bangladesh") +
  tm_legend(outside = TRUE) +
  tm_layout(frame = FALSE)






tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 5,
      labels = scales::percent_format(scale = 1)
    ),
    values = "Reds",
    border.col = "gray30",
    lwd = 0.5,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_text(
    "name",                # column with division names from shapefile
    size = 0.8,
    col = "black",
    shadow = TRUE,
    xmod = 0, ymod = 0     # adjust label position if needed
  ) +
  tm_title("Pregnancy Loss Rate by Division in Bangladesh") +
  tm_legend(outside = TRUE) +
  tm_layout(frame = FALSE)




library(tmap)
library(dplyr)
library(stringr)

# Create a new label column combining division name and percentage with % sign
bd_merged <- bd_merged %>%
  mutate(label_text = paste0(name, "\n", round(pregnancy_loss_percent, 1), "%"))

tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 5,
      labels = scales::percent_format(scale = 1)
    ),
    values = "Reds",
    border.col = "gray30",
    lwd = 0.5,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_text(
    "label_text",      # combined label
    size = 0.8,
    col = "black",
    shadow = TRUE
  ) +
  tm_title("Pregnancy Loss Rate by Division in Bangladesh") +
  tm_legend(outside = TRUE) +
  tm_layout(frame = FALSE)








library(tmap)
library(dplyr)
library(stringr)
library(scales)

# Prepare labels: division name + pregnancy loss %
bd_merged <- bd_merged %>%
  mutate(label_text = paste0(name, "\n", round(pregnancy_loss_percent, 1), "%"))

# Set tmap to plot mode
tmap_mode("plot")

# Polished choropleth map with compass, scale bar, and grid lines
tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 5,
      labels = percent_format(scale = 1)
    ),
    values = "Reds",
    border.col = "gray40",
    lwd = 0.7,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE
  ) +
  tm_compass(
    position = c("left", "top"),
    size = 3,
    show.labels = TRUE
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_grid(
    lines = TRUE,
    labels.inside.frame = FALSE,
    x.format = function(x) paste0(x, "°E"),
    y.format = function(y) paste0(y, "°N"),
    alpha = 0.3
  ) +
  tm_layout(
    title = "Pregnancy Loss Rate by Division in Bangladesh",
    title.size = 1.3,
    legend.outside = TRUE,
    legend.outside.position = "right",
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.1, 0.05, 0.05)  # top, right, bottom, left
  )












library(tmap)
library(dplyr)
library(stringr)
library(scales)

# Assuming bd_merged already prepared with label_text etc.

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 5,
      labels = scales::percent_format(scale = 1)
    ),
    values = "Reds",
    border.col = "gray40",
    lwd = 0.7,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE
  ) +
  tm_compass(
    position = c("left", "top"),
    size = 3,
    show.labels = TRUE
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_grid(
    lines = TRUE,
    labels.inside.frame = FALSE,
    x.format = function(x) paste0(x, "°E"),
    y.format = function(y) paste0(y, "°N"),
    alpha = 0.3
  ) +
  tm_layout(
    title = "Pregnancy Loss Rate by Division in Bangladesh",
    title.size = 1.3,
    title.position = c("center", "top"),
    title.just = "center",
    legend.outside = TRUE,
    legend.outside.position = "right",
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.12, 0.1, 0.05, 0.05),
    inner.margins = c(0.05, 0.1, 0.05, 0.05)
  )


















library(tmap)
library(dplyr)
library(stringr)
library(scales)
library(viridis)  # for professional color palettes

# Prepare labels if not already done
bd_merged <- bd_merged %>%
  mutate(label_text = paste0(name, "\n", round(pregnancy_loss_percent, 1), "%"))

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 6,
      labels = scales::percent_format(scale = 1)
    ),
    values = viridis(6, option = "C"),  # professional, colorblind-friendly palette
    border.col = "gray40",
    lwd = 0.7,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE
  ) +
  tm_compass(
    position = c("left", "top"),
    size = 3,
    show.labels = TRUE,
    just = c("left", "top"),
    xmod = 0.1,   # shift compass slightly right
    ymod = -0.1   # shift compass slightly down
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_grid(
    lines = TRUE,
    labels.inside.frame = FALSE,
    x.format = function(x) paste0(x, "°E"),
    y.format = function(y) paste0(y, "°N"),
    alpha = 0.3
  ) +
  tm_layout(
    title = "Pregnancy Loss Rate by Division in Bangladesh",
    title.size = 1.5,
    title.position = c("center", "top"),
    title.just = "center",
    legend.outside = TRUE,
    legend.outside.position = "right",
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.15, 0.1, 0.05, 0.05),  # top margin increased to shift title higher
    inner.margins = c(0.05, 0.1, 0.05, 0.05)
  )






































library(tmap)
library(dplyr)
library(stringr)
library(scales)
library(viridis)

# Prepare labels: combine division name and percentage
bd_merged <- bd_merged %>%
  mutate(label_text = paste0(name, "\n", round(pregnancy_loss_percent, 1), "%"))

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 6,
      labels = scales::percent_format(scale = 1)
    ),
    values = viridis(6, option = "C"),
    border.col = "gray40",
    lwd = 0.7,
    fill.legend = tm_legend(title = "Pregnancy Loss Rate (%)")
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE
  ) +
  tm_compass(
    size = 3,
    position = c("right", "top"),
    just = c("right", "top"),
    show.labels = TRUE
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_grid(
    lines = TRUE,
    labels.inside.frame = FALSE,
    x.format = function(x) paste0(x, "°E"),
    y.format = function(y) paste0(y, "°N"),
    alpha = 0.3
  ) +
  tm_layout(
    # No title here
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.outside.size = 0.3,
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.05, 0.1, 0.05, 0.05),  # smaller top margin since no title
    inner.margins = c(0.05, 0.1, 0.05, 0.05)
  )























library(tmap)
library(dplyr)
library(stringr)
library(scales)
library(viridis)

# Prepare labels: combine division name and percentage
bd_merged <- bd_merged %>%
  mutate(label_text = paste0(name, "\n", round(pregnancy_loss_percent, 1), "%"))

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 6,
      labels = scales::percent_format(scale = 1)
    ),
    values = viridis(6, option = "B"),    # option B is bright & clean
    border.col = "#CCCCCC",                # light gray borders
    lwd = 0.6,
    fill.legend = tm_legend(
      title = "Pregnancy Loss Rate (%)",
      text.size = 1,
      title.size = 1.2,
      position = c("left", "top"),
      frame = FALSE,
      bg.color = "white"
    )
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE,
    bg.color = "white",     # white halo behind text for contrast
    bg.alpha = 0.7
  ) +
  tm_compass(
    size = 3,
    position = c("right", "top"),
    just = c("right", "top"),
    show.labels = TRUE,
    type = "arrow",
    color.dark = "#444444"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#444444",
    color.light = "#DDDDDD",
    bg.color = "white",
    frame = FALSE
  ) +
  tm_grid(
    lines = TRUE,
    labels.inside.frame = FALSE,
    x.format = function(x) paste0(x, "°E"),
    y.format = function(y) paste0(y, "°N"),
    alpha = 0.2,
    lwd = 0.5,
    lty = "dashed",
    col = "#BBBBBB"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.outside.size = 0.3,
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.05, 0.1, 0.05, 0.05),
    inner.margins = c(0.05, 0.1, 0.05, 0.05),
    legend.text.size = 1,
    legend.title.size = 1.2
  )












#### Internet####

# Load internet use data
internet_data <- read_excel("D:\\Research\\BDHS Research\\Reproductive MH and Media\\MH with pregnancy\\R studio advance figure\\Spatial\\Data\\division_internet_use.xlsx")

# Check structure
head(internet_data)



# Load required libraries
library(tmap)
library(dplyr)
library(readxl)
library(sf)
library(viridis)




# Load required libraries
library(tmap)
library(dplyr)
library(readxl)
library(sf)
library(viridis)

# Load shapefile
shapefile_path <- "D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp"
bd_shp <- st_read(shapefile_path)



names(bd_shp)




library(dplyr)
library(readxl)
library(sf)
library(stringr)

# Load shapefile and Excel data
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")
internet_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_internet_use.xlsx")

# Extract and clean division names
shape_divisions <- bd_shp %>%
  mutate(division = tolower(str_trim(name))) %>%
  pull(division) %>%
  unique()

excel_divisions <- internet_data %>%
  mutate(division = tolower(str_trim(division))) %>%
  pull(division) %>%
  unique()

# Show which division names in shapefile but NOT in Excel
cat("In shapefile but not in Excel:\n")
print(setdiff(shape_divisions, excel_divisions))

# Show which division names in Excel but NOT in shapefile
cat("\nIn Excel but not in shapefile:\n")
print(setdiff(excel_divisions, shape_divisions))



# Vector for fixing names in shapefile and Excel
fixed_names <- c(
  "barisal" = "barishal",
  "chittagong" = "chattogram"
)

# Fix shapefile division names
bd_shp <- bd_shp %>%
  mutate(
    division = tolower(name),
    division = ifelse(division %in% names(fixed_names),
                      fixed_names[division],
                      division)
  )

# Fix Excel division names
internet_data <- internet_data %>%
  mutate(
    division = tolower(division),
    division = ifelse(division %in% names(fixed_names),
                      fixed_names[division],
                      division)
  )




setdiff(bd_shp$division, internet_data$division)  # Should be character(0)
setdiff(internet_data$division, bd_shp$division)  # Should be character(0)



library(tmap)
library(dplyr)
library(viridis)

# Merge shapefile and internet data by division
bd_merged <- left_join(bd_shp, internet_data, by = "division")

# Create label text for each division
bd_merged <- bd_merged %>%
  mutate(label_text = paste0(toupper(division), "\n", round(internet_use_percent, 1), "%"))

# Set tmap to plot mode
tmap_mode("plot")

# Plot choropleth map
tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = viridis(6, option = "D", direction = 1),
    style = "quantile",
    n = 6,
    border.col = "white",
    lwd = 0.7,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black"
  ) +
  tm_compass(
    type = "8star",
    position = c("left", "top"),
    size = 2.5,
    show.labels = TRUE
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.05, 0.05, 0.05),
    fontfamily = "Arial"
  )











tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = viridis(6, option = "D", direction = 1),
    style = "quantile",
    n = 6,
    border.col = "white",
    lwd = 0.7,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black"
  ) +
  tm_compass(
    type = "8star",
    position = c(0.95, 0.9),
    size = 2.5,
    show.labels = TRUE
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.05, 0.05, 0.05),
    fontfamily = "Arial"
  )






tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = viridis(6, option = "D", direction = 1),
    style = "quantile",
    n = 6,
    border.col = "white",
    lwd = 0.7,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black"
  ) +
  tm_compass(
    type = "8star",
    position = c(0.85, 0.9),
    size = 2.5,
    show.labels = TRUE
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.05, 0.05, 0.05),
    fontfamily = "Arial"
  )
























tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = viridis(7, option = "D", direction = 1),
    style = "quantile",
    n = 7,
    border.col = "white",
    border.lwd = 0.8,
    title = "Internet Use (%)"
    # legend.hist = FALSE  # this line can be omitted as FALSE is default
  ) +
  tm_text(
    "label_text",
    size = 0.85,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.6
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.2,
    legend.text.size = 0.9,
    legend.bg.color = "white",
    legend.bg.alpha = 0.8,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = "",
    asp = 1
  )














library(tmap)
library(dplyr)
library(viridis)
library(sf)

# Assuming bd_merged with 'internet_use_percent' and 'label_text'

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = viridis(7, option = "A", direction = 1),  # Plasma palette: bright and warm
    style = "quantile",
    n = 7,
    border.col = "white",
    border.lwd = 0.8,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.85,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.65
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.3,
    legend.text.size = 1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.85,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = ""
  )












tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = viridis(7, option = "C", direction = -1),  # Alternative bright palette reversed
    style = "quantile",
    n = 7,
    border.col = "white",
    border.lwd = 1,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.8
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.3,
    legend.text.size = 1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.85,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = ""
  )







library(tmap)
library(dplyr)
library(sf)

# Custom sky green / firoza palette (light to dark)
custom_palette <- c("#a8dadc", "#7dcfb6", "#53c29f", "#2ea686", "#168271", "#0d5c54", "#064235")

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = custom_palette,
    style = "quantile",
    n = length(custom_palette),
    border.col = "white",
    border.lwd = 1,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.8
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.3,
    legend.text.size = 1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.85,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = ""
  )










library(tmap)
library(dplyr)
library(sf)

# Custom yellow-orange palette from light yellow to deep orange
yellow_orange_palette <- c("#FFF7BC", "#FEC44F", "#FE9929", "#EC7014", "#CC4C02", "#993404", "#662506")

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = yellow_orange_palette,
    style = "quantile",
    n = length(yellow_orange_palette),
    border.col = "white",
    border.lwd = 1,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.8
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.3,
    legend.text.size = 1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.85,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = ""
  )










library(tmap)
library(dplyr)
library(sf)
library(scales)  # for percent_format()

# Custom yellow-orange palette from light yellow to deep orange
yellow_orange_palette <- c("#FFF7BC", "#FEC44F", "#FE9929", "#EC7014", "#CC4C02", "#993404", "#662506")

tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    col = "internet_use_percent",
    palette = yellow_orange_palette,
    border.col = "white",
    border.lwd = 1,
    # Use tm_scale_intervals() for discrete intervals and custom percentage labels
    fill.scale = tm_scale_intervals(
      n = length(yellow_orange_palette),
      labels = scales::percent_format(scale = 1)  # show labels as "10%", "20%" etc.
    ),
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.8
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.3,
    legend.text.size = 1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.85,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = ""
  )












#### combine both####
# Load libraries
library(tmap)
library(dplyr)
library(sf)
library(scales)
library(viridis)
library(readxl)

# Load shapefile
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

# Load internet use data (example path)
internet_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_internet_use.xlsx")

# Load pregnancy loss data (example path)
preg_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_pregnancy_loss.xlsx")

# Fix division names for joining (same logic as you did before)
fixed_names <- c("barisal" = "barishal", "chittagong" = "chattogram")

bd_shp <- bd_shp %>%
  mutate(
    division = tolower(name),
    division = ifelse(division %in% names(fixed_names),
                      fixed_names[division],
                      division)
  )

internet_data <- internet_data %>%
  mutate(
    division = tolower(division),
    division = ifelse(division %in% names(fixed_names),
                      fixed_names[division],
                      division)
  )

preg_data <- preg_data %>%
  mutate(
    division = tolower(division),
    division = ifelse(division %in% names(fixed_names),
                      fixed_names[division],
                      division)
  )

# Join internet data to shapefile
bd_internet <- bd_shp %>%
  left_join(internet_data, by = "division") %>%
  mutate(label_text = paste0(name, "\n", round(internet_use_percent, 1), "%"))

# Join pregnancy loss data to shapefile
bd_preg <- bd_shp %>%
  left_join(preg_data, by = "division") %>%
  mutate(label_text = paste0(name, "\n", round(pregnancy_loss_percent, 1), "%"))

# Custom yellow-orange palette for internet map
yellow_orange_palette <- c("#FFF7BC", "#FEC44F", "#FE9929", "#EC7014", "#CC4C02", "#993404", "#662506")

# Set tmap mode to plot
tmap_mode("plot")

# Map 1: Internet Use
map1 <- tm_shape(bd_internet) +
  tm_polygons(
    col = "internet_use_percent",
    palette = yellow_orange_palette,
    style = "quantile",
    n = length(yellow_orange_palette),
    border.col = "white",
    border.lwd = 1,
    title = "Internet Use (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    fontface = "bold",
    col = "black",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.8
  ) +
  tm_compass(
    type = "8star",
    position = c(0.82, 0.9),
    size = 3,
    show.labels = TRUE,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.8,
    color.dark = "black",
    color.light = "white"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.title.size = 1.3,
    legend.text.size = 1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.85,
    frame = FALSE,
    bg.color = "white",
    inner.margins = c(0.05, 0.08, 0.05, 0.05),
    fontfamily = "Arial",
    title = ""
  )

# Map 2: Pregnancy Loss
map2 <- tm_shape(bd_preg) +
  tm_polygons(
    fill = "pregnancy_loss_percent",
    fill.scale = tm_scale_intervals(
      n = 6,
      labels = scales::percent_format(scale = 1)
    ),
    values = viridis(6, option = "B"),
    border.col = "#CCCCCC",
    lwd = 0.6,
    fill.legend = tm_legend(
      title = "Pregnancy Loss Rate (%)",
      text.size = 1,
      title.size = 1.2,
      position = c("left", "top"),
      frame = FALSE,
      bg.color = "white"
    )
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.7
  ) +
  tm_compass(
    size = 3,
    position = c("right", "top"),
    just = c("right", "top"),
    show.labels = TRUE,
    type = "arrow",
    color.dark = "#444444"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#444444",
    color.light = "#DDDDDD",
    bg.color = "white",
    frame = FALSE
  ) +
  tm_grid(
    lines = TRUE,
    labels.inside.frame = FALSE,
    x.format = function(x) paste0(x, "°E"),
    y.format = function(y) paste0(y, "°N"),
    alpha = 0.2,
    lwd = 0.5,
    lty = "dashed",
    col = "#BBBBBB"
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "right",
    legend.outside.size = 0.3,
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.05, 0.1, 0.05, 0.05),
    inner.margins = c(0.05, 0.1, 0.05, 0.05),
    legend.text.size = 1,
    legend.title.size = 1.2
  )

# Combine both maps side by side in one frame
tmap_arrange(map1, map2, ncol = 2)





















#### Depression####
library(tmap)
library(dplyr)
library(sf)
library(readxl)
library(stringr)
library(scales)

# Load shapefile
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

# Load depression prevalence Excel data
depression_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_depression_prevalence.xlsx")

# Extract and clean division names from shapefile
shape_divisions <- bd_shp %>%
  mutate(division = tolower(str_trim(name))) %>%
  pull(division) %>%
  unique()

# Extract and clean division names from Excel
excel_divisions <- depression_data %>%
  mutate(division = tolower(str_trim(division))) %>%
  pull(division) %>%
  unique()

# Check differences in division names between shapefile and Excel
cat("Divisions in shapefile but NOT in Excel:\n")
print(setdiff(shape_divisions, excel_divisions))

cat("\nDivisions in Excel but NOT in shapefile:\n")
print(setdiff(excel_divisions, shape_divisions))

# Define name corrections for mismatches found (modify if needed)
name_corrections <- c(
  "barisal" = "barishal",
  "chittagong" = "chattogram"
)




names(depression_data)




# Add combined prevalence column
depression_data <- depression_data %>%
  mutate(
    depression_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

# Join shapefile and depression data
bd_merged <- bd_shp %>%
  left_join(depression_data, by = "division") %>%
  mutate(
    label_text = paste0(name, "\n", round(depression_prevalence_percent, 1), "%")
  )





# Correct shapefile division names
bd_shp <- bd_shp %>%
  mutate(division = tolower(str_trim(name))) %>%
  mutate(division = recode(division,
                           "barisal" = "barishal",
                           "chittagong" = "chattogram"))




bd_merged <- bd_shp %>%
  left_join(depression_data, by = "division") %>%
  mutate(
    label_text = paste0(name, "\n", round(depression_prevalence_percent, 1), "%")
  )



# Plot choropleth map
tmap_mode("plot")

tm_shape(bd_merged) +
  tm_polygons(
    col = "depression_prevalence_percent",
    border.col = "#CCCCCC",
    border.lwd = 1,
    palette = "YlOrRd",
    fill.scale = tm_scale_intervals(
      n = 6,
      labels = scales::percent_format(scale = 1)
    ),
    title = "Depression Prevalence (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "black",
    fontface = "bold",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.7
  ) +
  tm_compass(
    size = 3,
    position = c("right", "top"),
    just = c("right", "top"),
    show.labels = TRUE,
    type = "arrow",
    color.dark = "#444444"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#444444",
    color.light = "#DDDDDD",
    bg.color = "white",
    frame = FALSE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    legend.outside.size = 0.3,
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.05, 0.1, 0.05, 0.05),
    inner.margins = c(0.05, 0.1, 0.05, 0.05),
    legend.text.size = 1,
    legend.title.size = 1.2,
    fontfamily = "Arial"
  )











#### anxiety####
# Load required libraries
library(tmap)
library(dplyr)
library(sf)
library(readxl)
library(stringr)
library(scales)

# Load shapefile
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

# Load anxiety prevalence Excel data
anxiety_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_anxiety_prevalence.xlsx")

# Fix division names mismatch between shapefile and Excel
name_corrections <- c(
  "barisal" = "barishal",
  "chittagong" = "chattogram"
)

bd_shp <- bd_shp %>%
  mutate(
    division = tolower(str_trim(name)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division)
  )

anxiety_data <- anxiety_data %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division),
    # Calculate total anxiety prevalence as sum of mild, moderate, severe
    anxiety_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

# Merge shapefile and anxiety data by division
bd_merged <- bd_shp %>%
  left_join(anxiety_data, by = "division") %>%
  mutate(
    label_text = paste0(name, "\n", round(anxiety_prevalence_percent, 1), "%")
  )

# Set tmap mode to static plot
tmap_mode("plot")

# Plot choropleth map
tm_shape(bd_merged) +
  tm_polygons(
    col = "anxiety_prevalence_percent",
    palette = "YlOrRd",
    style = "fixed",
    breaks = seq(0, max(bd_merged$anxiety_prevalence_percent, na.rm = TRUE), length.out = 7),
    border.col = "#E0E0E0",
    border.lwd = 0.8,
    alpha = 0.9,
    title = "Anxiety Prevalence (%)"
  ) +
  tm_text(
    "label_text",
    size = 0.9,
    col = "#222222",
    fontface = "bold",
    shadow = TRUE,
    bg.color = "white",
    bg.alpha = 0.75
  ) +
  tm_compass(
    size = 3.5,
    position = c("right", "top"),
    just = c("right", "top"),
    show.labels = TRUE,
    type = "arrow",
    color.dark = "#444444"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#444444",
    color.light = "#DDDDDD",
    bg.color = "white",
    frame = FALSE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    legend.outside.size = 0.3,
    legend.title.size = 1.4,
    legend.text.size = 1.1,
    legend.bg.color = "white",
    legend.bg.alpha = 0.9,
    frame = FALSE,
    bg.color = "white",
    outer.margins = c(0.05, 0.12, 0.05, 0.05),
    inner.margins = c(0.05, 0.1, 0.05, 0.05),
    fontfamily = "Arial"
  )















#### combine anxiety depression####


#### Load libraries ####
library(tmap)
library(dplyr)
library(sf)
library(readxl)
library(stringr)
library(scales)

#### Load shapefile ####
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

#### Division name corrections ####
name_corrections <- c(
  "barisal" = "barishal",
  "chittagong" = "chattogram"
)

bd_shp <- bd_shp %>%
  mutate(
    division = tolower(str_trim(name)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division)
  )

#### Load Depression data ####
depression_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_depression_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division),
    depression_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

#### Load Anxiety data ####
anxiety_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_anxiety_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division),
    anxiety_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

#### Merge shapefile with both datasets ####
bd_merged <- bd_shp %>%
  left_join(depression_data %>% select(division, depression_prevalence_percent), by = "division") %>%
  left_join(anxiety_data %>% select(division, anxiety_prevalence_percent), by = "division") %>%
  mutate(
    label_text_depression = paste0(name, "\n", round(depression_prevalence_percent, 1), "%"),
    label_text_anxiety = paste0(name, "\n", round(anxiety_prevalence_percent, 1), "%")
  )

#### Set tmap mode to static plot ####
tmap_mode("plot")

#### Plot Depression Map ####
tm_depression <- tm_shape(bd_merged) +
  tm_polygons(
    values = "depression_prevalence_percent",
    fill.palette = "YlOrRd",
    border.col = "#CCCCCC",
    lwd = 1,
    fill.legend = tm_legend(title = "Depression Prevalence (%)")
  ) +
  tm_text(
    "label_text_depression",
    size = 0.9,
    col = "black",
    fontface = "bold",
    bg.color = "white",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    frame = FALSE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    frame = FALSE,
    bg.color = "white",
    legend.text.size = 1,
    legend.title.size = 1.2,
    text.fontfamily = "Arial"
  )

#### Plot Anxiety Map ####
tm_anxiety <- tm_shape(bd_merged) +
  tm_polygons(
    values = "anxiety_prevalence_percent",
    fill.palette = "YlOrRd",
    border.col = "#CCCCCC",
    lwd = 1,
    fill.legend = tm_legend(title = "Anxiety Prevalence (%)")
  ) +
  tm_text(
    "label_text_anxiety",
    size = 0.9,
    col = "black",
    fontface = "bold",
    bg.color = "white",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    frame = FALSE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    frame = FALSE,
    bg.color = "white",
    legend.text.size = 1,
    legend.title.size = 1.2,
    text.fontfamily = "Arial"
  )

#### Plot side by side (optional) ####
tmap_arrange(tm_depression, tm_anxiety, ncol = 2)











































tm_depression <- tm_shape(bd_merged) +
  tm_polygons(
    col = "depression_prevalence_percent",   # data variable
    palette = "Reds",                        # color palette
    border.col = "#444444",
    lwd = 1,
    title = "Depression Prevalence (%)"
  ) +
  tm_text(
    "label_text_depression",
    size = 0.9,
    col = "#222222",
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE,
    color.dark = "#222222",
    color.light = "#AAAAAA"
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#222222",
    color.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    frame = FALSE,
    bg.color = "#E5F1F9",          # Light blue background
    legend.text.size = 1,
    legend.title.size = 1.2,
    text.fontfamily = "Arial"
  )

# Plot
tmap_mode("plot")
tm_depression












library(tmap)
library(dplyr)
library(sf)
library(readxl)
library(stringr)

#### Load shapefile ####
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

#### Division name corrections ####
name_corrections <- c(
  "barisal" = "barishal",
  "chittagong" = "chattogram"
)

bd_shp <- bd_shp %>%
  mutate(
    division = tolower(str_trim(name)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division)
  )

#### Load Depression data ####
depression_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_depression_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division),
    depression_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

#### Load Anxiety data ####
anxiety_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_anxiety_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections),
                      name_corrections[division],
                      division),
    anxiety_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

#### Merge shapefile with both datasets ####
bd_merged <- bd_shp %>%
  left_join(depression_data %>% select(division, depression_prevalence_percent), by = "division") %>%
  left_join(anxiety_data %>% select(division, anxiety_prevalence_percent), by = "division") %>%
  mutate(
    label_text_depression = paste0(name, "\n", round(depression_prevalence_percent, 1), "%"),
    label_text_anxiety = paste0(name, "\n", round(anxiety_prevalence_percent, 1), "%")
  )

#### Set tmap mode ####
tmap_mode("plot")

#### Depression map ####
tm_depression <- tm_shape(bd_merged) +
  tm_polygons(
    col = "depression_prevalence_percent",
    palette = "Reds",
    border.col = "#444444",
    lwd = 1,
    title = "Depression Prevalence (%)"
  ) +
  tm_text(
    "label_text_depression",
    size = 0.9,
    col = "#222222",
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE,
    color.dark = "#222222",
    color.light = "#AAAAAA"
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#222222",
    color.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    frame = FALSE,
    bg.color = "#E5F1F9",
    legend.text.size = 1,
    legend.title.size = 1.2,
    text.fontfamily = "Arial"
  )

#### Anxiety map ####
tm_anxiety <- tm_shape(bd_merged) +
  tm_polygons(
    col = "anxiety_prevalence_percent",
    palette = "Blues",
    border.col = "#444444",
    lwd = 1,
    title = "Anxiety Prevalence (%)"
  ) +
  tm_text(
    "label_text_anxiety",
    size = 0.9,
    col = "#222222",
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE,
    color.dark = "#222222",
    color.light = "#AAAAAA"
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#222222",
    color.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = TRUE,
    legend.outside.position = "top",
    frame = FALSE,
    bg.color = "#E5F1F9",
    legend.text.size = 1,
    legend.title.size = 1.2,
    text.fontfamily = "Arial"
  )

#### Arrange both maps side by side ####
tmap_arrange(tm_depression, tm_anxiety, ncol = 2)









#### Load libraries ####
library(tmap)
library(dplyr)
library(sf)
library(readxl)
library(stringr)

#### Load shapefile ####
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

#### Division name corrections ####
name_corrections <- c("barisal" = "barishal", "chittagong" = "chattogram")

bd_shp <- bd_shp %>%
  mutate(
    division = tolower(str_trim(name)),
    division = ifelse(division %in% names(name_corrections), name_corrections[division], division)
  )

#### Load Depression and Anxiety Data ####
depression_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_depression_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections), name_corrections[division], division),
    depression_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

anxiety_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_anxiety_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections), name_corrections[division], division),
    anxiety_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

#### Merge datasets ####
bd_merged <- bd_shp %>%
  left_join(depression_data %>% select(division, depression_prevalence_percent), by = "division") %>%
  left_join(anxiety_data %>% select(division, anxiety_prevalence_percent), by = "division") %>%
  mutate(
    label_text_depression = paste0(name, "\n", round(depression_prevalence_percent, 1), "%"),
    label_text_anxiety = paste0(name, "\n", round(anxiety_prevalence_percent, 1), "%")
  )

tmap_mode("plot")

#### Depression Map ####
dep_map <- tm_shape(bd_merged) +
  tm_polygons(
    values = "depression_prevalence_percent",
    fill.palette = "Reds",
    border.col = "#444444",
    border.lwd = 1,
    fill.legend = tm_legend(title = "Depression Prevalence (%)")
  ) +
  tm_text(
    "label_text_depression",
    size = 0.9,
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE,
    color.dark = "#222222",
    color.light = "#AAAAAA"
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#222222",
    color.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = FALSE,
    legend.position = c("center", "bottom"),
    frame = FALSE,
    bg.color = "#E5F1F9",
    legend.text.size = 1,
    legend.title.size = 1.2
  )

tmap_save(dep_map, "Depression_Map_BD.png", width = 10, height = 8, dpi = 300)

#### Anxiety Map ####
anx_map <- tm_shape(bd_merged) +
  tm_polygons(
    values = "anxiety_prevalence_percent",
    fill.palette = "Oranges",
    border.col = "#444444",
    border.lwd = 1,
    fill.legend = tm_legend(title = "Anxiety Prevalence (%)")
  ) +
  tm_text(
    "label_text_anxiety",
    size = 0.9,
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    show.labels = TRUE,
    color.dark = "#222222",
    color.light = "#AAAAAA"
  ) +
  tm_scalebar(
    position = c("left", "bottom"),
    text.size = 0.9,
    color.dark = "#222222",
    color.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = FALSE,
    legend.position = c("center", "bottom"),
    frame = FALSE,
    bg.color = "#E5F1F9",
    legend.text.size = 1,
    legend.title.size = 1.2
  )

tmap_save(anx_map, "Anxiety_Map_BD.png", width = 10, height = 8, dpi = 300)










#### Load libraries ####
library(tmap)
library(dplyr)
library(sf)
library(readxl)
library(stringr)

#### Load shapefile ####
bd_shp <- st_read("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Shape file/bd_shp/bd.shp")

#### Division name corrections ####
name_corrections <- c("barisal" = "barishal", "chittagong" = "chattogram")

bd_shp <- bd_shp %>%
  mutate(
    division = tolower(str_trim(name)),
    division = ifelse(division %in% names(name_corrections), name_corrections[division], division)
  )

#### Load Depression and Anxiety Data ####
depression_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_depression_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections), name_corrections[division], division),
    depression_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

anxiety_data <- read_excel("D:/Research/BDHS Research/Reproductive MH and Media/MH with pregnancy/R studio advance figure/Spatial/Data/division_anxiety_prevalence.xlsx") %>%
  mutate(
    division = tolower(str_trim(division)),
    division = ifelse(division %in% names(name_corrections), name_corrections[division], division),
    anxiety_prevalence_percent = pct_mild + pct_moderate + pct_severe
  )

#### Merge datasets ####
bd_merged <- bd_shp %>%
  left_join(depression_data %>% select(division, depression_prevalence_percent), by = "division") %>%
  left_join(anxiety_data %>% select(division, anxiety_prevalence_percent), by = "division") %>%
  mutate(
    label_text_depression = paste0(name, "\n", round(depression_prevalence_percent, 1), "%"),
    label_text_anxiety = paste0(name, "\n", round(anxiety_prevalence_percent, 1), "%")
  )

#### Set tmap to plot mode ####
tmap_mode("plot")

#### ===== Depression Map ===== ####
tm_shape(bd_merged) +
  tm_polygons(
    col = "depression_prevalence_percent",
    palette = "Reds",
    border.col = "#444444",
    lwd = 1,
    fill.legend = tm_legend(title = "Depression Prevalence (%)")   # v4 syntax
  ) +
  tm_text(
    "label_text_depression",
    size = 0.9,
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    col = "#222222"    # only 'col' works in v4
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.9,
    col.dark = "#222222",
    col.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = FALSE,
    legend.position = c("center", "bottom"),
    frame = FALSE,
    bg.color = "#E5F1F9",
    legend.text.size = 1,
    legend.title.size = 1.2
  )

#### ===== Anxiety Map ===== ####
tm_shape(bd_merged) +
  tm_polygons(
    col = "anxiety_prevalence_percent",
    palette = "Oranges",
    border.col = "#444444",
    lwd = 1,
    fill.legend = tm_legend(title = "Anxiety Prevalence (%)")   # v4 syntax
  ) +
  tm_text(
    "label_text_anxiety",
    size = 0.9,
    fontface = "bold",
    bg.color = "#F7F7F7",
    bg.alpha = 0.7
  ) +
  tm_compass(
    position = c("right", "top"),
    type = "arrow",
    size = 3,
    col = "#222222"
  ) +
  tm_scale_bar(
    position = c("left", "bottom"),
    text.size = 0.9,
    col.dark = "#222222",
    col.light = "#AAAAAA",
    bg.color = "#F7F7F7",
    frame = TRUE
  ) +
  tm_layout(
    legend.outside = FALSE,
    legend.position = c("center", "bottom"),
    frame = FALSE,
    bg.color = "#E5F1F9",
    legend.text.size = 1,
    legend.title.size = 1.2
  )


































































































































































#### Trend Line####


# Load necessary library
library(ggplot2)

# Create data frame
preg_loss_data <- data.frame(
  Year = c(1997, 2004, 2007, 2011, 2014, 2017, 2022),
  Prevalence = c(21, 22, 23, 22, 23, 22, 24)  # approximate percentages
)

# Plot trend line
ggplot(preg_loss_data, aes(x = Year, y = Prevalence)) +
  geom_point(color = "blue", size = 3) +      # points for each year
  geom_line(color = "blue", size = 1) +       # trend line
  ylim(20, 25) +                              # y-axis limits to better see variation
  labs(
    title = "Pregnancy Loss Prevalence Trend in Bangladesh (15-49 years)",
    x = "Year",
    y = "Pregnancy Loss Prevalence (%)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14, hjust = 0.5),
    axis.title = element_text(face = "bold")
  )















# Load library
library(ggplot2)

# Create data frame
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018)
urban <- c(24, 21, 31, 26, 26, 21, 24)
rural <- c(19, 20, 26, 25, 22, 19, 22)

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

# Plot the trend
ggplot(df, aes(x = Year, y = Prevalence, group = Area, color = Area)) +
  geom_line(size = 1.5, linetype = "dashed") +
  geom_point(size = 3) +
  geom_text(aes(label = Prevalence), vjust = -0.7, size = 4.5) +
  scale_color_manual(values = c("Urban" = "steelblue", "Rural" = "darkorange")) +
  labs(
    title = "Weighted Proportion of Termination of Pregnancy in Urban and Rural Areas (1997–2018)",
    x = "Survey Year",
    y = "Prevalence (%)"
  ) +
  theme_minimal(base_size = 15)



















# Load necessary libraries
library(ggplot2)
library(showtext)   # for better fonts
library(ggthemes)   # for journal-style themes
library(ggrepel)    # for smart text labels

# Enable nice font
font_add_google("Lato", "lato")
showtext_auto()

# Data
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018)
urban <- c(24, 21, 31, 26, 26, 21, 24)
rural <- c(19, 20, 26, 25, 22, 19, 22)

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

# Custom color palette
colors <- c("Urban" = "#0072B2", "Rural" = "#D55E00")

# Plot
ggplot(df, aes(x = Year, y = Prevalence, group = Area, color = Area)) +
  geom_line(size = 1.5, linetype = "longdash") +
  geom_point(size = 4, shape = 21, fill = "white", stroke = 1.5) +
  geom_text_repel(aes(label = Prevalence),
                  size = 5,
                  fontface = "bold",
                  family = "lato",
                  box.padding = 0.3,
                  point.padding = 0.3,
                  segment.color = "gray70") +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  labs(
    title = "Trends in Termination of Pregnancy in Urban and Rural Bangladesh (1997–2018)",
    subtitle = "Weighted proportion (%) from BDHS data",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "lato", base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 20, margin = margin(b = 10)),
    plot.subtitle = element_text(size = 15, margin = margin(b = 20)),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(size = 14),
    legend.position = "top",
    legend.text = element_text(size = 14),
    panel.grid.major = element_line(color = "gray85"),
    panel.grid.minor = element_blank()
  )










# Install if not already installed
# install.packages(c("ggplot2", "showtext", "ggrepel"))

library(ggplot2)
library(showtext)
library(ggrepel)

font_add_google("Montserrat", "montserrat")  # Modern, clean font
showtext_auto()

# Data
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018)
urban <- c(24, 21, 31, 26, 26, 21, 24)
rural <- c(19, 20, 26, 25, 22, 19, 22)

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

# Colors (updated for fresh look)
colors <- c("Urban" = "#1F77B4", "Rural" = "#FF7F0E")

# Plot
ggplot(df, aes(x = Year, y = Prevalence, color = Area)) +
  geom_step(size = 1.6, direction = "hv") + # stepwise lines, horizontal-vertical steps
  geom_point(size = 5, alpha = 0.8, shape = 21, fill = "white", stroke = 1.2) + # stylish points
  geom_text_repel(aes(label = Prevalence),
                  size = 5.5,
                  fontface = "bold",
                  family = "montserrat",
                  nudge_y = 1,
                  segment.color = "gray80") +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Stepwise Trends in Termination of Pregnancy (1997–2018)",
    subtitle = "Urban vs Rural Bangladesh | Weighted Prevalence (%)",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 24, margin = margin(b = 15)),
    plot.subtitle = element_text(size = 16, margin = margin(b = 25), color = "gray30"),
    axis.title = element_text(face = "bold", size = 16),
    axis.text = element_text(size = 14, color = "gray20"),
    legend.position = "top",
    legend.text = element_text(size = 15),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )















library(ggplot2)
library(showtext)
library(ggrepel)

font_add_google("Montserrat", "montserrat")
showtext_auto()

# Existing years + 2022
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)

# Prevalence % for Urban including 2022 (from Stata: 24.10%)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)

# Prevalence % for Rural including 2022 (from Stata: 22.30%)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

colors <- c("Urban" = "#1F77B4", "Rural" = "#FF7F0E")

ggplot(df, aes(x = Year, y = Prevalence, color = Area)) +
  geom_step(size = 1.6, direction = "hv") +
  geom_point(size = 5, alpha = 0.8, shape = 21, fill = "white", stroke = 1.2) +
  geom_text_repel(aes(label = round(Prevalence, 1)),
                  size = 5.5,
                  fontface = "bold",
                  family = "montserrat",
                  nudge_y = 1,
                  segment.color = "gray80") +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Stepwise Trends in Termination of Pregnancy (1997–2022)",
    subtitle = "Urban vs Rural Bangladesh | Weighted Prevalence (%)",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 24, margin = margin(b = 15)),
    plot.subtitle = element_text(size = 16, margin = margin(b = 25), color = "gray30"),
    axis.title = element_text(face = "bold", size = 16),
    axis.text = element_text(size = 14, color = "gray20"),
    legend.position = "top",
    legend.text = element_text(size = 15),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )






library(ggplot2)
library(showtext)
library(ggrepel)

font_add_google("Montserrat", "montserrat")
showtext_auto()

# Data with 2022 included
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

colors <- c("Urban" = "#1F77B4", "Rural" = "#FF7F0E")

ggplot(df, aes(x = Year, y = Prevalence, color = Area, group = Area)) +
  geom_point(size = 5, shape = 21, fill = "white", stroke = 1.2) +
  geom_line(size = 1.5) +
  geom_smooth(method = "loess", se = TRUE, alpha = 0.2, size = 0.8) +
  geom_text_repel(aes(label = round(Prevalence,1)),
                  size = 5,
                  fontface = "bold",
                  family = "montserrat",
                  nudge_y = 1,
                  segment.color = "gray80") +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Smooth Trend of Termination of Pregnancy (1997–2022)",
    subtitle = "Urban vs Rural Bangladesh | Weighted Prevalence (%)",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 24, margin = margin(b = 15)),
    plot.subtitle = element_text(size = 16, margin = margin(b = 25), color = "gray30"),
    axis.title = element_text(face = "bold", size = 16),
    axis.text = element_text(size = 14, color = "gray20"),
    legend.position = "top",
    legend.text = element_text(size = 15),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )



















library(ggplot2)
library(showtext)
library(ggrepel)

font_add_google("Montserrat", "montserrat")
showtext_auto()

# Data including 2022
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

colors <- c("Urban" = "#1A73E8",  # Brighter blue
            "Rural" = "#FB8C00")  # Brighter orange

ggplot(df, aes(x = Year, y = Prevalence, color = Area, group = Area)) +
  geom_point(size = 6, shape = 21, fill = "white", stroke = 1.5) +
  geom_line(size = 1.2) +
  geom_smooth(method = "loess", se = TRUE, alpha = 0.15, size = 0.9, show.legend = FALSE) +
  geom_text_repel(aes(label = round(Prevalence, 1)),
                  size = 5.8,
                  fontface = "bold",
                  family = "montserrat",
                  nudge_y = 1.2,
                  segment.color = "gray80",
                  min.segment.length = 0) +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Trends in Termination of Pregnancy in Bangladesh (1997–2022)",
    subtitle = "Urban vs Rural | Weighted Prevalence (%)",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 26, margin = margin(b = 20)),
    plot.subtitle = element_text(size = 18, margin = margin(b = 30), color = "#444444"),
    axis.title = element_text(face = "bold", size = 17),
    axis.text = element_text(size = 15, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 16),
    panel.grid.major = element_line(color = "#E2E2E2"),
    panel.grid.minor = element_blank()
  )







library(ggplot2)
library(showtext)
library(ggrepel)

font_add_google("Montserrat", "montserrat")
showtext_auto()

# Data with 2022
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

colors <- c("Urban" = "#1A73E8", "Rural" = "#FB8C00")

ggplot(df, aes(x = Year, y = Prevalence, group = Area, color = Area)) +
  geom_point(size = 7, shape = 21, fill = "white", stroke = 1.7) +
  geom_line(size = 1, alpha = 0.8) +
  geom_text_repel(aes(label = round(Prevalence,1)),
                  size = 5.5, fontface = "bold", family = "montserrat",
                  nudge_y = 1.2, segment.color = "gray80") +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Pregnancy Loss Trends in Bangladesh (1997–2022)",
    subtitle = "Weighted Prevalence (%) by Urban and Rural Areas",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 26, margin = margin(b = 20)),
    plot.subtitle = element_text(size = 18, margin = margin(b = 30), color = "#444444"),
    axis.title = element_text(face = "bold", size = 17),
    axis.text = element_text(size = 15, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 16),
    panel.grid.major = element_line(color = "#E2E2E2"),
    panel.grid.minor = element_blank()
  )










library(ggplot2)
library(showtext)
library(ggrepel)

font_add_google("Montserrat", "montserrat")
showtext_auto()

# Data including 2022
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(urban, rural),
  Area = rep(c("Urban", "Rural"), each = length(year))
)

colors <- c("Urban" = "#1A73E8", "Rural" = "#FB8C00")

ggplot(df, aes(x = Year, y = Prevalence, fill = Area)) +
  geom_area(position = "identity", alpha = 0.4, color = NA) +  # semi-transparent overlapping areas
  geom_line(aes(color = Area), size = 1.2) +  # lines on top for clarity
  geom_point(aes(color = Area), size = 4, shape = 21, fill = "white", stroke = 1.2) +
  geom_text_repel(aes(label = round(Prevalence, 1), color = Area),
                  size = 5, fontface = "bold", family = "montserrat",
                  nudge_y = 1, segment.color = "gray80", show.legend = FALSE) +
  scale_fill_manual(values = colors) +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Trends in Termination of Pregnancy in Bangladesh (1997–2022)",
    subtitle = "Weighted Prevalence (%) by Urban and Rural Areas",
    x = "Survey Year",
    y = "Prevalence (%)",
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 26, margin = margin(b = 20)),
    plot.subtitle = element_text(size = 18, margin = margin(b = 30), color = "#444444"),
    axis.title = element_text(face = "bold", size = 17),
    axis.text = element_text(size = 15, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 16),
    panel.grid.major = element_line(color = "#E2E2E2"),
    panel.grid.minor = element_blank()
  )



library(ggplot2)
library(showtext)
library(ggrepel)
library(viridis)  # for viridis color palette

font_add_google("Montserrat", "montserrat")
showtext_auto()

# Data including 2022
year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(urban, rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)

# Viridis colors for two groups
colors <- viridis::viridis(2, option = "D")
names(colors) <- c("Urban", "Rural")

ggplot(df, aes(x = Year, y = Prevalence, fill = Area)) +
  geom_area(position = "identity", alpha = 0.4, color = NA) +
  geom_line(aes(color = Area), size = 1.2) +
  geom_point(aes(color = Area), size = 4, shape = 21, fill = "white", stroke = 1.2) +
  geom_text_repel(aes(label = round(Prevalence, 1), color = Area),
                  size = 5, fontface = "bold", family = "montserrat",
                  nudge_y = 1, segment.color = "gray80", show.legend = FALSE) +
  scale_fill_manual(values = colors) +
  scale_color_manual(values = colors) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Trends in Termination of Pregnancy in Bangladesh (1997–2022)",
    subtitle = "Weighted Prevalence (%) by Urban and Rural Areas",
    x = "Survey Year",
    y = "Prevalence (%)",
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 26, margin = margin(b = 20)),
    plot.subtitle = element_text(face = "bold", size = 18, margin = margin(b = 30), color = "#444444"),
    axis.title = element_text(face = "bold", size = 17),
    axis.text = element_text(face = "bold", size = 15, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 16),
    panel.grid.major = element_line(color = "#E2E2E2"),
    panel.grid.minor = element_blank()
  )






library(ggplot2)
library(showtext)
library(ggrepel)
library(viridis)

font_add_google("Montserrat", "montserrat")
showtext_auto()

year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(urban, rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)

colors_fill <- viridis::viridis(2, option = "C")
colors_line <- viridis::viridis(2, option = "D")

ggplot(df, aes(x = Year, y = Prevalence, fill = Area)) +
  geom_area(position = "identity", alpha = 0.35, color = NA) +  # no border on fill
  geom_line(aes(color = Area), size = 1.3) +
  geom_point(aes(color = Area), size = 6, shape = 21, fill = "white", stroke = 1.7,
             show.legend = FALSE) +
  geom_point(aes(color = Area), size = 6, shape = 21, fill = "white", stroke = 0.6,
             position = position_nudge(y = 0.1), alpha = 0.3, show.legend = FALSE) + # subtle shadow
  geom_text_repel(aes(label = round(Prevalence, 1), color = Area),
                  size = 6, fontface = "bold", family = "montserrat",
                  nudge_y = 1.4, segment.color = "gray85", show.legend = FALSE) +
  scale_fill_manual(values = colors_fill) +
  scale_color_manual(values = colors_line) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.12))) +
  labs(
    title = "Trends in Termination of Pregnancy in Bangladesh (1997–2022)",
    subtitle = "Weighted Prevalence (%) by Urban and Rural Areas",
    x = "Survey Year",
    y = "Prevalence (%)",
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 28, margin = margin(b = 25), color = "#222222"),
    plot.subtitle = element_text(face = "bold", size = 20, margin = margin(b = 30), color = "#555555"),
    axis.title = element_text(face = "bold", size = 18, color = "#333333"),
    axis.text = element_text(face = "bold", size = 16, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 17, face = "bold"),
    panel.grid.major = element_line(color = "#F0F0F0"),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "white", color = NA),
    plot.background = element_rect(fill = "#FAFAFA", color = NA)
  )



































library(ggplot2)
library(showtext)
library(ggrepel)
library(scales)  # for alpha()

font_add_google("Montserrat", "montserrat")
showtext_auto()

year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(urban, rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)

# Vibrant attractive colors
colors_fill <- c("Urban" = alpha("#0072B2", 0.4),   # bright blue fill
                 "Rural" = alpha("#E69F00", 0.4))   # bright orange fill

colors_line <- c("Urban" = "#0072B2",  # bright blue
                 "Rural" = "#E69F00")  # bright orange

ggplot(df, aes(x = Year, y = Prevalence, fill = Area)) +
  geom_area(position = "identity", color = NA) +  # no border on fill
  geom_line(aes(color = Area), size = 1.5, lineend = "round") +
  geom_point(aes(color = Area), size = 6, shape = 21, fill = "white", stroke = 1.7) +
  geom_text_repel(aes(label = round(Prevalence, 1), color = Area),
                  size = 6, fontface = "bold", family = "montserrat",
                  nudge_y = 1.3, segment.color = "gray70", max.overlaps = 20,
                  show.legend = FALSE) +
  scale_fill_manual(values = colors_fill) +
  scale_color_manual(values = colors_line) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.12))) +
  labs(
    title = "Trends in Termination of Pregnancy in Bangladesh (1997–2022)",
    subtitle = "Weighted Prevalence (%) by Urban and Rural Areas",
    x = "Survey Year",
    y = "Prevalence (%)",
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 28, margin = margin(b = 20), color = "#222222"),
    plot.subtitle = element_text(face = "bold", size = 20, margin = margin(b = 30), color = "#444444"),
    axis.title = element_text(face = "bold", size = 18, color = "#222222"),
    axis.text = element_text(face = "bold", size = 16, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 16, face = "bold", color = "#222222"),
    panel.grid.major = element_line(color = "#EAEAEA"),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "white", color = NA),
    plot.background = element_rect(fill = "#FAFAFA", color = NA)
  )












library(ggplot2)
library(showtext)
library(ggrepel)
library(scales)

font_add_google("Montserrat", "montserrat")
showtext_auto()

year <- c(1997, 2000, 2004, 2007, 2011, 2014, 2018, 2022)
urban <- c(24, 21, 31, 26, 26, 21, 24, 24.10)
rural <- c(19, 20, 26, 25, 22, 19, 22, 22.30)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(urban, rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)

colors_fill <- c("Urban" = scales::alpha("#0072B2", 0.4),
                 "Rural" = scales::alpha("#E69F00", 0.4))

colors_line <- c("Urban" = "#0072B2",
                 "Rural" = "#E69F00")

ggplot(df, aes(x = Year, y = Prevalence, fill = Area)) +
  geom_area(position = "identity", color = NA) +
  geom_line(aes(color = Area), size = 1.5, lineend = "round") +
  geom_point(aes(color = Area), size = 6, shape = 24, fill = "white", stroke = 1.7) +  # triangle points
  geom_text_repel(aes(label = round(Prevalence, 1), color = Area),
                  size = 6, fontface = "bold", family = "montserrat",
                  nudge_y = 1.3, segment.color = "gray70", max.overlaps = 20,
                  show.legend = FALSE) +
  scale_fill_manual(values = colors_fill) +
  scale_color_manual(values = colors_line) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(15, 35), expand = expansion(mult = c(0, 0.12))) +
  labs(
    title = "Trends in Termination of Pregnancy in Bangladesh (1997–2022)",
    subtitle = "Weighted Prevalence (%) by Urban and Rural Areas",
    x = "Survey Year",
    y = "Prevalence (%)",
    fill = NULL,
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 28, margin = margin(b = 20), color = "#222222"),
    plot.subtitle = element_text(face = "bold", size = 20, margin = margin(b = 30), color = "#444444"),
    axis.title = element_text(face = "bold", size = 18, color = "#222222"),
    axis.text = element_text(face = "bold", size = 16, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 16, face = "bold", color = "#222222"),
    panel.grid.major = element_line(color = "#EAEAEA"),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "white", color = NA),
    plot.background = element_rect(fill = "#FAFAFA", color = NA)
  )





#### internet status plot####
# Survey years with internet use data
year <- c(2011, 2014, 2018, 2022)

# Internet use in the past 12 months (%) by area based on BDHS and your data
internet_urban <- c(7.5, 13, 28, 27.3)   # updated 2022 value
internet_rural <- c(0.5, 1.8, 6, 16.6)   # updated 2022 value

df <- data.frame(
  Year = rep(year, times = 2),
  Prevalence = c(internet_urban, internet_rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)





library(ggplot2)
library(showtext)
library(ggrepel)
library(scales)

# Load nice font
font_add_google("Montserrat", "montserrat")
showtext_auto()

# Data
year <- c(2011, 2014, 2018, 2022)
internet_urban <- c(7.5, 13, 28, 27.3)
internet_rural <- c(0.5, 1.8, 6, 16.6)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(internet_urban, internet_rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)

# Colors
colors_line <- c("Urban" = "#0072B2", "Rural" = "#E69F00")

# Plot
ggplot(df, aes(x = Year, y = Prevalence, color = Area)) +
  geom_line(size = 1.5, lineend = "round") +
  geom_point(size = 5, shape = 22, fill = "white", stroke = 1.5) +  # square points
  geom_text_repel(aes(label = round(Prevalence, 1)), 
                  size = 5, fontface = "bold", family = "montserrat",
                  nudge_y = 2, segment.color = "gray80", show.legend = FALSE) +
  scale_color_manual(values = colors_line) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(0, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Trends in Internet Use in Bangladesh (2011–2022)",
    subtitle = "Percentage of Ever-Married Women Using Internet in the Past 12 Months",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 24, margin = margin(b = 15), color = "#222222"),
    plot.subtitle = element_text(face = "bold", size = 16, margin = margin(b = 25), color = "#444444"),
    axis.title = element_text(face = "bold", size = 16, color = "#222222"),
    axis.text = element_text(face = "bold", size = 14, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 14, face = "bold", color = "#222222"),
    panel.grid.major = element_line(color = "#EAEAEA"),
    panel.grid.minor = element_blank()
  )








library(ggplot2)
library(showtext)
library(ggrepel)
library(scales)

font_add_google("Montserrat", "montserrat")
showtext_auto()

year <- c(2011, 2014, 2018, 2022)
internet_urban <- c(7.5, 13, 28, 27.3)
internet_rural <- c(0.5, 1.8, 6, 16.6)

df <- data.frame(
  Year = rep(year, 2),
  Prevalence = c(internet_urban, internet_rural),
  Area = factor(rep(c("Urban", "Rural"), each = length(year)))
)

colors_line <- c("Urban" = "#0072B2", "Rural" = "#E69F00")

ggplot(df, aes(x = Year, y = Prevalence, color = Area)) +
  geom_step(size = 1.5, direction = "hv") +   # stepwise lines, horizontal-vertical steps
  geom_point(size = 5, shape = 22, fill = "white", stroke = 1.5) + # square points
  geom_text_repel(aes(label = round(Prevalence, 1)),
                  size = 5, fontface = "bold", family = "montserrat",
                  nudge_y = 2, segment.color = "gray80", show.legend = FALSE) +
  scale_color_manual(values = colors_line) +
  scale_x_continuous(breaks = year) +
  scale_y_continuous(limits = c(0, 35), expand = expansion(mult = c(0, 0.1))) +
  labs(
    title = "Stepwise Trends in Internet Use in Bangladesh (2011–2022)",
    subtitle = "Percentage of Ever-Married Women Using Internet in the Past 12 Months",
    x = "Survey Year",
    y = "Prevalence (%)",
    color = NULL
  ) +
  theme_minimal(base_family = "montserrat") +
  theme(
    plot.title = element_text(face = "bold", size = 24, margin = margin(b = 15), color = "#222222"),
    plot.subtitle = element_text(face = "bold", size = 16, margin = margin(b = 25), color = "#444444"),
    axis.title = element_text(face = "bold", size = 16, color = "#222222"),
    axis.text = element_text(face = "bold", size = 14, color = "#444444"),
    legend.position = "top",
    legend.text = element_text(size = 14, face = "bold", color = "#222222"),
    panel.grid.major = element_line(color = "#EAEAEA"),
    panel.grid.minor = element_blank()
  )












































#### basic plot####
# Data frame for Pregnancy Loss category vs Depression
preg_loss_depression <- data.frame(
  preg_loss_cat = factor(c("None", "One loss", "Two or more losses"), 
                         levels = c("None", "One loss", "Two or more losses")),
  None = c(11057, 2465, 631),
  Mild = c(3521, 1002, 285),
  Moderate = c(554, 170, 38),
  Severe = c(193, 49, 22)
)


# Data frame for Depression vs Internet Use

depression_internet <- data.frame(
  Depression = factor(c("None", "Mild", "Moderate", "Severe"), 
                      levels = c("None", "Mild", "Moderate", "Severe")),
  NoInternet = c(9913, 3572, 597, 206),
  Internet = c(4240, 1236, 165, 58)
)


print(preg_loss_depression)
print(depression_internet)




# percentage preg loss
preg_loss_depression <- data.frame(
  preg_loss_cat = factor(c("None", "One loss", "Two or more losses"), 
                         levels = c("None", "One loss", "Two or more losses")),
  None = c(11057, 2465, 631),
  Mild = c(3521, 1002, 285),
  Moderate = c(554, 170, 38),
  Severe = c(193, 49, 22)
)

# Calculate row totals
preg_loss_depression$Total <- rowSums(preg_loss_depression[ , 2:5])

# Calculate percentages for each category
preg_loss_depression_pct <- preg_loss_depression
preg_loss_depression_pct[ , 2:5] <- round(preg_loss_depression_pct[ , 2:5] / preg_loss_depression_pct$Total * 100, 2)

preg_loss_depression_pct



# percentage internet
depression_internet <- data.frame(
  Depression = factor(c("None", "Mild", "Moderate", "Severe"), 
                      levels = c("None", "Mild", "Moderate", "Severe")),
  NoInternet = c(9913, 3572, 597, 206),
  Internet = c(4240, 1236, 165, 58)
)

# Calculate row totals
depression_internet$Total <- rowSums(depression_internet[ , 2:3])

# Calculate percentages
depression_internet_pct <- depression_internet
depression_internet_pct[ , 2:3] <- round(depression_internet_pct[ , 2:3] / depression_internet_pct$Total * 100, 2)

depression_internet_pct




install.packages("tidyr")
library(tidyr)

library(tidyr)
library(ggplot2)
library(dplyr)

# For Pregnancy Loss vs Depression percentages
preg_loss_long <- preg_loss_depression_pct %>%
  select(-Total) %>%
  pivot_longer(cols = -preg_loss_cat, names_to = "DepressionCategory", values_to = "Percentage")

# For Depression vs Internet Use percentages
depression_internet_long <- depression_internet_pct %>%
  select(-Total) %>%
  pivot_longer(cols = -Depression, names_to = "InternetUse", values_to = "Percentage")



# Visualizations

library(ggplot2)
library(viridis)  # for viridis color scale
library(dplyr)
library(tidyr)

# For the Depression vs Internet Use plot
ggplot(depression_internet_long, aes(x = Depression, y = Percentage, fill = InternetUse)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +  # black border for bars
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5), 
            size = 5, fontface = "bold", color = "black") +
  scale_fill_viridis_d(option = "D", begin = 0.3, end = 0.8) +
  labs(title = "Internet Use (%) by Depression Category",
       x = "Depression Category (PHQ-9)",
       y = "Percentage (%)",
       fill = "Internet Use") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )

# For the Pregnancy Loss vs Depression plot
ggplot(preg_loss_long, aes(x = preg_loss_cat, y = Percentage, fill = DepressionCategory)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5), 
            size = 5, fontface = "bold", color = "black") +
  scale_fill_viridis_d(option = "C", begin = 0.3, end = 0.85) +
  labs(title = "Depression Categories (%) by Pregnancy Loss",
       x = "Pregnancy Loss Category",
       y = "Percentage (%)",
       fill = "Depression Category") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )




#### Create data frames for Anxiety####
library(dplyr)
library(tidyr)
library(ggplot2)
library(viridis)

# Anxiety vs Internet Use counts
anxiety_internet <- data.frame(
  Anxiety = factor(c("None", "Mild", "Moderate", "Severe"), levels = c("None", "Mild", "Moderate", "Severe")),
  NoInternet = c(10118, 3483, 540, 147),
  Internet = c(4493, 997, 156, 53)
)

# Anxiety vs Pregnancy Loss counts
anxiety_preg_loss <- data.frame(
  Anxiety = factor(c("None", "Mild", "Moderate", "Severe"), levels = c("None", "Mild", "Moderate", "Severe")),
  None = c(11442, 3264, 474, 145),
  OneLoss = c(2553, 930, 163, 40),
  TwoOrMore = c(616, 286, 59, 15)
)



####Calculate row-wise percentages####
# Anxiety vs Internet Use percentages
anxiety_internet <- anxiety_internet %>%
  mutate(Total = NoInternet + Internet) %>%
  mutate(
    NoInternet_pct = round(NoInternet / Total * 100, 2),
    Internet_pct = round(Internet / Total * 100, 2)
  )

# Anxiety vs Pregnancy Loss percentages
anxiety_preg_loss <- anxiety_preg_loss %>%
  mutate(Total = None + OneLoss + TwoOrMore) %>%
  mutate(
    None_pct = round(None / Total * 100, 2),
    OneLoss_pct = round(OneLoss / Total * 100, 2),
    TwoOrMore_pct = round(TwoOrMore / Total * 100, 2)
  )








# Long format for Anxiety vs Internet Use (%)
anxiety_internet_long <- anxiety_internet %>%
  select(Anxiety, NoInternet_pct, Internet_pct) %>%
  rename(NoInternet = NoInternet_pct, Internet = Internet_pct) %>%
  pivot_longer(cols = -Anxiety, names_to = "InternetUse", values_to = "Percentage")

# Long format for Anxiety vs Pregnancy Loss (%)
anxiety_preg_loss_long <- anxiety_preg_loss %>%
  select(Anxiety, None_pct, OneLoss_pct, TwoOrMore_pct) %>%
  rename(None = None_pct, OneLoss = OneLoss_pct, TwoOrMore = TwoOrMore_pct) %>%
  pivot_longer(cols = -Anxiety, names_to = "PregnancyLoss", values_to = "Percentage")










# Anxiety vs Internet Use
ggplot(anxiety_internet_long, aes(x = Anxiety, y = Percentage, fill = InternetUse)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5),
            size = 5, fontface = "bold", color = "black") +
  scale_fill_viridis_d(option = "D", begin = 0.3, end = 0.8) +
  labs(title = "Internet Use (%) by Anxiety Category",
       x = "Anxiety Category (GAD-7)",
       y = "Percentage (%)",
       fill = "Internet Use") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )

# Anxiety vs Pregnancy Loss
ggplot(anxiety_preg_loss_long, aes(x = Anxiety, y = Percentage, fill = PregnancyLoss)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5),
            size = 5, fontface = "bold", color = "black") +
  scale_fill_viridis_d(option = "C", begin = 0.3, end = 0.85) +
  labs(title = "Anxiety Categories (%) by Pregnancy Loss",
       x = "Anxiety Category (GAD-7)",
       y = "Percentage (%)",
       fill = "Pregnancy Loss Category") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )









# Anxiety vs Internet Use with viridis A (bright vivid)
ggplot(anxiety_internet_long, aes(x = Anxiety, y = Percentage, fill = InternetUse)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5),
            size = 5, fontface = "bold", color = "black") +
  scale_fill_viridis_d(option = "A", begin = 0.3, end = 0.85) +
  labs(title = "Internet Use (%) by Anxiety Category",
       x = "Anxiety Category (GAD-7)",
       y = "Percentage (%)",
       fill = "Internet Use") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )









# Custom bright colors for Internet Use
custom_colors_internet <- c("NoInternet" = "#E69F00",  # orange
                            "Internet" = "#56B4E9")    # sky blue

ggplot(anxiety_internet_long, aes(x = Anxiety, y = Percentage, fill = InternetUse)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5),
            size = 5, fontface = "bold", color = "black") +
  scale_fill_manual(values = custom_colors_internet) +
  labs(title = "Internet Use (%) by Anxiety Category",
       x = "Anxiety Category (GAD-7)",
       y = "Percentage (%)",
       fill = "Internet Use") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )





# Manual bright palette for Pregnancy Loss
custom_colors_preg <- c("None" = "#D55E00",     # bright reddish-orange
                        "OneLoss" = "#0072B2",  # vivid blue
                        "TwoOrMore" = "#009E73")# teal green

ggplot(anxiety_preg_loss_long, aes(x = Anxiety, y = Percentage, fill = PregnancyLoss)) +
  geom_bar(stat = "identity", color = "black", size = 0.3) +
  geom_text(aes(label = paste0(Percentage, "%")), position = position_stack(vjust = 0.5),
            size = 5, fontface = "bold", color = "black") +
  scale_fill_manual(values = custom_colors_preg) +
  labs(title = "Anxiety Categories (%) by Pregnancy Loss",
       x = "Anxiety Category (GAD-7)",
       y = "Percentage (%)",
       fill = "Pregnancy Loss Category") +
  theme_minimal(base_size = 16) +
  theme(
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    axis.title = element_text(face = "bold"),
    axis.text = element_text(face = "bold", color = "black"),
    legend.title = element_text(face = "bold"),
    legend.text = element_text(face = "bold"),
    panel.grid.major = element_line(color = "gray90"),
    panel.grid.minor = element_blank()
  )




