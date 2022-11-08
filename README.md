# Bone-Lead-Prediction-Models

*Please cite:

Xin Wang, Kelly M.Bakulski, Bhramar Mukherjee, Howard Hu, Sung Kyun Park

Predicting cumulative lead (Pb) exposure using the Super Learner algorithm

Chemosphere
Volume 311, Part 2, January 2023, 137125
https://doi.org/10.1016/j.chemosphere.2022.137125*

Bone lead concentration is considered the optimal biomarker for cumulative lead exposure but remains limited for large population-based studies due to technical availability and expense. This project provides prediction models for two bone lead concentrations- patella lead and tibia lead, based on information on blood lead concentration (log-transformed), age, education, job type, body mass index, smoking status, and cumulative cigarette smoking (pack-year). The models were trained in the Normative Aging Study using the Super Learner algorithm.

The prediction model can be found in *SL_patx_pred.RData* for patella lead, and *SL_tibx_pred.RData* for tibia lead.
