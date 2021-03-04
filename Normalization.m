function a_Normalized = Normalization(a)

n = size(a,1);
for i = 1:n
    a_Normalized(i,:) = (a(i,:) - mean(a(i,:))) / (std(a(i,:)));
end
end



