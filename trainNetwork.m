processedTrainingSet = dir('processedTrainingSet\*jpg');

PInput=[];

for i = 1:numel(processedTrainingSet) 
    imgNo = strcat('processedTrainingSet\',processedTrainingSet(i).name); 
    Image=imread(imgNo); 
    Ibit = im2bw(Image,graythresh(Image));
    colVec = reshape(Ibit,[],1);
    PInput = [PInput;colVec'];
    disp(PInput)
    %ImageToColumn = Image(:);
    %ImageToRow = ImageToColumn';
    
    %PInput=[PInput; ImageToRow];
    %disp(PInput);
end