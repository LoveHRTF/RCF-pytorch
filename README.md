## RCF-pytorch Improvements

2019 Spring ENGN 2560 Computer Vision Final Project

Group Members: Ziwei Chen, Yang Jiao, Yiming Li

This repository is highly based on [Xuanyi Li](https://github.com/meteorshowers)'s [RCF PyTorch project](https://github.com/meteorshowers/RCF-pytorch). Thanks a lot!

### Richer Convolutional Features for Edge Detection


### Citation
The project relys on RCF. Please consider citing:

@article{RcfEdgePami2019,
  author = {Yun Liu and Ming-Ming Cheng and Xiaowei Hu and Jia-Wang Bian and Le Zhang and Xiang Bai and Jinhui Tang},
  title = {Richer Convolutional Features for Edge Detection},
  year  = {2019},
  journal= {IEEE Trans. Pattern Anal. Mach. Intell.},
  volume={}, 
  number={}, 
  pages={}, 
  doi = {},
}

@inproceedings{RCFEdgeCVPR2017,
  title={Richer Convolutional Features for Edge Detection},
  author={Yun Liu and Ming-Ming Cheng, Xiaowei Hu and K Wang and X Bai},
  booktitle={IEEE CVPR},
  year={2017},
}

### Installation

Install <a href="https://pytorch.org/">pytorch</a>. The code is tested under 0.4.1 GPU version and Python 3.6  on Ubuntu 16.04. There are also some dependencies for a few Python libraries for data processing and visualizations like `cv2` etc. It's highly recommended that you have access to GPUs.

### Usage

#### Data Preparation

For dataset used in this project, please refer to [data_organize.md](data_orgnize.md) 

#### Training

To train a RCF model on BSDS500:

        python train_RCF.py

Or on Brown CCV:

        sbatch train.sh


#### Evaluation

We use [BSDS-500](https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html) and its benchmark software for evalutaion. 

Before evaluation, the non-maximum suppression must be perform. Refer to [nms_pipeline](nms_pipeline.md) for detailed instruction.



### License
Our code is released under MIT License (see LICENSE file for details).


### source：
*  To download the pretrained model, please click https://drive.google.com/open?id=1TupHeoBKawrniDka0Hc64m3BG4OKG8nM
(This pretrained model is not the best model, just for communicating)

### Related Projects
[1] <a href="https://github.com/yun-liu/rcf">Richer Convolutional Features for Edge Detection</a> 

[2] <a href="https://github.com/s9xie/hed">HED</a> 

[3] <a href="https://github.com/zeakey/hed">HED</a> created by <a href="https://github.com/zeakey">zeakey's</a>
