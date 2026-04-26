Here is the complete README for the BDHS 2022 study — one block, ready to paste directly:

```markdown
# Pregnancy Loss, Internet Use & Mental Health among Women in Bangladesh

<div align="center">

[![License](https://img.shields.io/badge/License-MIT-e11d48?style=for-the-badge&labelColor=0f0f0f&logo=opensourceinitiative&logoColor=e11d48)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Published-10b981?style=for-the-badge&labelColor=0f0f0f)](https://doi.org/10.1186/s12905-025-04166-4)
[![Journal](https://img.shields.io/badge/Journal-BMC%20Women's%20Health-6366f1?style=for-the-badge&labelColor=0f0f0f)](https://doi.org/10.1186/s12905-025-04166-4)
[![PMID](https://img.shields.io/badge/PMID-41318470-CC2936?style=for-the-badge&labelColor=0f0f0f)](https://pubmed.ncbi.nlm.nih.gov/41318470)
[![N](https://img.shields.io/badge/Sample-19%2C987%20Women-10b981?style=for-the-badge&labelColor=0f0f0f)](https://github.com/muhammadsalek/Pregnancy-Loss-Internet-Use-Mental-Health-DHS-2022)
[![Country](https://img.shields.io/badge/Country-Bangladesh-0ea5e9?style=for-the-badge&labelColor=0f0f0f)](https://github.com/muhammadsalek/Pregnancy-Loss-Internet-Use-Mental-Health-DHS-2022)

</div>

<div align="center">

![Stata](https://img.shields.io/badge/Stata-1A478B?style=flat-square&logo=stata&logoColor=white)
![R](https://img.shields.io/badge/R%204.5.1%20%2F%20ggplot2-276DC3?style=flat-square&logo=r&logoColor=white)
![BDHS](https://img.shields.io/badge/BDHS_2022-USAID%20Funded-00d4ff?style=flat-square&logoColor=white)
![PHQ-9](https://img.shields.io/badge/Tool-PHQ--9%20%26%20GAD--7-e11d48?style=flat-square&logoColor=white)
![Design](https://img.shields.io/badge/Design-Cross--Sectional-f59e0b?style=flat-square&logoColor=white)
![Analysis](https://img.shields.io/badge/Analysis-Multivariable%20Logistic-10b981?style=flat-square&logoColor=white)
![Spatial](https://img.shields.io/badge/Mapping-Division--Level%20Spatial-6366f1?style=flat-square&logoColor=white)

</div>

---

<div align="center">

```
╔════════════════════════════════════════════════════════════════════════════════╗
║  🧠  19,987 Ever-Married Women  ·  Bangladesh  ·  BDHS 2022  ·  USAID        ║
║  📍  Division-Level Spatial Analysis  ·  8 Divisions  ·  PHQ-9 & GAD-7       ║
║  📊  Depression: 5.13%  ·  Anxiety: 4.48%  ·  BMC Women's Health 2025        ║
╚════════════════════════════════════════════════════════════════════════════════╝
```

</div>

---

## 📄 Publication Details

> **Associations of Internet Use and Pregnancy Loss with Depression and Anxiety among Women in Bangladesh: Evidence from the 2022 BDHS**

**Published in:** *BMC Women's Health* (2025)  
**DOI:** [https://doi.org/10.1186/s12905-025-04166-4](https://doi.org/10.1186/s12905-025-04166-4)  
**PMID:** [41318470](https://pubmed.ncbi.nlm.nih.gov/41318470) · **Free Open Access**

**Authors:** Mohammad Ohid Ullah<sup>a†</sup> · Md Salek Miah<sup>a\*</sup>

<sup>a</sup> Department of Statistics, Shahjalal University of Science and Technology (SUST), Sylhet-3114, Bangladesh  
<sup>†</sup> Senior corresponding author: [ohid-sta@sust.edu](mailto:ohid-sta@sust.edu)  
<sup>\*</sup> Co-corresponding author: [saleksta@gmail.com](mailto:saleksta@gmail.com)

[![ORCID](https://img.shields.io/badge/ORCID-Md%20Salek%20Miah-A6CE39?style=flat-square&logo=orcid&logoColor=white)](https://orcid.org/0009-0005-5973-461X)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Md_Salek_Miah-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/md-salek-miah-b34309329/)
[![DOI](https://img.shields.io/badge/DOI-10.1186%2Fs12905--025--04166--4-blue?style=flat-square)](https://doi.org/10.1186/s12905-025-04166-4)
[![PubMed](https://img.shields.io/badge/PubMed-41318470-CC2936?style=flat-square&logo=pubmed&logoColor=white)](https://pubmed.ncbi.nlm.nih.gov/41318470)

---

## 🔍 Overview

This study jointly examines the associations between **pregnancy loss**, **internet use**, and **mental health outcomes** (depression and anxiety) among ever-married women in Bangladesh using the nationally representative **Bangladesh Demographic and Health Survey (BDHS) 2022**, funded by USAID. To the best of our knowledge, this is the **first study** to simultaneously investigate all three factors using BDHS data.

**Analysis Pipeline:**

```
BDHS 2022  (Cross-Sectional · Nationally Representative · USAID-Funded)
          │
          │  19,987 ever-married women of reproductive age
          │  8 divisions · PHQ-9 (depression) · GAD-7 (anxiety)
          ▼
   Data Management      cleaning · recoding · PHQ-9/GAD-7 scoring
   (Stata)              survey weighting · eligibility filtering
          │
          ▼
   Descriptive Stats    prevalence estimation · division-level breakdown
                        pregnancy loss categories · internet use groups
          │
          ▼
   Spatial Mapping      division-level choropleth maps
   (R 4.5.1 / ggplot2)  depression · anxiety · internet use · pregnancy loss
          │
          ▼
   Regression Analysis  survey-weighted multivariable logistic regression
                        depression model · anxiety model
          │
          ▼
   Outputs              TIFF spatial figures · adjusted ORs · published article
```

---

## 📝 Abstract

### Background
Mental health disorders, particularly depression and anxiety, are prevalent among ever-married women in Bangladesh. No previous study has jointly examined the associations between pregnancy loss, internet use, and mental health outcomes using nationally representative BDHS data.

### Methods
Cross-sectional data from **19,987 ever-married women** from the BDHS 2022. Depression was assessed using the **Patient Health Questionnaire-9 (PHQ-9)** and anxiety using the **Generalized Anxiety Disorder-7 (GAD-7)**. Survey-weighted multivariable logistic regression was used to identify factors associated with both outcomes.

### Results

**Pregnancy Loss and Mental Health:**

| Pregnancy Loss | Depression aOR (95% CI) | Anxiety aOR (95% CI) |
|:--------------|:-----------------------:|:--------------------:|
| One loss | 1.29 (1.18–1.41) | 1.31 (1.20–1.43) |
| Two or more losses | 1.43 (1.24–1.68) | 1.82 (1.55–2.14) |

**Internet Use (past 12 months):**
- Lower odds of **depression**: aOR = 0.77 (95% CI: 0.69–0.85)
- Lower odds of **anxiety**: aOR = 0.65 (95% CI: 0.59–0.71)

**Regional Disparities:**
- **Highest** burden: Rangpur division
- **Lowest** burden: Dhaka division

### Conclusions
Pregnancy loss increases the risk of depression and anxiety in a dose-response pattern, while internet use is significantly protective against both. Enhancing reproductive health programs and expanding internet access in high-burden divisions — particularly Rangpur — is necessary.

**Keywords:** Pregnancy Loss · Internet Use · Depression · Anxiety · Women's Mental Health · Bangladesh · BDHS 2022 · PHQ-9 · GAD-7

---

## ✨ Key Highlights

> 🔵 **5.13%** moderate-to-severe depression · **4.48%** moderate-to-severe anxiety among 19,987 ever-married women

> 🔴 **Pregnancy loss** increases mental health risk in a dose-response pattern — two or more losses nearly doubles anxiety odds (aOR = 1.82)

> 💻 **Internet use** is significantly protective — reduces depression by 23% and anxiety by 35%

> 📍 **Rangpur division** bears the highest regional burden of both depression and anxiety

> 🌍 **First BDHS study** to jointly analyze pregnancy loss and internet use with dual mental health outcomes

---

## 👥 Authors

### Senior / Corresponding Author

**Mohammad Ohid Ullah**  
Associate Professor, Department of Statistics  
Shahjalal University of Science and Technology (SUST), Sylhet-3114, Bangladesh  
📧 [ohid-sta@sust.edu](mailto:ohid-sta@sust.edu)

### Co-Author / Co-Corresponding

**Md Salek Miah**  
Research Assistant, Department of Statistics  
Shahjalal University of Science and Technology (SUST), Sylhet-3114, Bangladesh  
📞 +8801687831074  
📧 [saleksta@gmail.com](mailto:saleksta@gmail.com) · [2021134066@student.sust.edu](mailto:2021134066@student.sust.edu)

[![ORCID](https://img.shields.io/badge/ORCID-0009--0005--5973--461X-A6CE39?style=flat-square&logo=orcid&logoColor=white)](https://orcid.org/0009-0005-5973-461X)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Md_Salek_Miah-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/md-salek-miah-b34309329/)
[![GitHub](https://img.shields.io/badge/GitHub-muhammadsalek-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/muhammadsalek)

---

## 🗂️ Study Design & Data Source

### Survey Overview

| Field | Details |
|:------|:--------|
| 📅 **Survey Year** | 2022 |
| 🌍 **Country** | Bangladesh |
| 🔗 **Source** | [DHS Program — USAID Funded](https://dhsprogram.com) |
| 👩 **Sample (n)** | **19,987** ever-married women |
| 🏥 **Depression Tool** | Patient Health Questionnaire-9 (PHQ-9) — score ≥ 10 |
| 😰 **Anxiety Tool** | Generalized Anxiety Disorder-7 (GAD-7) — score ≥ 10 |
| 📐 **Design** | Cross-sectional · multi-stage cluster sampling |
| 🗺️ **Coverage** | 8 divisions · National |

> **Note:** Raw BDHS 2022 microdata are not included due to data use agreements. Researchers can request free access at [dhsprogram.com](https://dhsprogram.com). The cleaned Stata dataset (`mental_health_clean.dta`) is available in this repository under the `Spatial/` folder.

### Study Population & Eligibility

```
Target Population
      │
      ├─ Ever-married women of reproductive age
      ├─ Resident in Bangladesh at time of BDHS 2022
      └─ Inclusion: Complete PHQ-9, GAD-7 & key covariate data

                         ↓  After data management & survey weighting

              ┌────────────────────────────────────────────────┐
              │   Final Sample: n = 19,987 Women               │
              ├──────────────────────┬─────────────────────────┤
              │  🤰 Pregnancy Loss   │  Exposure: 0, 1, ≥2     │
              │  💻 Internet Use     │  Past 12 months: Yes/No │
              │  📍 8 Divisions      │  Spatial mapping        │
              └──────────────────────┴─────────────────────────┘
```

---

## 📁 Repository Structure

```
Pregnancy-Loss-Internet-Use-Mental-Health-DHS-2022/
│
├── README.md
│
├── Salek_BD_2025_PL_MH_SUST(STA)_code _file.do       ← Full Stata analysis: data prep · regression · tables
├── Salek_BD_2025_PL_MH_SUST(STA)_code _file - Copy.do ← Backup Stata working file
│
├── Figure.R                        ← R script: all manuscript figures · descriptive plots · spatial maps
├── Figure - Copy.R                 ← R script backup / working version
│
├── Spatial/
│   └── mental_health_clean.dta     ← Cleaned Stata dataset (analysis-ready)
│
├── RplotDepression.tiff            ← Division-level depression prevalence map (300 DPI)
├── RplotAnxiety.tiff               ← Division-level anxiety prevalence map (300 DPI)
├── Rplotinternet.tiff              ← Division-level internet use map (300 DPI)
├── Rplotpregnancy loss.tiff        ← Division-level pregnancy loss map (300 DPI)
├── Rplotint.tiff                   ← Internet use supplementary spatial figure (300 DPI)
├── Rplotcombine.tiff               ← Combined multi-panel spatial figure (300 DPI)
│
├── s12905-025-04166-4.pdf                    ← Published article (open access)
├── 12905_2025_4166_ReviewerReport_V0_R1.pdf  ← Peer review: Round 1 reports
├── 12905_2025_4166_ReviewerReport_V1_R1.pdf  ← Peer review: Round 2 reviewer 1
├── 12905_2025_4166_ReviewerReport_V1_R2.pdf  ← Peer review: Round 2 reviewer 2
├── 12905_2025_4166_AuthorComment_V1.pdf      ← Author response to reviewers
│
├── bd.shp                          ← Bangladesh administrative shapefile
├── paper/                          ← Manuscript files directory
│
├── .gitignore
└── LICENSE                         ← MIT License
```

---

## 📊 Key Variables & Measurement

| Variable | Type | Measurement |
|:---------|:-----|:------------|
| **Depression** | Binary outcome | PHQ-9 ≥ 10 = moderate-to-severe |
| **Anxiety** | Binary outcome | GAD-7 ≥ 10 = moderate-to-severe |
| **Pregnancy loss** | Categorical | 0 losses / 1 loss / ≥2 losses |
| **Internet use** | Binary | Used internet in past 12 months: Yes / No |
| **Division** | Categorical | Dhaka · Chittagong · Rajshahi · Khulna · Barisal · Sylhet · Rangpur · Mymensingh |
| **Residence** | Binary | Rural / Urban |
| **Maternal age** | Categorical | Age groups (years) |
| **Education** | Categorical | No education · Primary · Secondary · Higher |
| **Wealth index** | Categorical | Poorest to Richest quintiles |
| **Parity** | Categorical | Number of living children |

---

## 🔬 Statistical Methods

| Step | Method |
|:-----|:-------|
| **Prevalence estimation** | Survey-weighted proportions with 95% CI |
| **Spatial analysis** | Division-level choropleth mapping (R 4.5.1 / ggplot2 / sf) |
| **Primary regression** | Survey-weighted multivariable logistic regression |
| **Outcome models** | Separate models for depression (PHQ-9) and anxiety (GAD-7) |
| **Effect measure** | Adjusted odds ratios (aOR) with 95% CI |
| **Software** | Stata · R 4.5.1 (ggplot2 · sf · spatial packages) |

---

## 📈 Key Results Summary

### Depression Model (PHQ-9 ≥ 10) · Prevalence: 5.13%

| Factor | Direction | aOR (95% CI) |
|:-------|:---------:|:------------:|
| Pregnancy loss — 1 loss | ↑ Risk | 1.29 (1.18–1.41) |
| Pregnancy loss — ≥2 losses | ↑ Risk | 1.43 (1.24–1.68) |
| Internet use (past 12 months) | ↓ Protective | 0.77 (0.69–0.85) |

### Anxiety Model (GAD-7 ≥ 10) · Prevalence: 4.48%

| Factor | Direction | aOR (95% CI) |
|:-------|:---------:|:------------:|
| Pregnancy loss — 1 loss | ↑ Risk | 1.31 (1.20–1.43) |
| Pregnancy loss — ≥2 losses | ↑ Risk | 1.82 (1.55–2.14) |
| Internet use (past 12 months) | ↓ Protective | 0.65 (0.59–0.71) |

### Regional Burden

| Division | Mental Health Burden |
|:---------|:--------------------:|
| 🔴 Rangpur | Highest |
| 🟢 Dhaka | Lowest |

---

## 🗺️ Spatial Figures

| Figure | Description | File |
|:-------|:------------|:-----|
| 🗺️ Depression Map | Division-level depression prevalence choropleth | `RplotDepression.tiff` |
| 🗺️ Anxiety Map | Division-level anxiety prevalence choropleth | `RplotAnxiety.tiff` |
| 🗺️ Internet Use Map | Division-level internet use prevalence | `Rplotinternet.tiff` |
| 🗺️ Pregnancy Loss Map | Division-level pregnancy loss prevalence | `Rplotpregnancy loss.tiff` |
| 🗺️ Internet Supplementary | Internet use supplementary spatial figure | `Rplotint.tiff` |
| 🗺️ Combined Panel | Multi-panel spatial overview figure | `Rplotcombine.tiff` |

---

## 📅 Peer Review Timeline

| Date | Milestone |
|:-----|:----------|
| 5 Sep 2025 | Original submission |
| 12 Oct 2025 | Reviewer report — Round 1 (Reviewer 1) |
| 15 Oct 2025 | Reviewer report — Round 1 (Reviewer 2) |
| 29 Oct 2025 | Revised manuscript resubmitted (version 2) |
| 29 Oct 2025 | Author response letter submitted |
| 8 Nov 2025 | Reviewer report — Round 2 (Reviewer 3) |
| 8 Nov 2025 | Reviewer report — Round 2 (Reviewer 4) |
| 11 Nov 2025 | Editorially accepted |
| 29 Nov 2025 | Article published online |

---

## 🌐 Research Impact

| Domain | Contribution |
|:-------|:-------------|
| **Mental Health** | First joint analysis of pregnancy loss + internet use on depression & anxiety using BDHS |
| **Public Health** | Evidence for SDG 3 — Good Health and Well-Being |
| **Women's Health** | Focuses on ever-married women of reproductive age — a priority population |
| **Digital Health** | Quantifies protective role of internet access on women's mental health outcomes |
| **Reproductive Health** | Links cumulative pregnancy loss to measurable, dose-response mental health burden |
| **Health Policy** | Actionable regional insights for high-burden divisions, especially Rangpur |

---

## 📋 Policy Implications

1. **Integrate mental health screening** into reproductive health services — particularly for women with a history of one or more pregnancy losses
2. **Expand internet access** in high-burden divisions (Rangpur, Sylhet, Barisal) as a proven mental health-protective intervention
3. **Prioritize Rangpur division** for mental health resource allocation and targeted program delivery
4. **Dose-response counseling**: Women with two or more pregnancy losses face nearly double the anxiety risk and require intensive psychosocial follow-up
5. **Digital literacy programs** for ever-married women in rural and low-income settings can serve as a scalable, low-cost mental health intervention

---

## 📚 Citation

**APA:**
> Ullah, M. O., & Miah, M. S. (2025). Associations of internet use and pregnancy loss with depression and anxiety among women in Bangladesh: evidence from the 2022 BDHS. *BMC Women's Health*. https://doi.org/10.1186/s12905-025-04166-4

**BibTeX:**
```bibtex
@article{Ullah2025PregnancyLoss,
  title   = {Associations of internet use and pregnancy loss with depression and
             anxiety among women in Bangladesh: evidence from the 2022 BDHS},
  author  = {Ullah, Mohammad Ohid and Miah, Md Salek},
  journal = {BMC Women's Health},
  year    = {2025},
  doi     = {10.1186/s12905-025-04166-4},
  pmid    = {41318470},
  url     = {https://doi.org/10.1186/s12905-025-04166-4}
}
```

---

## ⚖️ License

MIT License — Copyright (c) 2025 Mohammad Ohid Ullah & Md Salek Miah  
Open for academic research and reproducibility. Citation required for any publication use.

---

<div align="center">

**Department of Statistics · Shahjalal University of Science and Technology (SUST)**  
Sylhet-3114, Bangladesh

[![Made with Stata](https://img.shields.io/badge/Made%20with-Stata-1A478B?style=flat-square&logoColor=white)](https://www.stata.com)
[![R](https://img.shields.io/badge/R%204.5.1-276DC3?style=flat-square&logo=r&logoColor=white)](https://www.r-project.org)
[![PHQ-9](https://img.shields.io/badge/Depression-PHQ--9-e11d48?style=flat-square)](https://www.phqscreeners.com)
[![GAD-7](https://img.shields.io/badge/Anxiety-GAD--7-f59e0b?style=flat-square)](https://www.phqscreeners.com)
[![DHS Program](https://img.shields.io/badge/Data-DHS%20Program%20%7C%20USAID-00d4ff?style=flat-square)](https://dhsprogram.com)
[![BMC](https://img.shields.io/badge/Published-BMC%20Women's%20Health-6366f1?style=flat-square)](https://doi.org/10.1186/s12905-025-04166-4)
[![SUST](https://img.shields.io/badge/University-SUST%20Bangladesh-f59e0b?style=flat-square)](https://www.sust.edu)

*⭐ Star this repository if it supported your research!*

</div>
```
