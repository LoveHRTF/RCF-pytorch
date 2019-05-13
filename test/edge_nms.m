clear; clc;


path_to_toolbox = '/users/guest418/scratch/toolbox.badacost.public';
path_to_pdollar = '/users/guest418/scratch/edges';
path_to_input = '/users/guest418/scratch/RCF-pytorch/data/epoch-16-testing-record-view';
path_to_output = '/users/guest418/scratch/BSR/bench/data/test-rcf-none-16';

addpath(genpath(path_to_toolbox));
addpath(genpath(path_to_pdollar));
if ~exist(path_to_output, 'dir')
    mkdir(path_to_output);
end

iids = dir(fullfile(path_to_input, '*.png'));
for i = 1:length(iids)
    edge = imread(fullfile(path_to_input, iids(i).name));
    edge = single(edge)/255;

    [Ox, Oy] = gradient2(convTri(edge, 4));
    [Oxx, ~] = gradient2(Ox);
    [Oxy, Oyy] = gradient2(Oy);
    O = mod(atan(Oyy .* sign(-Oxy) ./ (Oxx + 1e-5)), pi);
    % 2 for BSDS500 and Multi-cue datasets, 4 for NYUD dataset
    edge = edgesNms(edge, O, 2, 5, 1.01, 8);
    
    imwrite(edge, fullfile(path_to_output, [iids(i).name(1:end-4) '.png']));
    
end