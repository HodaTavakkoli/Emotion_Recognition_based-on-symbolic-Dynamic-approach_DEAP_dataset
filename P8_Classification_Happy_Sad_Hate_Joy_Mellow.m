% clc
% clear all
% close all
clearvars -EXCEPT Part Part_Data

load Part.mat

j = 9;     %  Joy  Movie
h = 11;    % Happy Movie
s = 24;    %  Sad  Movie
hh = 31;   % Hate  Movie
m = 26;    % Mellow Movie

clear H S HH J M

for i = 1:32
    H(i,:) = Part(i).Movie(h).Symbolic_eight;
end
% H = H(:,385:end);

for i = 1:32
    S(i,:) = Part(i).Movie(s).Symbolic_eight;
end
% S = S(:,385:end);

for i = 1:32
    HH(i,:) = Part(i).Movie(hh).Symbolic_eight;
end
% HH = HH(:,385:end);

for i = 1:32
    J(i,:) = Part(i).Movie(j).Symbolic_eight;
end
% J = J(:,385:end);

for i = 1:32
    M(i,:) = Part(i).Movie(m).Symbolic_eight;
end
% M = M(:,385:end);

n = size(H,1);     % Number of Subjects
l = size(H,2);     % Length of Signal

clear h s j hh m D
Ref = [];

for i = 1:32
    
    clear Ref g
    
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
    
    hh = HH(i,:);
    w = HH;
    w(i,:) = [];
    g = mean(w,1);
    Ref(3,:) = g;
    
    j = J(i,:);
    q = J;
    q(i,:) = [];
    g = mean(q,1);
    Ref(4,:) = g;
    
    m = M(i,:);
    p = M;
    p(i,:) = [];
    g = mean(p,1);
    Ref(5,:) = g;
    
    Ref = Ref';
    
    Test = [h;s;hh;j;m];
    mm = size(Test,1);
    T = 0;
    
    for k = 1:mm
        sim = (sum(Test(1,:)'.* Ref(:,k))) / (norm(Test(1,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(1,i) = r;
    if r == 1
       T = T+1;
    end
    
    for k = 1:mm
        sim = (sum(Test(2,:)'.* Ref(:,k))) / (norm(Test(2,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(2,i) = r;
    if r == 2
       T = T+1;
    end
   
    for k = 1:mm
        sim = (sum(Test(3,:)'.* Ref(:,k))) / (norm(Test(3,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(3,i) = r;
    if r == 3
       T = T+1;
    end
    
    for k = 1:mm
        sim = (sum(Test(4,:)'.* Ref(:,k))) / (norm(Test(4,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(4,i) = r;
    if r == 4
       T = T+1;
    end
    
    for k = 1:mm
        sim = (sum(Test(5,:)'.* Ref(:,k))) / (norm(Test(5,:)) * norm(Ref(:,k)));
        Sim(k,1) = sim;
    end
    r = find(Sim == max(Sim));
    R(5,i) = r;
    if r == 5
       T = T+1;
    end
    
    D(i,1) = T/5;    
    
end

Accuracy = mean(D)

% figure
% plot(Ref(:,1),'.b')
% hold on
% plot(Ref(:,2),'.r')

