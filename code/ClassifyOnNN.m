%  ClassifyOnNN computes the classification accuracy
%  CP=ClassifyOnNN(DM,trainClassIDs,testClassIDs) returns the classification accuracy 
%  The input "DM" is a m*n distance matrix, m is the number of test samples, n is the number of training samples
%  'trainClassIDs' and 'testClassIDs' stores the class ID of training and
%  test samples

%  Examples
%  --------
%       I1=imread('rice1.png');
%       I2=imread('rice2.png');
%       I3=imread('rice3.png');
%       I4=imread('rice4.png');
%       mapping=getmapping(8,'u2'); 
%       M(1,:)=LBPV(I1,1,8,mapping); % LBPV histogram in (8,1) neighborhood using uniform patterns
%       M(2,:)=LBPV(I2,1,8,mapping); 
%       S(1,:)=LBPV(I3,1,8,mapping); 
%       S(2,:)=LBPV(I4,1,8,mapping); 
%       M = ConvertU2LBP(M,8); % convert u2 LBP or LBPV to meet the requirement of global matching scheme
%       S = ConvertU2LBP(S,8);
%       DM = distGMPDRN(M,S,8,2,3);
%       CP=ClassifyOnNN(DM,[1,1],[1,1]);

function [CP,W_P]=ClassifyOnNN(DM,trainClassIDs,testClassIDs,class_Num)
% Version 1.0
% Authors: Zhenhua Guo, Lei Zhang and David Zhang
% Copyright @ Biometrics Research Centre, the Hong Kong Polytechnic University

if nargin<3
    disp('Not enough input parameters.')
    return
end

rightCount = 0;

W_P=zeros(1,class_Num);
for i=1:length(testClassIDs);
    [distNew, index]= min(DM(i,:));   % find Nearest Neighborhood
    if trainClassIDs(index) == testClassIDs(i)  % judge whether the nearest one is correctly classified
        rightCount = rightCount+1;
        if class_Num==61
            W_P(testClassIDs(i))=W_P(testClassIDs(i))+1;
        else
            W_P(testClassIDs(i)+1)=W_P(testClassIDs(i)+1)+1;
        end
    end
end
CP = rightCount/length(testClassIDs)*100;
class_Pic_Num=(length(testClassIDs)/class_Num);
W_P=W_P/class_Pic_Num;







