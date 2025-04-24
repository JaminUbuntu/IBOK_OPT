
# 🧠 Quantifying Emotional Impact on Brain Activity: A Nonlinear Regression and Bayesian Approach to MEG Signal Modeling

## 🔍 Overview

This repository presents a rigorous exploration of brain signal modeling using simulated MEG (Magnetoencephalography) data in a controlled neuromarketing experiment. The goal is to determine the best regression model that captures the interaction between auditory stimuli and brain response, and to analyze the uncertainty of parameter estimates through Bayesian inference.

The project integrates **Statistical Modeling**, **Bayesian Inference**, and **Scientific Visualization** to explore how emotional audio cues modulate brain activity.

---

## 🎯 Objectives

- Identify the best polynomial regression model to fit brain response data.
- Analyze the statistical significance and distribution of model residuals.
- Quantify uncertainty using Approximate Bayesian Computation (ABC).
- Provide robust, interpretable insights into how emotion impacts neural responses.

---

## 🛠️ Technologies Used

- **Language:** Python
- **Core Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Statsmodels, Scipy
- **Statistical Methods:** Ordinary Least Squares (OLS), Residual Diagnostics, AIC/BIC
- **Bayesian Inference:** Rejection Sampling in Approximate Bayesian Computation (ABC)
- **Platform:** Google Colab (Kaggle port in progress)

---

## 📊 Key Visualizations

- **Time Series Plots** for MEG and Audio Signals
- **Boxplots** by Narration Type
- **Scatter Plots with Regression Lines** (segregated by emotion category)
- **Correlation Matrices**
- **Residual Histograms and Q-Q Plots**
- **95% Prediction Confidence Intervals**
- **Posterior Distribution Plots** (Marginal and Joint)

![Time Series](/time_series_meg_audio.png)
![Boxplot](/scatter_plot.png)
![Posterior](outputs/posterior_abc.png)

---

## 📁 Dataset Description

- `X.csv`: Contains `x1` (audio intensity) and `x2` (narration type: neutral/emotional)
- `y.csv`: Contains `y` (MEG response)
- `time.csv`: Timestamp for synchronization

---

## 🧪 Methodology

1. **Exploratory Data Analysis (EDA)** – Time plots, histograms, boxplots, and scatter matrices.
2. **Regression Modeling** – Fit five candidate polynomial models using OLS.
3. **Model Selection** – Use RSS, Log-Likelihood, AIC, and BIC to choose the best fit.
4. **Residual Diagnostics** – Verify normality and homoscedasticity via Q-Q plots.
5. **Prediction Performance** – Apply the best model on test set with 95% CI.
6. **Bayesian Inference** – Use ABC to derive posterior distributions of key parameters.

---

## 📈 Results

- **Model 3** achieved the lowest AIC/BIC and had residuals closest to normality.
- ABC posterior distributions supported the reliability of frequentist estimates.
- Emotionally narrated content triggered stronger MEG signals, aligning with neuroscience findings on affective processing.

---

## 📬 Contact

**Author:** Benjamin Ibok  
**Institution:** Coventry University  
**University Email:** ibokb@uni.coventry.ac.uk  
**Personal Email:** benjaminsibok@gmail.com  

---

## 📚 Citation

If you use this repository in your academic work:

> Ibok, B. (2025). *Quantifying Emotional Impact on Brain Activity: A Nonlinear Regression and Bayesian Approach to MEG Signal Modeling*. Coventry University.

---

## 🔗 Project Link

The full notebook and reproducible code can be found here:  
[GitHub Repository](https://github.com/JaminUbuntu/IBOK_OPT/blob/main/Optimization_IBOKb_CW.ipynb)
