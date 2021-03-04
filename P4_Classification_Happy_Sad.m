clc
close all
% clear all
% clearvars -EXCEPT Part Part_Data

load Part.mat

  
h = 9;    % Happy Movie
s = 24;    %  Sad  Movie
clear H S
for i = 1:32
    H(i,:) = Part(i).Movie(h).Symbolic_eight;
end

for i = 1:32
    S(i,:) = Part(i).Movie(s).Symbolic_eight;
end

n = size(H,1);     % Number of Subjects
l = size(H,2);     % Length of Signal

clear h s D
Ref = [];


for i = 1:32
    
    clear Ref
    
    h = H(i,:);
    u = H;
    u(i,:) = [];
    g = mean(u,1);
    Ref(1,:) = g;
    
    s = S(i,:);
    v = S;
    v(i,:) = [];
    g = mean(v,1);
    Ref(2,:) = g;
    
    Ref = Ref';
    
    Test = [h;s];
    m = size(Test,1);
    T = 0;
    
    for k = 1:m
        sim = (sum(Test(1,:)'.* Ref(:,k))) / (norm(Test(1,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(1,i) = r;
    if r == 1
       T = T+1;
    end
    
    clear sim Sim
    
    for k = 1:m
        sim = (sum(Test(2,:)'.* Ref(:,k))) / (norm(Test(2,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(2,i) = r;
    if r == 2
       T = T+1;
    end
   
    D(i,1) = T/2;    
    
end

Accuracy = mean(D)
