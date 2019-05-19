clc
clear all
imDir=dir('D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\*.mat');
close all
for i=1:length(imDir)
    layer = zeros(481,321);
    list=imDir(i);
    gts=load(list.name);
    [r,c]=size(gts);
    for idx = 1 : c
        im= gts.groundTruth{idx}.Boundaries+0;
        if size(im)==size(layer)
            layer=layer+im;
        else
            layer=layer+im';
        end
    end
    layer=layer/5;
    I = mat2gray(1-layer);
    cnt=0;
    len=length(list.name);
    for L=1:len
        if list.name(L)~='.'
            cnt=cnt+1;
        else
            break
        end
    end
    name=[list.name(1:cnt),'.png'];
    path='D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\out\';
    imwrite(I,[path,name]);
end