clc
clear all
close all

load Part.mat

for i = 1:32
    for j = 1:40
%         a = Part(i).Movie(j).Signal;
        a = Part(i).Movie(j).Normalized_Signal;
        a_symbolic6 = Make_6Symbol(a);
        a_symbolic7 = Make_7Symbol(a);
        a_symbolic8 = Make_8Symbol(a);
        
%         Part(i).Movie(j).Symbolic_six = a_symbolic6;
%         Part(i).Movie(j).Symbolic_seven = a_symbolic7;
%         Part(i).Movie(j).Symbolic_eight = a_symbolic8;

        Part(i).Movie(j).Normalized_Symbolic_six = a_symbolic6;
        Part(i).Movie(j).Normalized_Symbolic_seven = a_symbolic7;
        Part(i).Movie(j).Normalized_Symbolic_eight = a_symbolic8;
        


        clear a 
        
%         a = Part(i).Movie(j).Signal_7680;
%         a_symbolic6 = Make_6Symbol(a);
%         a_symbolic7 = Make_7Symbol(a);
%         a_symbolic8 = Make_8Symbol(a);
%         
%         Part(i).Movie(j).Symbolic_six_7680 = a_symbolic6;
%         Part(i).Movie(j).Symbolic_seven_7680 = a_symbolic7;
%         Part(i).Movie(j).Symbolic_eight_7680 = a_symbolic8;
    end
end


        