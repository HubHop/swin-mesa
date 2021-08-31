source activate quant
which python
nvidia-smi

python -m torch.distributed.launch --nproc_per_node 1 --master_port 13235  main.py \
--cfg configs/debug.yaml
