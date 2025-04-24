
# 🧠 Quantifying Emotional Impact on Brain Activity: A Nonlinear Regression and Bayesian Approach to MEG Signal Modeling

## 📁 Folder Overview

This project is housed under the folder `7135CEM (Part 2)` and includes both a scientific paper and its companion codebase. The work stems from coursework for the **7089CEM: Introduction to Statistical Methods for Data Science** module at Coventry University. It investigates the effect of emotional auditory stimuli on brain activity using **Magnetoencephalography (MEG)** data.

---

## 🧠 Research Objective

The aim of the project is to model how emotional versus neutral audio narration modulates brain responses using MEG signal data. It employs **Nonlinear Polynomial Regression** and **Approximate Bayesian Computation (ABC)** to:

- Identify the best regression model among candidates.
- Estimate and validate the model parameters.
- Quantify model uncertainty using Bayesian techniques.

---

## 📊 Topics & Structure (Aligned with Paper)

### 📌 1. Introduction

Introduces the significance of emotional auditory processing in cognitive neuroscience and neuromarketing. Emphasizes the potential of MEG for high-resolution brain activity modeling.

---

### 📌 2. Dataset Description

- `x₁`: Continuous audio intensity values (real-valued signal)
- `x₂`: Binary indicator (0 for neutral narration, 1 for emotional)
- `y`: MEG signal values, nonlinear function of x₁ and x₂, with additive Gaussian noise

The dataset simulates a 20-second exposure: 10 seconds of neutral narration followed by 10 seconds of emotional narration.

---

### 📌 3. Experimental Design

Describes the simulated experimental paradigm:
- Subject listens to an advertisement in two phases (neutral → emotional)
- Models MEG response to distinguish changes in neural activity

---

### 📌 4. Preliminary Data Analysis

Performed via Python visualizations:
- Time series plots of x₁, x₂, y
- Histograms and distributions
- Scatter matrices (pairplots)
- Correlation heatmaps
- Boxplots comparing brain response across narration types

These analyses reveal positive correlations and distributional insights supportive of regression modeling.

---

### 📌 5. Regression Model Formulation

Five **nonlinear polynomial regression models** were proposed. Each integrates powers of x₁ and categorical input x₂. 

- Models range from simple linear forms to quintic polynomials
- Each includes an intercept (bias) term

---

### 📌 6. Model Parameter Estimation

Parameters were estimated using **Ordinary Least Squares (OLS)**:
```python
θ̂ = (XᵀX)⁻¹Xᵀy
```

Predicted values and fitted plots were generated for each model across the full dataset.

---

### 📌 7. Residual Diagnostics

Residuals were:
- Plotted via histograms and Q-Q plots
- Evaluated for normality (Gaussian behavior)
- Checked for bias and heteroscedasticity

Model 3 showed near-perfect Gaussian residuals—ideal for OLS assumptions.

---

### 📌 8. Model Evaluation (RSS, AIC, BIC, Log-Likelihood)

Each model was compared using:
- **Residual Sum of Squares (RSS)**
- **Log-Likelihood**
- **Akaike Information Criterion (AIC)**
- **Bayesian Information Criterion (BIC)**

Model 3 had the best tradeoff between complexity and fit.

---

### 📌 9. Prediction Performance & Confidence Intervals

- 70/30 Train-Test split
- Predicted MEG signal on test set
- Visualized with 95% confidence intervals

This demonstrated **robust generalization** and reliable prediction bounds.

---

### 📌 10. Approximate Bayesian Computation (ABC)

To quantify uncertainty in θ:
- Rejection Sampling was applied on top two parameters
- Uniform priors centered on OLS estimates
- Plotted marginal and joint posterior distributions

Findings confirmed frequentist estimates with narrow credible intervals.

---

### 📌 11. Results & Discussion

- Model 3 dominated all performance metrics
- Emotional narration elicited stronger MEG response
- Residuals and ABC validated the model structure and inference

---

### 📌 12. Conclusion and Future Work

- Polynomial regression + Bayesian inference = robust framework
- Suggested future: Multivariate modeling, MCMC over ABC

---

## 🔗 Project Artifacts

- 📄 `Quantifying_Emotional_Impact_on_Brain_Activity.docx` — Full academic report
- 📘 [`real_IBOKb_STA_CW.ipynb`](https://github.com/JaminUbuntu/IBOK_STA/blob/main/real_IBOKb_STA_CW.ipynb) — Python code implementation

---

## 📬 Contact

**Author:** Benjamin Ibok  
**Institution:** Coventry University  
**University Email:** ibokb@uni.coventry.ac.uk  
**Personal Email:** benjaminsibok@gmail.com  

---

## 📚 Citation

> Ibok, B. (2025). *Quantifying Emotional Impact on Brain Activity: A Nonlinear Regression and Bayesian Approach to MEG Signal Modeling*. Coventry University.

---

