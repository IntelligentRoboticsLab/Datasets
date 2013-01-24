clear;
fname = struct2cell(dir('IPM/dataset_QVGA_RGB_IPM/*.png'));
fname = fname(1,:);
add = strcat('IPM/dataset_QVGA_RGB_IPM/',fname);
text{1} = '';
for i = 61 : 64
    image = imread(add{i});
    text{i} = strcat(fname{i}, ' [');
    imshow(image);
    [x,y,feature] = ginput;
    for j = 1 : length(feature); 
        text{i} = strcat(text{i}, feature(j), '<', int2str(x(j)), ',', int2str(y(j)), '>;');
    end
    text{i} = strcat(text{i}, ']');
end
text = text';