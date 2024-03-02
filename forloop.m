Rx=10^4 *[0.9,1,1.1];
Cx=10^(-6)*[0.75,1,1.25];
%Defining the values from given inputs with error margain.
R1=Rx(1);
R2=Rx(2);
R3=Rx(3);
C1=Cx(1);
C2=Cx(2);
all_roots = [];
c=0;

for i =1:3
    for j=1:3
        for k=1:3
            for l=1:3
                for m=1:3
                    %Making the input as per required format of function.
                    R=[Rx(i), Rx(j),Rx(k)];
                    C=[Cx(l),Cx(m)];
                    %Counting number of ways
                    c=c+1;
                    %Executing the function
                    roots=M_file(R,C);
                    all_roots = [all_roots; roots];
                    %writing the roots
                    disp(roots);
                    %Writing imaginary part of roots 
                    disp(imag(roots));
                  
                end
            end
        end
    end
end
%Displaying number of permutations
disp(c);



% Plotting all roots on a single figure
figure;
plot(real(all_roots), imag(all_roots), 'o');
plot(1,2);
xlabel('Real Component');
ylabel('Imaginary Component');
title('Characteristic Roots of OpAmp Circuit');
%plotting real and imag parts on the axes
plot(real(all_roots), imag(all_roots), 'o');
xlabel('Real Component');
ylabel('Imaginary Component');
title('Characteristic Roots of Op-Amp Circuit');

% Marking the minimum and maximum values
min_real = min(real(all_roots));
max_real = max(real(all_roots));
min_imag = min(imag(all_roots));
max_imag = max(imag(all_roots));

hold on;
plot([min_real, max_real], [0, 0], 'k--', 'LineWidth', 2); % X-axis
plot([0, 0], [min_imag, max_imag], 'k--', 'LineWidth', 2); % Y-axis
scatter([min_real, max_real], [0, 0], 100, 'ro', 'filled'); % Mark min and max on X-axis
scatter([0, 0], [min_imag, max_imag], 100, 'bx', 'filled'); % Mark min and max on Y-axis
hold off;
legend('Roots', 'X-axis', 'Y-axis', 'Min/Max');
