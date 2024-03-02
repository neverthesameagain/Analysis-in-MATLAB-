
R=10^4*[1,1,1]
C=10^(-6)*[1,1]
roots=M_file(R,C);
disp(roots);

function m=M_file(R,C)
    %Using Denominator of response equation to find out roots and thereby
    %zeros.
    m=roots([1,(1/C(1))*((1/R(1))+(1/R(2))+(1/R(3))),1/(R(1)*R(2)*C(1)*C(2))]);
    
end

