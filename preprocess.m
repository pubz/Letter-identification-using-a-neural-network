imgFiles = dir('TrainingDataset\*.jpg');
for i= 1 : length(imgFiles)
    fileName = strcat('TrainingDataset\',imgFiles(i).name);
    oldImage = imread(fileName);
    
    grayImage = rgb2gray(oldImage);
    I = im2bw(grayImage,graythresh(grayImage));
    se=strel('square',2);   
    I=imdilate(~I,se); 
    I=imresize(I,[12 10]); 
    
    %figure,imshow(I);
    
    imwrite(I,strcat('processedTrainingSet\',num2str(i),'.jpg'));
end