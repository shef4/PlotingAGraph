% Ashiru
% Matlab Homework 2
clear all;
close all;
clc

%grab data from a text file
A = dlmread('STEP_MatLab_HW_2_Data.txt','\t',1);

%set 1st column to t(time) and 2nd column to a(acceleration)
t=A(:,1);
a=A(:,2);

%set counter x to equal  1
x= 1;
while (x<=31)
    if (x==1)
        %Set initial value to 0
        v(1)=0;
    else
        %set take accelration and manipulate to equal valocity
        v(x) = v(x-1)+(a(x)*(t(x)-t(x-1)));
    end
    %increase counter
    x= x+1;
end

%plot graph set lables and add grid
figure
plot(t,v,'-*');
xlabel('Time(s)');
ylabel('Verlocity (m/s)');
grid('on');
