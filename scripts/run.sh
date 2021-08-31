source activate quant
which python
nvidia-smi

python -m torch.distributed.launch --nproc_per_node 1 --master_port 13335  main.py \
--cfg configs/swin_tiny_patch4_window7_224.yaml
