# R & Python Portfolio – Jet Lambers

This repository gives an overview of my coding experience across four research projects. It is not a comprehensive collection of everything I wrote during my studies, only the scripts that are still available to me. All scripts require private datasets, which are not included, so the code is meant for reading rather than running.

## 1. Serotonergic modulation of motivated choice as a function of controllability (SSRI study)

Bayesian mixed-effects modelling of a pharmacological (SSRI) study, run in bulk on an HPC cluster with Slurm.

- `JetLambers_SSRI_study_BRMS_models.Rmd`: defines the hypothesis-driven Bayesian mixed-effects models (brms).
- `JetLambers_SSRI_study_BRMS_wrapper_script_full_v1.R`: defines which models to run.
- `JetLambers_SSRI_study_BRMS_submit_to_slurm.sh`: submits the models as jobs to the HPC cluster.
- `JetLambers_SSRI_study_post-hoc_processing_visualizing_models.Rmd`: runs post-hoc tests and visualizes the model results.

## 2. Familiarity study: neural dynamics of visual processing

Investigates whether the processing of familiar and novel stimuli relies on feedforward or recurrent dynamics.

- `JetLambers_familiarityStudy_stimCreation_randomization.ipynb`: creates the visual stimuli and counterbalances them across participants.
- `JetLambers_familiarity_study_code_mask_processing.ipynb`: creates the mask for each stimulus used in the experiment.
- `JetLambers_familiarityStudy_plottingResults.ipynb`: plots the raw data from the study.

## 3. fMRI stress perception experiment: audiovisual integration in language

Probes the mechanisms underlying audiovisual integration in language.

- `JetLambers_fMRI_stress_exp_Audiovisual_integration_stimuli.ipynb`: creates the audiovisual stimuli.
- `JetLambers_fMRI_stress_exp_counterbalancing_procedure.Rmd`: counterbalances the stimulus sets across participants.

## 4. Curiosity study: neural mechanisms of curiosity in a school context

Examines the neural mechanisms of curiosity measured in a school setting.

- `JetLambers_curiosity_study_z_scoring_visualisation_variables.Rmd`: z-scores the variables town socioeconomic status and pupil complexity (*schoolweging*) and visualizes both distributions.

## Notes

- Languages and tools: R (R Markdown), Python (Jupyter notebooks), bash (Slurm).
- Data are private and not included in this repository.
