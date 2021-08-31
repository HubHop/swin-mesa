source activate quant
which python
nvidia-smi

python -m torch.distributed.launch --nproc_per_node 8 --master_port 13335  main.py \
--cfg configs/debug.yaml
