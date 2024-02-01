	if (!requireNamespace("dplyr", quietly = TRUE)) {
	install.packages("dplyr", lib='/opt/app-root/src/R/temp-library', dependencies = TRUE)
	}
	library(dplyr)
	set.seed(123)

	# Use the dplyr::data_frame function to avoid conflicts with base::data.frame
	data <- dplyr::data_frame(x = rnorm(100), y = 2 * x + rnorm(100))
	model <- lm(y ~ x, data = data)
	mean_x <- mean(data$x)
	mean_y <- mean(data$y)
	correlation <- cor(data$x, data$y)

	print("Summary of Linear Regression Model:")
	print(summary(model))
	cat("\nStatistical Analysis Results:\n")
	cat("Mean of x:", mean_x, "\n")
	cat("Mean of y:", mean_y, "\n")
	cat("Correlation between x and y:", correlation, "\n")
	print("Complex R script executed successfully!")
