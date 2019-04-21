# Data Organization 

This document is an instruction for preparing the pre-trained VGG-16 model and training datasets.

For organizing data:

## 1. Download datasets
	
VGG16 Model:
```
wget http://www.vlfeat.org/matconvnet/models/fast-rcnn-vgg16-pascal07-dagnn.mat
```
List File:
```
wget http://mftp.mmcheng.net/liuyun/rcf/data/bsds_pascal_train_pair.lst
```
Three DataSets:
```
wget http://mftp.mmcheng.net/liuyun/rcf/data/HED-BSDS.tar.gz
wget http://mftp.mmcheng.net/liuyun/rcf/data/PASCAL.tar.gz
wget http://mftp.mmcheng.net/liuyun/rcf/data/NYUD.tar.gz
```

## 2. Create directory to store the data

mkdir $RootFolder/data/HED-BSDS_PASCAL


## 3. File Reorganization

Under the directory where you save your datasets and the list file, unzip all three datasets:
```
tar -xf /<download>/PASCAL.tar.gz
tar -xf /<download>/HED-BSDS.tar.gz 
tar -xf /<download>/NYUD.tar.gz
```

Copy the unzipped datasets and the list file to the `HED-BSDS_PASCAL` directory:

```
cp bsds_pascal_train_pair.lst $RootFolder/data/HED-BSDS_PASCAL/bsds_pascal_train_pair.lst

cp PASCAL/ $RootFolder/data/HED-BSDS_PASCAL/PASCAL/

cp HED-BSDS $RootFolder/data/HED-BSDS_PASCAL/HED-BSDS/

cp NYUD $RootFolder/data/HED-BSDS_PASCAL/NYUD/

```
Also copy the test data:
```
cp $RootFolder/data/HED-BSDS_PASCAL/HED-BSDS/test $RootFolder/data/HED-BSDS_PASCAL/test
```

## 4. Rename the pre-train model:

```
cp fast-rcnn-vgg16-pascal07-dagnn.mat $RootFolder/vgg16convs.mat
```

## 5. Start training!

```
python train_RCF.py to start training
```