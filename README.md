
# 🧠 Cognitive Environment Modeling & Optimization for Ambient Assisted Living

## 📁 Home Structure Overview

This repository contains code and documentation for two major projects under the **Coventry University** modules 7135CEM (Part 2) and 7089CEM. Both contribute to an intelligent and data-driven approach to enhancing well-being through smart environments and cognitive modeling.

---

## 🗂️ Project Structure

```
📦Home
 ┣ 📂7135CEM (Part 2)
 ┃ ┣ 📜Ambient Living FLC new.fis — Fuzzy Logic Controller Specification
 ┃ ┣ 📜assistiveLiving.m — MATLAB script for defining and tuning fuzzy rules and memberships
 ┃ ┣ 📜opt.m — Optimization experiment comparing GA, PSO, and SA
 ┃ ┣ 📜optimization_results.csv — Performance log of optimization runs
 ┣ 📂7089CEM
 ┃ ┣ 📜Quantifying_Emotional_Impact_on_Brain_Activity.docx — Coursework write-up
 ┃ ┣ 📜README_MEGBRAIN.md — Brain signal modeling summary
```

---

## 🧭 7135CEM (Part 2) — Adaptive Assistive Living

This folder contains resources for developing a **Fuzzy Logic System** to control home automation features based on environmental and behavioral parameters.

### 🔸 Files and Purpose

- **Ambient Living FLC new.fis**  
  A structured `.fis` file defining inputs (temperature, humidity, CO₂ level, noise, light, etc.) and outputs (HVAC, lighting, purifier, etc.). Acts as the core for a **Fuzzy Inference System (FIS)**.

- **assistiveLiving.m**  
  MATLAB implementation using Fuzzy Logic Designer-generated code to **construct and deploy** the FIS. Contains Gaussian membership functions and fuzzy rules for 13 inputs and 12 outputs.

- **opt.m**  
  MATLAB script comparing **Genetic Algorithm (GA)**, **Particle Swarm Optimization (PSO)**, and **Simulated Annealing (SA)** across benchmark functions. Evaluates effectiveness in optimizing the FIS or similar parameterized systems.

- **optimization_results.csv**  
  Automatically generated from `opt.m`, this file logs mean, std deviation, best, and worst scores of each optimization technique across multiple test runs.

### 🧠 Application
These tools work together to design **adaptive, user-preference-aware smart environments**, useful in assistive living facilities for elderly or differently-abled individuals. Optimization helps identify the best control strategy across multiple conflicting comfort and energy objectives.

---

## 🧠 7089CEM — Statistical Modeling of MEG Signals

This study models brain activity from a neuromarketing experiment using a nonlinear polynomial regression approach and Approximate Bayesian Computation (ABC).

### 📄 Report
- **Quantifying_Emotional_Impact_on_Brain_Activity.docx**  
  Academic paper exploring the relationship between emotional stimuli and brain response using MEG signals. Includes visualizations, model diagnostics, and Bayesian posterior inferences.

- **README_MEGBRAIN.md**  
  A structured summary of the 7089CEM coursework, including methodology, evaluation, and how to reproduce the work in Python.

---

## 📬 Contact

**Author:** Benjamin Ibok  
**University Email:** ibokb@uni.coventry.ac.uk  
**Personal Email:** benjaminsibok@gmail.com  
**Institution:** Coventry University  

---

## 📚 Citation

If you use any part of this repository:

> Ibok, B. (2025). *Cognitive Environment Modeling & Optimization for Ambient Assisted Living and Brain Signal Interpretation*. Coventry University.

---

## 🏁 Final Note

This project represents the fusion of **machine learning, fuzzy logic, neuroscience, and optimization** in advancing intelligent environments and human-centric analytics.

---

