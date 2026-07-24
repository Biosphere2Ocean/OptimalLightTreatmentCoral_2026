---------------------------------------------
# Data and Code for "Identification of Optimal Light Treatment for Coral Fragment Calcification and Tissue Pigmentation"

Preferred Citation (TBD):

  Saunders, S.R., Grambihler, R., Thompson, D.M., Crocker, L., King, L., Salanga, C.. (In Prep). Identification of Optimal Light Treatment for Coral Fragment Calcification and Tissue Pigmentation.
  

Corresponding Author:
  Savanna Saunders
  
  
License:
  CC BY 4.0 (Data)
  MIT (Code)


DOI:
  TBD
  


---------------------------------------------
## Summary

Without light, coral reef health will decline. Coral reefs are built through their relationship with photosynthetic organisms, a phylum of dinoflagellates known colloquially as zooxanthellae, which rely on light to survive and provide essential nutrients to corals. Reproducing the optimal light conditions for photosynthetic health is thus vital for successful coral restoration and husbandry. The Biosphere 2 Ocean is a controlled system that simulates tropical ocean environments. 

This study examined the effects of two distinct light spectra on the health and growth of three coral species: Montastraea cavernosa (great star coral), Orbicella faveolata (mountainous star coral), and Pseudodiploria clivosa (knobby brain coral). 

To determine how variations in light spectrum influence coral physiology and resilience, two 3-week and two 6-week experiments with a purple, blue, red (PBR) spectrum and one 3-week and two 6-week experiments with a purple, blue, cyan (PBC) spectrum were performed on acclimated corals. Drip-dry weights and photographic documentation were used to assess calcification, pigmentation, and tissue health. Photosynthetic photon flux density (PPFD) and water quality parameters, including temperature, salinity, and pH, were monitored regularly. Weekly snapshots of the light spectrum confirmed consistency with experimental profiles. 

Non-parametric statistical testing suggests that the purple, blue, cyan (PBC) and purple, blue, red (PBR) lighting treatments are both significantly different from the control treatment. However, compared to the control treatments, there was a greater increase in pigmentation, reflecting higher Symbiodiniaceae densities in coral tissues, in the PBC treatments than in the PBR treatments. Corals exposed to PBC lighting showed increased weight, indicative of higher calcification rates. Clear species and treatment effects were observed, with O. faveolata accounting for the majority of the increases in calcification rate in the PBC treatment. However, the PBR lighting showed a greater increase in surface area, corresponding to higher rates of tissue growth. Variation in mean PAR and temperature was similar across trials, and therefore changes in coral health were due solely to spectral differences. 

These findings suggest using PBC lighting for coral restoration and nurseries, as it helps reduce bleaching and promote symbiont retention.



This repository contains data and code accompanying the publication "Identification of Optimal Light Treatment for Coral Fragment Calcification and Tissue Pigmentation"



---------------------------------------------
## Materials and Methods

All included code was run using R (4.5.2, 2025-10-31). 



---------------------------------------------
## Files and Folders

.
├── README.txt: This document
├── Code: directory containing all code that accompanies this manuscript
    ├── 01-DataWrangling: subdirectory containing code for data wrangling
    │   ├── MO-Wrangling-ConfoundingFactors.Rmd: R markdown file for wrangling confounding factors / environmental data
    │   ├── MO-Wrangling-PAR.Rmd: R markdown file for wrangling PAR data
    │   └── MO-Wrangling-PERMANOVA.Rmd: R markdown file for wrangling PERMANOVA (coral) data
    ├── 02-Statistics: subdirectory containing code for running statistics
    │   ├── MO-Statistics-ConfoundingFactors.Rmd: R markdown file for running statistics on confounding / environmental factors 
    │   └── MO-Statistics-PERMANOVA.Rmd: R markdown file for running PERMANOVAs and other post hoc statistics on coral data 
    └── 03-Figures: subdirectory containing code for making manuscript figures
    │   └── MO-Figures.Rmd: R markdown file for creating figures used in manuscript
├── Figures: directory containing figures in manuscript that are made in code
    ├── ConfoundingFactors: subdirectory containing figures for confounding factors
    │   ├── BoxPlot-DLI-Per-Trial.png
    │   ├── ConfoundingFactors-Ranges-Difference.xlsx
    │   └── ConfoundingFactors-Ranges-Stated.xlsx
    ├── StatisticsResults: subdirectory containing figures for statistics results 
    │   ├── BoxPlots: subdirectory containing box plot figures
    │   │   ├── BoxPlot-All-Treatment-Species.png
    │   │   └── BoxPlot-RGB-PBCTrials.png
    │   └── HeatMaps: subdirectory containing heatmap figures
    │   │   ├── HeatMap-PairwisePERMANOVA.png
    │   │   ├── HeatMap-TukeyTest-Treatment.png 
    │   │   ├── HeatMap-TukeyTest-TreatmentSpecies-Between.png
    │   │   └── HeatMap-TukeyTest-TreatmentSpecies-Within.png 
    └── Wrangling: subdirectory containing figures from data wrangling
    │   ├── RGB Change by Trial and Species.png
    │   ├── RGB Change by Trial.png
    │   ├── Surface Area Change by Trial and Species.png
    │   ├── Surface Area Change by Trial.png
    │   ├── Weekly Weight Change by Trial.png 
    │   └── Weight Change by Trial and Species.png
├── InputData: directory containing data files input to code
    ├── Clean: subdirectory containing cleaned data files run through data wrangling code
    │   ├── CoralData: subdirectory containing files with data on the corals
    │   │   ├── Coral-Data-Subtracted.xlsx
    │   │   └── CoralColorWeightData_Rates.csv
    │   └── EnvironmentalData: subdirectory containing files with data on environmental factors
    │   │   ├── All-Environmental-Vairables-Long.xlsx
    │   │   ├── All-Environmental-Variables-Wide.xlsx
    │   │   ├── AllPAR.xlsx
    │   │   └── DLI-All.xlsx
    └── Raw: subdirectory containing raw data files from original data collection
    │   ├── CoralData: subdirectory
    │   │   └── Coral Color_Weight Data.xlsx
    │   ├── PAR: subdirectory
    │   │   ├── MO-PBC1.TXT
    │   │   ├── MO-PBC2.TXT
    │   │   ├── MO-PBC3.TXT
    │   │   ├── MO-PBR1.TXT
    │   │   ├── MO-PBR2.TXT
    │   │   ├── MO-PBR3.TXT
    │   │   └── MO-PBR4.TXT
    │   └── WaterQuality: subdirectory
    │   │   ├── Nutrients: subdirectory
    │   │   │   ├── Mini Ocean Nutrient Data.xlsx
    │   │   │   └── Raceway2NutrientData.xlsx
    │   │   └── ProDSS: subdirectory
    │   │   │   ├── PRO DSS MO All - Sheet1.csv
    │   │   │   ├── prodssbackup-250328-140416 All Sites.csv
    │   │   │   └── Raceway2Parameters_2024-05-29_2025-09-30_RoundsForm.xlsx
├── OutputData: directory containing data files output from code
    ├── ConfoundingFactors: subdirectory containing files output from confounding factors code
    │   ├── ConfoundingFactorTesting-Dunn.xlsx
    │   ├── ConfoundingFactorTesting-KruskalWallis-EffectSize.xlsx
    │   ├── ConfoundingFactorTesting-KruskalWallis-InitialResults.xlsx
    │   ├── ConfoundingFactorTesting-LinearRegressions.xlsx
    │   └── ConfoundingFactorTesting-WeightedLeastSquareRegressions.xlsx
    └── StatisticsResults: subdirectory containing files output from statistics code
    │   ├── MOStats_PERMANOVA_Pairwise-All.xlsx
    │   ├── MOStats_PERMANOVA_SingleIndependent.xlsx
    │   ├── MOStats_PERMANOVA_SingleInteraction.xlsx
    │   └── MOStats_TukeyTestResults.xlsx



---------------------------------------------
# DATA-SPECIFIC INFORMATION
BoxPlot-DLI-Per-Trial.png: box plot of daily light integral (DLI) values by trial.

ConfoundingFactors-Ranges-Difference.xlsx: range of each confounding / environmental variable for each trial as one number. Ex: Temperature (ºC) = 1.28 for Trial PBR 1 meaning that the difference between the maximum and minimum temperature for PBR 1 was 1.28 ºC.
  - Number of variables: 16
  - Number of cases/rows: 7
  - Variable List: 
      `Trial`: character; name of trial: PBR 1, PBC 1, PBR 2, PBC 2, PBR 3, PBC 3, Control
      `Temperature (ºC)`: numeric; temperature in degrees Celcius
      `pH`: numeric; pH in pH units
      `Salinity (PSU)`: numeric; salinity in Practical Salinity Units
      `ORP (mV)`: numeric; ORP in miliVolts
      `Chlorophyll (RFU)`: numeric; chlorophyll in Relative Fluorescent Units
      `Phycoerythrin (RFU)`: numeric; phycoerythrin in Relative Fluorescent Units
      `Alkalinity (mg/L)`: numeric; alkalinity in mg/L CaCO3
      `DLI`: numeric; daily light integral in mol⋅m⁻²⋅d⁻¹
      `Ammonia (mg/L)`: numeric; ammonia in mg/L
      `Calcium (mg/L)`: numeric; calcium in mg/L
      `Nitrate (mg/L)`: numeric; nitrate in mg/L
      `Phosphate (mg/L)`: numeric; phosphate in mg/L
      `Silica (mg/L)`: numeric; silica in mg/L
      `Iron (mg/L)`: numeric; iron in mg/L
      `Turbidity (FAU)`: numeric; turbidity in Formazin Attenuation Units
  - Missing data codes: "NA" or blank

ConfoundingFactors-Ranges-Stated.xlsx: range of each confounding / environmental variable for each trial stated as "minimum - maximum". Ex: Temperature (ºC) = 25.56 - 26.83 for Trial PBR 1.
  - Number of variables: 16
  - Number of cases/rows: 7
  - Variable List: 
      `Trial`: character; name of trial: PBR 1, PBC 1, PBR 2, PBC 2, PBR 3, PBC 3, Control
      `Temperature (ºC)`: numeric; temperature in degrees Celcius
      `pH`: numeric; pH in pH units
      `Salinity (PSU)`: numeric; salinity in Practical Salinity Units
      `ORP (mV)`: numeric; ORP in miliVolts
      `Chlorophyll (RFU)`: numeric; chlorophyll in Relative Fluorescent Units
      `Phycoerythrin (RFU)`: numeric; phycoerythrin (blue-green algae) in Relative Fluorescent Units
      `Alkalinity (mg/L)`: numeric; alkalinity in mg/L CaCO3
      `DLI`: numeric; daily light integral in mol⋅m⁻²⋅d⁻¹
      `Ammonia (mg/L)`: numeric; ammonia in mg/L
      `Calcium (mg/L)`: numeric; calcium in mg/L
      `Nitrate (mg/L)`: numeric; nitrate in mg/L
      `Phosphate (mg/L)`: numeric; phosphate in mg/L
      `Silica (mg/L)`: numeric; silica in mg/L
      `Iron (mg/L)`: numeric; iron in mg/L
      `Turbidity (FAU)`: numeric; turbidity in Formazin Attenuation Units
  - Missing data codes: "NA" or blank

BoxPlot-All-Treatment-Species.png: box plot of all response variables by treatment and species. 
 
BoxPlot-RGB-PBCTrials.png: box plot of RGB values for the PBC trials.

HeatMap-PairwisePERMANOVA.png: heat map of pairwise PERMANOVA results by treatment, trial, and species.

HeatMap-TukeyTest-Treatment.png: heat map of tukey test results by treatment.

HeatMap-TukeyTest-TreatmentSpecies-Between.png: heat map of tukey test results between groups factors for treatment and species.

HeatMap-TukeyTest-TreatmentSpecies-Within.png: heat map of tukey test results within groups factors for treatment and species. 

RGB Change by Trial and Species.png: histogram of weekly change in rgb of each frag per trial and species

RGB Change by Trial.png: histogram of weekly change in rgb of each frag per trial

Surface Area Change by Trial and Species.png: histogram of weekly change in surface area of each frag per trial and species

Surface Area Change by Trial.png: histogram of weekly change in surface area of each frag per trial

Weekly Weight Change by Trial.png: histogram of weekly change in weight of each frag per trial 

Weight Change by Trial and Species.png: histogram of weekly change in weight of each frag per trial and species

Coral-Data-Subtracted.xlsx: spreadsheet of coral data with "Before MO" values subtracted from "After MO" values
  - Number of variables: 8
  - Number of cases/rows: 224
  - Variable List:
        `frag_id`: double; identifying label for each coral fragment consisting of 4-letter species code (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa) and colony number and fragment number separated by a period. Ex: Mcav 1.1 is Montastrea cavernosa colony 1 fragment 1. There are 4 fragments per colony with the 4th fragment being the control. 
        `Species`: character; species code for each coral (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
        `Fragment`: numeric; identifying number for each fragment as colony number and fragment number separated by a period. Ex: 1.1 is colony 1 fragment 1. 
        `Treatment`: character; treatment for each coral: Control, PBR = Purple, Blue, Red, PBC = Purple, Blue, Cyan.
        `Trial`: double; trial for each coral as Treatment-TrialNumber. Ex: PBR 1 is Trial 1 of PBR treatment. Control is also included as a trial. 
        `weight_g`: numeric; weight of coral fragment in grams 
        `surface_area_mean_cm3`: numeric; surface area of fragment in cm^3
        `rgb_mean`: numeric; pigment value of frament in RGB (red green blue)
  - Missing data codes: "NA" or blank

CoralColorWeightData_Rates.csv: coral weight, surface area, and rgb (color) data as weekly rate of change per trial; one data point per coral per trial indicating the total change in response variable per trial
  - Number of variables: 7
  - Number of cases/rows: 251
  - Variable List: 
        `frag_id`: double; identifying label for each coral fragment consisting of 4-letter species code (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa) and colony number and fragment number separated by a period. Ex: Mcav 1.1 is Montastrea cavernosa colony 1 fragment 1. There are 4 fragments per colony with the 4th fragment being the control. 
        `Species`: character; species code for each coral (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
        `Treatment`: character; treatment for each coral: Control, PBR = Purple, Blue, Red, PBC = Purple, Blue, Cyan.
        `Trial`: double; trial for each coral as Treatment-TrialNumber. Ex: PBR 1 is Trial 1 of PBR treatment. Control is also included as a trial. 
        `weight_g_weekly`: numeric; average weight of each fragment per week for each trial: "Before MO" weight was subtracted from "After MO" weight to get overall weight-change for each trial, and then each value was divided by either 3 or 6 depending on the length of the trial (first 3 trials were 3 weeks long, and remaining trials were 6 weeks long)
        `surface_area_cm3_weekly`: numeric; average surface area of each fragment per week for each trial: "Before MO" surface area was subtracted from "After MO" surface area to get overall surface area change for each trial, and then each value was divided by either 3 or 6 depending on the length of the trial (first 3 trials were 3 weeks long, and remaining trials were 6 weeks long)
        `rgb_weekly`: numeric; average RGB value of each fragment per week for each trial: "Before MO" RGB value was subtracted from "After MO" RGB value to get overall RGB value change for each trial, and then each value was divided by either 3 or 6 depending on the length of the trial (first 3 trials were 3 weeks long, and remaining trials were 6 weeks long); RGB values were obtained by adding red, green, and blue values then dividing by 3; lower values indicate a darker color
  - Missing data codes: "NA" or blank

All-Environmental-Vairables-Long.xlsx: all available data from all environmental variables recorded over summer, fall, and spring experiments in long form. 
  - Number of variables: 5
  - Number of cases/rows: 5568
  - Variable List: 
        `Date`: date as YYYY-mm-dd
        `Trial`: double; name of Treatment and Trial (ex: PBR 1)
        `Treatment`: character; name of Treatment (PBR, PBC, Control)
        `variable_names`: character; name of each environmental variable
        `variable_values`: numeric; value for each environmental variable
  - Missing data codes: "NA" or blank

All-Environmental-Variables-Wide.xlsx: all available data from all environmental variables recorded over summer, fall, and spring experiments in wide form. 
  - Number of variables: 19
  - Number of cases/rows: 348
  - Variable List: 
        `Date`: date as YYYY-mm-dd
        `Trial`: double; name of Treatment and Trial (ex: PBR 1)
        `Treatment`: character; name of Treatment (PBR, PBC, Control)
        `Temperature (ºC)`: numeric; temperature in degrees Celcius
        `Salinity (PSU)`: numeric; salinity in Potential Salinity Units
        `pH`: numeric; pH in pH units
        `ORP (mV)`: numeric; oxidation-reduction potential in miliVolts
        `Chlorophyll (RFU)`: numeric; chlorophyll in relative fluorescence units
        `Phycoerythrin (RFU)`: numeric; pycoerythrin (blue-green algae) in relative fluorescence units
        `DLI`: numeric; daily light integral in mol⋅m⁻²⋅d⁻¹
        `Turbidity`: numeric; turbidity in Formazin Attenuation Units
        `Phosphate`: numeric; phosphate in mg/L
        `Nitrate MR`: numeric; low range nitrate in mg/L
        `Nitrate HR`: numeric; high range nitrate in mg/L
        `Alkalinity`: numeric; alkalinity in mg/L CaCO3
        `Silica`: numeric; silica in mg/L
        `Iron`: numeric; iron in mg/L
        `Ammonia`: numeric; ammonia in mg/L
        `Calcium`: numeric; calcium in mg/L
  - Missing data codes: "NA" or blank

AllPAR.xlsx: spreadsheet of all the PAR values from each trial
  - Number of variables: 4
  - Number of cases/rows: 56923
  - Variable List: 
      `Date`: date; date in YYYY-mm-dd
      `Time`: time; time in HH:MM:SS
      `Trial`: character; treatment name and trial number
      `PAR`: numeric; PAR for each observation
  - Missing data codes: "NA" or blank

DLI-All.xlsx: spreadsheet of daily light integral values for each day from each trial
  - Number of variables: 4
  - Number of cases/rows: 188
  - Variable List: 
      `Date`: date; date in YYYY-mm-dd
      `Trial`: character; treatment name and trial number
      `daily_par_sum`: numeric; sum of the PAR for each day
      `DLI`: numeric; daily light integral
  - Missing data codes: "NA" or blank

Coral Color_Weight Data.xlsx: downloaded from google sheets file of same name on Box, contains raw data as weight, surface area, and rgb of each coral fragment before and after each trial
  Sheet 1: "Before & After MO for R": only sheet used in code / computations, formatted from other sheets to make for easier analysis in R
          - Number of variables: 19
          - Number of cases/rows: 502
          - Variable List: 
                - `Person_weight_photos`: character; name of person who took photos of coral that RGB is based on
                - `Person_ImageJ`: character; name of person who analysed photos of coral using Image J
                - `Date`: date in mm/dd/YY
                - `Species`: character; coral species abbreviation (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
                - `Fragment`: numeric; identifying number for each fragment as colony number and fragment number separated by a period. Ex: 1.1 is colony 1 fragment 1. 
                - `Treatment`: character; abbreviation for treatment (PBR = Purple, Blue, Red; PBC = Purple, Blue, Cyan; Control = Control)
                - `Trial`: numeric; number of trial
                - `Time`: character; time point data was take at, either before the trial was started or after it was completed (Before MO, After MO)
                - `Weight_g`: numeric; drip-dry weight in grams
                - `Scale_pixels`: numeric; scale of coral photo in pixels
                - `Surface_Area_Mean_cm3`: numeric; surface area of coral in cm^3
                - `Surface_Area_Std`: numeric; standard deviation of surface area measurments - 3 measurements were taken and averaged together to get `Surface_Area_Mean_cm3`
                - `Red_Mean`: numeric; mean of 3 measurements taken of the red pigment in coral photo; units = R in RGB, 0-250
                - `Red_Std`: numeric; standard deviation of 3 measurements from `Red_Mean`
                - `Green_Mean`: numeric; mean of 3 measurements taken of the green pigment in coral photo; units = G in RGB, 0-250
                - `Green_Std`: numeric; standard deviation of 3 measurements from `Green_Mean`
                - `Blue_Mean`: numeric; mean of 3 measurements taken of the blue pigment in coral photo; units = B in RGB, 0-250
                - `Blue_Std`: numeric; standard deviation of 3 measurements from `Blue_Mean`
                - `Notes`: character; notes about observation
          - Missing data codes: "NA" or blank
  Sheet 2: "Before&After MO": similar to Sheet 1 except that it is only observations from Fall, Winter, and Spring trials and  contains the original 3 RGB measurements in addition to the mean
          - Number of variables: 36
          - Number of cases/rows: 288
          - Variable List: 
                - `Person`: character; name of person who took coral photo and recorded weight
                - `Date`: date in mm/dd/YY
                - `Species`: character; coral species abbreviation (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
                - `Fragment`: numeric; identifying number for each fragment as colony number and fragment number separated by a period. Ex: 1.1 is colony 1 fragment 1. 
                - `Treatment`: character; abbreviation for treatment (PBR = Purple, Blue, Red; PBC = Purple, Blue, Cyan; Control = Control)
                - `Trial`: numeric; number of trial
                - `Time`: character; time point data was take at, either before the trial was started or after it was completed (Before MO, After MO)
                - `Weight_g`: numeric; drip-dry weight in grams
                - `Scale_pixels`: numeric; scale of coral photo in pixels
                - `Surface_Area_Mean_cm3`: numeric; surface area of coral in cm^3
                - `Surface_Area_Std`: numeric; standard deviation of surface area measurments - 3 measurements were taken and averaged together to get `Surface_Area_Mean_cm3`
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; first measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; first measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; first measurement
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; second measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; second measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; second measurement
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; third measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; third measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; third measurement
                - `Red_Mean`: numeric; mean of 3 measurements taken of the red pigment in coral photo; units = R in RGB, 0-250
                - `Red_Std`: numeric; standard deviation of 3 measurements from `Red_Mean`
                - `Green_Mean`: numeric; mean of 3 measurements taken of the green pigment in coral photo; units = G in RGB, 0-250
                - `Green_Std`: numeric; standard deviation of 3 measurements from `Green_Mean`
                - `Blue_Mean`: numeric; mean of 3 measurements taken of the blue pigment in coral photo; units = B in RGB, 0-250
                - `Blue_Std`: numeric; standard deviation of 3 measurements from `Blue_Mean`
                - `Notes`: character; notes about observation
          - Missing data codes: "NA" or blank
  Sheet 3: "Before & After MO Summer 24 Red": summer 2024 data with photo analysis redone 
          - Number of variables: 37
          - Number of cases/rows: 216
          - Variable List: 
                - `Person (wight & photo)`: character; name of person who recorded weights and took photos
                - `Person ImageJ`: character; name of person who analysed coral photo in Image J (Fiji)
                - `Date`: date in mm/dd/YY
                - `Species`: character; coral species abbreviation (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
                - `Fragment`: numeric; identifying number for each fragment as colony number and fragment number separated by a period. Ex: 1.1 is colony 1 fragment 1. 
                - `Treatment`: character; abbreviation for treatment (PBR = Purple, Blue, Red; PBC = Purple, Blue, Cyan; Control = Control)
                - `Trial`: numeric; number of trial
                - `Time`: character; time point data was take at, either before the trial was started or after it was completed (Before MO, After MO)
                - `Weight_g`: numeric; drip-dry weight in grams
                - `Scale_pixels`: numeric; scale of coral photo in pixels
                - `Surface_Area_Mean_cm3`: numeric; surface area of coral in cm^3
                - `Surface_Area_Std`: numeric; standard deviation of surface area measurments - 3 measurements were taken and averaged together to get `Surface_Area_Mean_cm3`
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; first measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; first measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; first measurement
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; second measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; second measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; second measurement
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; third measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; third measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; third measurement
                - `Red_Mean`: numeric; mean of 3 measurements taken of the red pigment in coral photo; units = R in RGB, 0-250
                - `Red_Std`: numeric; standard deviation of 3 measurements from `Red_Mean`
                - `Green_Mean`: numeric; mean of 3 measurements taken of the green pigment in coral photo; units = G in RGB, 0-250
                - `Green_Std`: numeric; standard deviation of 3 measurements from `Green_Mean`
                - `Blue_Mean`: numeric; mean of 3 measurements taken of the blue pigment in coral photo; units = B in RGB, 0-250
                - `Blue_Std`: numeric; standard deviation of 3 measurements from `Blue_Mean`
                - `Notes`: character; notes about observation
          - Missing data codes: "NA" or blank
  Sheet 4: "Before R2 Data": data on corals from before they went into acclimation raceway 
          - Number of variables: 36
          - Number of cases/rows: 144
          - Variable List: 
                - `Person`: character; person who took and analysed coral photo
                - `Date`: date in mm/dd/YY
                - `Species`: character; coral species abbreviation (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
                - `Fragment`: numeric; identifying number for each fragment as colony number and fragment number separated by a period. Ex: 1.1 is colony 1 fragment 1. 
                - `Treatment`: character; abbreviation for treatment (PBR = Purple, Blue, Red; PBC = Purple, Blue, Cyan; Control = Control)
                - `Trial`: numeric; number of trial
                - `Time`: character; time point data was take at, either before the trial was started or after it was completed (Before MO, After MO)
                - `Weight_g`: numeric; drip-dry weight in grams
                - `Scale_pixels`: numeric; scale of coral photo in pixels
                - `Surface_Area_Mean_cm3`: numeric; surface area of coral in cm^3
                - `Surface_Area_Std`: numeric; standard deviation of surface area measurments - 3 measurements were taken and averaged together to get `Surface_Area_Mean_cm3`
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; first measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; first measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; first measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; first measurement
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; second measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; second measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; second measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; second measurement
                - `Red Mean`: numeric; mean value of red pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Red Std`: numeric; standard deviation of red value distribution from photo from `Red Mean`; third measurement
                - `Green Mean`: numeric; mean value of green pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Green Std`: numeric; standard deviation of green value distribution from photo from `Green Mean`; third measurement
                - `Blue Mean`: numeric; mean value of blue pigment in coral photo; units = R in RGB, 0-250; third measurement
                - `Blue Std`: numeric; standard deviation of green value distribution from photo from `Blue Mean`; third measurement
                - `Red_Mean`: numeric; mean of 3 measurements taken of the red pigment in coral photo; units = R in RGB, 0-250
                - `Red_Std`: numeric; standard deviation of 3 measurements from `Red_Mean`
                - `Green_Mean`: numeric; mean of 3 measurements taken of the green pigment in coral photo; units = G in RGB, 0-250
                - `Green_Std`: numeric; standard deviation of 3 measurements from `Green_Mean`
                - `Blue_Mean`: numeric; mean of 3 measurements taken of the blue pigment in coral photo; units = B in RGB, 0-250
                - `Blue_Std`: numeric; standard deviation of 3 measurements from `Blue_Mean`
                - `Notes`: character; notes about observation
          - Missing data codes: "NA" or blank
  Sheet 5: "Test Data": made up data to used to test code while images were still being analyzed
          - Number of variables: 17
          - Number of cases/rows: 504
          - Variable List: 
                - `person`: character; name of person who took and analyzed coral photo
                - `date`: date in mm/dd/YY
                - `species`: character; coral species abbreviation (Mcav = Montastrea cavernosa, Ofav = Orbicella faveolata, Pcli = Pseudodiploria clivosa)
                - `fragment`: numeric; identifying number for each fragment as colony number and fragment number separated by a period. Ex: 1.1 is colony 1 fragment 1. 
                - `treatment`: character; abbreviation for treatment (PBR = Purple, Blue, Red; PBC = Purple, Blue, Cyan; Control = Control)
                - `trial`: numeric; number of trial
                - `time`: character; time point data was take at, either before the trial was started or after it was completed (Before MO, After MO)
                - `weight_g`: numeric; drip-dry weight in grams
                - `surface_area_mean_cm3`: numeric; surface area of coral in cm^3
                - `surface_area_std`: numeric; standard deviation of surface area measurments - 3 measurements were taken and averaged together to get `surface_area_mean_cm3`
                - `red_mean`: numeric; mean of 3 measurements taken of the red pigment in coral photo; units = R in RGB, 0-250
                - `red_std`: numeric; standard deviation of 3 measurements from `red_mean`
                - `green_mean`: numeric; mean of 3 measurements taken of the green pigment in coral photo; units = G in RGB, 0-250
                - `green_std`: numeric; standard deviation of 3 measurements from `green_mean`
                - `blue_mean`: numeric; mean of 3 measurements taken of the blue pigment in coral photo; units = B in RGB, 0-250
                - `blue_std`: numeric; standard deviation of 3 measurements from `blue_mean`
                - `Notes`: character; notes about observation
          - Missing data codes: "NA" or blank

MO-PBC1.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBC Trial 1: 06/17/2024 - 07/09/2024
  - Number of variables: 6
  - Number of cases/rows: 11679
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

MO-PBC2.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBC Trial 2: 11/11/2024 - 12/20/2024
  - Number of variables: 6
  - Number of cases/rows: 11089
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

MO-PBC3.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBC Trial 3: 02/03/2025 - 03/17/2025
  - Number of variables: 6
  - Number of cases/rows: 8553
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

MO-PBR1.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBR Trial 1: 05/29/2024 - 06/17/2024
  - Number of variables: 6
  - Number of cases/rows: 88281
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

MO-PBR2.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBR Trial 2: 07/09/2024 - 07/29/2024
  - Number of variables: 6
  - Number of cases/rows: 1839
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

MO-PBR3.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBR Trial 3: 09/30/2024 - 11/11/2024
  - Number of variables: 6
  - Number of cases/rows: 16163
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

MO-PBR4.TXT: output file from LiCor LI-1500 Light Sensor Logger connected to LI-192 Underwater Quantum Sensor to record PAR for Treatment PBR Trial 4: 12/20/2024 - 02/03/2025
  - Number of variables: 6
  - Number of cases/rows: 12486
  - Variable List: 
        - `DATAH`: character; type of data
        - `Record`: numeric; record/observation number
        - `Date`: date; date in YYYY-mm-dd
        - `Time`: time; time in HH:MM:SS.miliseconds
        - `MINIOCEA`: character; site name as "MINIOCEA" or mini ocean
        - `CHK`: numeric; checksum used to determine if data transferred without errors - not meant for human interpretation
  - Missing data codes: "NA" or blank

Mini Ocean Nutrient Data.xlsx: colorimetry data for mini ocean for summer and fall 2024 and spring 2025
  - Number of variables: 14
  - Number of cases/rows: 34
  - Variable List: 
        - `Date`: date in mm/dd/YY
        - `Location`: character; name of location water sample was taken from, in this case "Mini Ocean"
        - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
        - `Phosphate`: numeric; phosphate concetration in mg/L
        - `Nitrate MR`: numeric; low range nitrate concentration in mg/L
        - `Nirate HR`: numeric; high range nitrate concentration in mg/L
        - `pH`: numeric; pH in pH units
        - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
        - `Silica`: numeric; silica concentration in mg/L
        - `Iron`: numeric; iron concentration in mg/L
        - `Ammonia`: numeric; ammonia concentration in mg/L
        - `Calcium`: numeric; calcium concentration in mg/L
        - `Initials`: character; initials of person(s) taking measurements
        - `Notes`: character; notes about measurements 
  - Missing data codes: "NA" or blank

Raceway2NutrientData.xlsx: colorimetry data for all sites (minus mini ocean) for summer and fall 2024 and spring 2025. Only Sheet 1 is used.
  Sheet 1: Data: long-format data from 2022 to 2025
          - Number of variables: 12
          - Number of cases/rows: 238
          - Variable List: 
                - `Date`: date in mm/dd/YY
                - `Location`: character; location water sample was taken from
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphate`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
                - `Ammonia`: numeric; ammonia in mg/L
                - `Calcium`: numeric; calcium in mg/L
          - Missing data codes: "NA" or blank
  Sheet 2: Pre-Formatted Data: wide-format data from 2017 to 2022
          - Number of variables: 
          - Number of cases/rows: 252
          - Variable List: 40
                - `Date`: date in mm/dd/YY
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
                - `Ammonia`: numeric; ammonia in mg/L
                - `ORP`: numeric; oxidation-reduction potential in miliVolts
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `ORP`: numeric; oxidation-reduction potential in miliVolts
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
                - `Ammonia`: numeric; ammonia in mg/L
                - `ORP`: numeric; oxidation-reduction potential in miliVolts
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
                - `Ammonia`: numeric; ammonia in mg/L
                - `Initials`: character; initials of person(s) taking measurements
                - `Notes`: character; notes on measurements
          - Missing data codes: "NA" or blank
  Sheet 3: Stats
          - Number of variables: 38
          - Number of cases/rows: 5
          - Variable List: 
                - Blank: character; list of stats being tracked
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
                - `Ammonia`: numeric; ammonia in mg/L
                - `ORP`: numeric; oxidation-reduction potential in miliVolts
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `ORP`: numeric; oxidation-reduction potential in miliVolts
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
                - `Ammonia`: numeric; ammonia in mg/L
                - `ORP`: numeric; oxidation-reduction potential in miliVolts
                - `Turbidity`: numeric; turbidity in Formazin Attenuation Units
                - `Phosphorus`: numeric; phophate in mg/L
                - `Nitrate MR`: numeric; low range nitrate in mg/L
                - `Nitrate HR`: numeric; high range nitrate in mg/L
                - `pH`: numeric; pH in pH units
                - `Alkalinity`: numeric; alkalinity in mg/L CaCO3
                - `Silica`: numeric; silica in mg/L
                - `Iron`: numeric; iron in mg/L
          - Missing data codes: "NA" or blank

PRO DSS MO All - Sheet1.csv: water quality data from YSI ProDSS instrument for mini ocean for summer and fall 2024 and spring 2025
  - Number of variables: 12
  - Number of cases/rows: 238
  - Variable List: 
        - `Date`: date in mm/dd/YY
        - `Time`: time in HH:MM:SS
        - `Site`: character; name of site measurements were taken in 
        - `Unit ID`: character; name of unit/instrument taking measurements - blank 
        - `User ID`: character; name of instrument user - blank 
        - `¬∞F`: numeric; temperature in degrees Fahrenheit
        - `DO %`: numeric; dissolved oxygen in percent
        - `DO mg/L`: numeric; dissolved oxygen in mg/L
        - `C-uS/cm`: numeric; conductivity in µSiemens/cm
        - `SAL-PSU`: numeric; salinity in Potential Salintiy Units
        - `pH`: numeric; pH in pH units
        - `ORP mV`: numeric; oxidation-reduction potential 
        - `Chl RFU`: numeric; chlorophyll in Relative Fluorescence Units
        - `PE RFU`: numeric; Phycoerythrin blue-green algae in Relative Fluorescence Units 
  - Missing data codes: "NA" or blank

prodssbackup-250328-140416 All Sites.csv: water quality data from YSI ProDSS instrument for all sites from September 2024 - March 2025. Used to get Raceway 2 (Control) parameters. 
  - Number of variables: 14
  - Number of cases/rows: 2400
  - Variable List: 
        - `Date`: date in mm/dd/YY
        - `Time`: time in HH:MM:SS
        - `Site`: character; name of site measurements were taken in 
        - `Unit ID`: character; name of unit/instrument taking measurements - blank 
        - `User ID`: character; name of instrument user - blank 
        - `¬∞F`: numeric; temperature in degrees Fahrenheit
        - `DO %`: numeric; dissolved oxygen in percent
        - `DO mg/L`: numeric; dissolved oxygen in mg/L
        - `C-uS/cm`: numeric; conductivity in µSiemens/cm
        - `SAL-PSU`: numeric; salinity in Potential Salintiy Units
        - `pH`: numeric; pH in pH units
        - `ORP mV`: numeric; oxidation-reduction potential 
        - `Chl RFU`: numeric; chlorophyll in Relative Fluorescence Units
        - `PE RFU`: numeric; Phycoerythrin blue-green algae in Relative Fluorescence Units 
  - Missing data codes: "NA" or blank

Raceway2Parameters_2024-05-29_2025-09-30_RoundsForm.xlsx: water quality data from Google Form of daily rounds for Raceway 2 (Control) to complete time gap with summer data. YSI ProDSS is used to obtain data, but fewer parameters are recorded: only temperature (F), salinity (PSU), and pH. 
  - Number of variables: 4
  - Number of cases/rows: 78
  - Variable List: 
        - `Datetime`: datetime in YYYY-mm-dd HH:MM:SS
        - `pH`: numeric; pH in pH units
        - `salinity`: numeric; salinity in Potential Salinity Units
        - `temp_f`: numeric; temperature in Fahrenheit
  - Missing data codes: "NA" or blank

ConfoundingFactorTesting-Dunn.xlsx: spreadsheet of Dunn Test results showing comparisons between all trials for environmental variables 
  - Number of variables: 12
  - Number of cases/rows: 273
  - Variable List: 
        - `variable_names`: character; name of environmental variable / confounding factor
        - `.y.`: character; name of variable / "y" value tested (variable_values)
        - `group1`: character; comparison group 1
        - `group2`: character; comparison group 2
        - `n1`: numeric; number of group 1 observations 
        - `n2`: numeric; number of group 2 observations
        - `estimate`: numeric; value of `estimate2` minus `estimate1`
        - `estimate1`: numeric; mean value of group 1 observations
        - `estimate2`: numeric; mean value of group 2 observations
        - `statistic`: numeric; Z-score of comparison between `estimate1` and `estimate2`
        - `p.adj`: numeric; p-value adjusted via Bonferroni correction 
        - `p.adj.signif`: character; icon showing levels of non-significance (ns) or significance (*, **, ***, ****)
  - Missing data codes: "NA" or blank

ConfoundingFactorTesting-KruskalWallis-EffectSize.xlsx: spreadsheet of the effect size of the significant Kruskal Wallis results 
  - Number of variables: 6
  - Number of cases/rows: 15
  - Variable List: 
        - `variable_names`: character; name of environmental variable / confounding factor
        - `.y.`: character; name of variable / "y" value tested (variable_values)
        - `n`: numeric; number of observations
        - `effsize`: numeric; size of the effect of the environmental variable / confounding factor on y value
        - `method`: character; statistical method used to test effect size
        - `magnitude`: character; magnitude of effect size (small, moderate, large)
  - Missing data codes: "NA" or blank

ConfoundingFactorTesting-KruskalWallis-InitialResults.xlsx: spreadsheet of significant Kruskal Wallis results testing if environmental variables differ between trials 
  - Number of variables: 7
  - Number of cases/rows: 15
  - Variable List: 
        - `variable_names`: character; name of environmental variable / confounding factor
        - `.y.`: character; name of variable / "y" value tested (variable_values)
        - `n`: numeric; number of observations
        - `statistic`: numeric; value of Kruskal-Wallis statistic
        - `df`: numeric; degrees of freedom
        - `p`: numeric; p-value 
        - `method`: character; name of statistical test
  - Missing data codes: "NA" or blank

ConfoundingFactorTesting-WeightedLeastSquareRegressions.xlsx: spreadsheet of weighted least squares linear regression results testing if the environmental variables affected the trial outcomes 
  - Number of variables: 10
  - Number of cases/rows: 19
  - Variable List: 
        - `dependent_variable`: character; name of dependent variable (y-value) used in test (weight, surface area, rgb/pigmentation) 
        - `environmental_variable`: character; name of environmental variable / confounding factor (independent variable / x-value)
        - `estimate`: numeric; slope (rate of change) of comparison between dependent variable values and environmental variable values
        - `df`: numeric; degrees of freedom 
        - `rdf`: numeric; residual degrees of freedom 
        - `se`: numeric; standard error 
        - `rse`: numeric; residual standard error
        - `f_stat`: numeric; value of F statistic
        - `r_squared`: numeric; r^2 value
        - `p_value`: numeric; p-value 
  - Missing data codes: "NA" or blank

ConfoundingFactorTesting-LinearRegressions.xlsx: spreadsheet of regular linear regression results testing if the environmental variables affected the trial outcomes 
  - Number of variables: 6
  - Number of cases/rows: 18
  - Variable List: 
        - `dependent_variable`: character; name of dependent variable (y-value) used in test (weight, surface area, rgb/pigmentation) 
        - `environmental_variable`: character; name of environmental variable / confounding factor (independent variable / x-value)
        - `p_value`: numeric; p-value 
        - `f_stat`: numeric; value of F statistic
        - `r_squared`: numeric; r^2 value
        - `estimate`: numeric; slope (rate of change) of comparison between dependent variable values and environmental variable values
  - Missing data codes: "NA" or blank

MOStats_PERMANOVA_Pairwise-All.xlsx: results of Pairwise PERMANOVA tests run on Trial, Treatment, and Species separately. 
  - Number of variables: 7
  - Number of cases/rows: 27
  - Variable List: 
        - `term`: character; independent / categorical variable being tested
        - `comparison`: character; factors within independent / categorical variable beine compared to each other (ex: "PBR_vs_PBC" compares PBR and PBC Treatments)
        - `Df`: numeric; degrees of freedom
        - `SumOfSqs`: numeric; sum of squares
        - `R2`: numeric; r^2 value
        - `F`: numeric; F statistic value
        - `p`: numeric; p-value
  - Missing data codes: "NA" or blank

MOStats_PERMANOVA_SingleIndependent.xlsx: results of running a single PERMANOVA with no interactions between the independent variables. 
  - Number of variables: 6
  - Number of cases/rows: 3
  - Variable List: 
        - `ModelNames`: character; name of model results 
        - `Df`: numeric; degrees of freedom
        - `SumOfSqs`: numeric; sum of squares
        - `R2`: numeric; r^2 value
        - `F`: numeric; F statistic value
        - `Pr(>F)`: numeric; p-value
  - Missing data codes: "NA" or blank

MOStats_PERMANOVA_SingleInteraction.xlsx: results of running a single PERMANOVA with interactions between the independent variables. 
  - Number of variables: 6
  - Number of cases/rows: 3
  - Variable List: 
        - `ModelNames`: character; name of model results 
        - `Df`: numeric; degrees of freedom
        - `SumOfSqs`: numeric; sum of squares
        - `R2`: numeric; r^2 value
        - `F`: numeric; F statistic value
        - `Pr(>F)`: numeric; p-value
  - Missing data codes: "NA" or blank

MOStats_TukeyTestResults.xlsx: results of Tukey Test run with interactions between the independent variables. 
  - Number of variables: 9
  - Number of cases/rows: 819
  - Variable List: 
        - `dependent_variable_names`: character; name of dependent variables (y)
        - `term`: character; name of independent variables (x)
        - `group1`: character; factor from within `term` variable being compared to `group2`
        - `group2`: character; factor from within `term` variable being compared to `group1`
        - `estimate`: numeric; mean of `group2` minus mean of `group1`
        - `conf.low`: numeric; lower confidence interval
        - `conf.high`: numeric; higher confidence interval
        - `p.adj`: numeric; p-value adjusted with Bonferroni correction
        - `p.adj.signif`: character; icon indicating non-significance ("ns") or significance ("*", "**", "***", "****") of p-value
  - Missing data codes: "NA" or blank