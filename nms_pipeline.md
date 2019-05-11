# Pipeline of Non-Maximum Suppression and Benchmark

This document shows the whole pipeline for post-processing model output: performing Non-Maximum Suppression (NMS), and benchmarking using [BSDS500](https://www2.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/resources.html) dataset.

## Model Output
The model output on test dataset is saved in `RCF-pytorch/tmp/RCF`. 

## Non-Maximum Suppression
For both RCF and HED, the model output only shows a probablity map of edge pixels, so an NMS is neccessary for evaluation on dataset benchmark.

### Solving dependencies
Both of the authors of [HED](https://github.com/s9xie/hed_release-deprecated/tree/master/examples/eval) and [RCF](https://github.com/yun-liu/rcf/tree/master/examples/rcf) provides some code for doing NMS. The code depends on Pictor's [Edge Detection Toolbox](https://github.com/pdollar/edges), and Buenaposada's [Matlab Toolbox](https://github.com/jmbuena/toolbox.badacost.public). Then all those toolboxes should also be installed (or not, see notes below). 

**Notes**: 
1. **Important:** Piotr's [Matlab Toolbox](https://github.com/pdollar/toolbox) is deprecated due to a int type problem mentioned [here](https://github.com/pdollar/toolbox/issues/29). 
1. For win64/linux64 systems, the binaries are already included, so there is no need to install/compile the libraries using mex.
2. The libraries for NMS in the toolbox is private, so a wrapper for `edgesNmsMex` should be written in  `edges/`.


### Performing NMS

Modify the paths in the `/rcf/examples/rcf/edges_nms.m` file, and simply run the MATLAB script. The output edges will be saved in the path you choose.

## Benchmarking






