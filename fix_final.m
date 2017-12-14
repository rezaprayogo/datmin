clc; clear all; clear;
load('fdata.mat');
kmin=2; %Jumlah K minimal
kmax=5; %Jumlah K maksimal
[N,Nfitur] = size(fdata);
N=length(fdata); %Jumlah objek
R=5; %Random start K-means
Pr = {};
kol=1;
CVI_silhouette = {};
%Iterasi I
for k=kmin:kmax
    %Iterasi I-I
    for r=1:R
        random_start = kmeans(fdata,k);
        for RPr=1:length(random_start)
            Pr{1,k}(RPr,r) = random_start(RPr,1);
        end
    end
    %End Iterasi I-I
    kol=kol+1;
    %Iterasi I-II
    for i=1:N
        
    end
    %End Iterasi I-II
end
%End Iterasi I