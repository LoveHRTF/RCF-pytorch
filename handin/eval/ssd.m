clc;
clear all;
% imDir=dir('D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfm-2-12-May18\*.png');
imDir=dir('D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfs-2-12-May18\*.png');
close all
err=zeros(100,1);
table=cell(100,1);
for i=1:length(imDir)
    list=imDir(i);
    cnt=0;
    len=length(list.name);
    for L=1:len
        if list.name(L)~='.'
            cnt=cnt+1;
        else
            break
        end
    end
    name=[list.name(1:cnt)];
    table{i,1}=name;
    im_mean=double(imread(['D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\out\',name,'.png']));
    im=double(imread(['D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfs-2-12-May18\',name,'.png']));
    if size(im)==size(im_mean)
        err(i)=std2(im-im_mean);
    else
        err(i)=std2(im'-im_mean);
    end
    
end
sorted_err=sort(err,'descend');
% mkdir('large_m');
% for i=1:10
%     index(i)=find(err==sorted_err(i));
%     imlist{i}=table{index(i)};
%     tgtname=imlist{i};
%     I1=imread(['.\out\',tgtname,'.png']);
%     imwrite(I1,['.\large_m\',tgtname,'.png']);
%     I2=imread(['D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfm-2-12-May18\',tgtname,'.png']);
%     imwrite(I2,['.\large_m\',tgtname,'_m.png']);
% end
% 
% ascend_err=sort(err);
% mkdir('small_m');
% for j=1:10
%     index(5+j)=find(err==ascend_err(j));
%     imlist{5+j}=table{index(j+5)};
%     tgtname=imlist{5+j};
%     I1=imread(['.\out\',tgtname,'.png']);
%     imwrite(I1,['.\small_m\',tgtname,'.png']);
%     I2=imread(['D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfm-2-12-May18\',tgtname,'.png']);
%     imwrite(I2,['.\small_m\',tgtname,'_m.png']);
% end


mkdir('large_s');
for i=1:10
    index(i)=find(err==sorted_err(i));
    imlist{i}=table{index(i)};
    tgtname=imlist{i};
    I1=imread(['.\out\',tgtname,'.png']);
    imwrite(I1,['.\large_s\',tgtname,'.png']);
    I2=imread(['D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfs-2-12-May18\',tgtname,'.png']);
    imwrite(I2,['.\large_s\',tgtname,'_s.png']);
end

ascend_err=sort(err);
mkdir('small_s');
for j=1:10
    index(5+j)=find(err==ascend_err(j));
    imlist{5+j}=table{index(j+5)};
    tgtname=imlist{5+j};
    I1=imread(['.\out\',tgtname,'.png']);
    imwrite(I1,['.\small_s\',tgtname,'.png']);
    I2=imread(['D:\Brown\CV\BSR\BSDS500\data\groundTruth\test\illu-rcfs-2-12-May18\',tgtname,'.png']);
    imwrite(I2,['.\small_s\',tgtname,'_s.png']);
end
