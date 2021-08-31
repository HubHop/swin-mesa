#!/bin/bash

#SBATCH --account=dl66
#SBATCH --partition=dgx
#SBATCH --qos=dgx

#SBATCH -n 1
#SBATCH -c 40
#SBATCH --gres=gpu:V100:8
#SBATCH --mem=400GB
#SBATCH --time=24:00:00

#SBATCH --mail-user=zizhengpan98@gmail.com
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
# SBATCH --exclude=dgx000

module load gcc/5.4.0
module load cuda/10.1
module load cudnn/7.6.5-cuda10.1

cd ../
bash scripts/run.sh