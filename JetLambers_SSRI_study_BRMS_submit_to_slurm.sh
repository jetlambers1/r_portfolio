#!/bin/bash
#SBATCH --job-name=JL_BRMS_models_v1                                    # Name of the job
#SBATCH --output=logs/pGo_v1/JL_BRMS_models_v1_%A_%a_output.txt                # Output file for job's standard output
#SBATCH --error=logs/pGo_v1/JL_BRMS_models_v1_%A_%a_error.txt                  # Error file for job's standard error
#SBATCH --array=17	                                # array of brms models to run
#SBATCH --time=72:00:00                                                 # Maximum run time (hh:mm:ss)
#SBATCH --mem=72GB                                                      # Memory request for the job
#SBATCH --cpus-per-task=1                                               # Number of CPUs (adjust as needed)
#SBATCH --ntasks=1                                                      # Number of tasks (set to 1 for a single job)
#SBATCH --mail-type=END,FAIL                                            # If job end or fail, send an email
#SBATCH --mail-user=jet.lambers@ru.nl                                   # send email to.

# Activate your conda environment if needed (adjust the environment name)
module load gcc/13.3.0

# Navigate to the directory containing your R Markdown file
cd /project/2424182.03/analysis/robot_task/jet/Statistics/Models/

export R_LIBS_USER="/home/control/jetlam/R/x86_64-pc-linux-gnu-library/4.3"
# export R_LIBS_USER="/home/control/upasha/R/x86_64-pc-linux-gnu-library/4.3"

echo 'before'
echo "SLURM_ARRAY_TASK_ID = ${SLURM_ARRAY_TASK_ID}"

Rscript JL_BRMS_wrapper_script_full_v1.R ${SLURM_ARRAY_TASK_ID}
echo 'after'
