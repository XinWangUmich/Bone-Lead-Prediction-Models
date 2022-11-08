### Tibia lead prediction model 
### Using information on: blood lead, age, BMI, smoking status (current, former, and never), pack-year, occupation (white-collar vs. others), and education (<high school, highschool, college and above)
### Please cite: Wang, X., Bakulski, K. M., Mukherjee, B., Hu, H., & Park, S. K. (2022). Predicting cumulative lead (Pb) exposure using the Super Learner algorithm. Chemosphere, 137125.

# Load libraries required for predictions
library(SuperLearner)
library(gam)
library(rpart)
library(ranger)
library(glmnet)
library(xgboost)

# Load tibia lead prediction model
load("SL_tibx_pred.RData")

# Please rename predictor names in your dataset as follows:
  # Log-transformed blood lead: log_bpb
  # Age: age
  # BMI: bmi
  # Former smoker: formersmk
  # Current smoker: currentsmk
  # Education (high school): highschool
  # Education (College and above): college
  # White-collar jobs: whitecol

# Prepare predictor data
predictors<-YOURDATA[,predictor_names]

  # Standardize continuous predictors using mean and standard deviation from the training data
  predictors$log_bpb <- (predictors$log_bpb-1.61)/0.63
  predictors$age <- (predictors$age-67.15)/7.19
  predictors$bmi <- (predictors$bmi-27.79)/3.74
  predictors$packyrs <- (predictors$packyrs-21.91)/25.67
  
# Predict tibia lead concentration
pred_tibx <-predict.SuperLearner(model_tibx_min, newdata=predictors)$pred