## Demo project for training Swin with Mesa

For more details, please checkout our paper: [Mesa: A Memory-saving Training Framework for Transformers](https://arxiv.org/abs/2111.11124).

## Usage

1. Install Mesa from [here](https://github.com/zhuang-group/Mesa).
2. Install dependencies of Swin from [here](https://github.com/microsoft/Swin-Transformer/blob/main/get_started.md).
3. To train a Swin model.
   ```bash
   conda activate mesa

   # Make sure you have the correct path to the dataset in the config file.
   python -m torch.distributed.launch --nproc_per_node [GPUs] --master_port 13235  main.py \
   --cfg [configs]

   # For example, to train Swin-Ti with Mesa on 1 GPU.
   python -m torch.distributed.launch --nproc_per_node 1 --master_port 13235  main.py \
   --cfg configs/swin_tiny_patch4_window7_224_mesa.yaml
   ```

## Results on ImageNet


| Model               | Param (M) | FLOPs (G) | Train Memory | Top-1 (%) |
| ------------------- | --------- | --------- | ------------ | --------- |
| Swin-Ti             | 29        | 4.5       | 11,812        | 81.3      |
| **Swin-Ti w/ Mesa** | 29        | 4.5       | **5,371**     | **81.3**  |



## Acknowledgments

This repository has adopted codes from [Swin Transformer](https://github.com/microsoft/Swin-Transformer), we thank the authors for their open-sourced code.
