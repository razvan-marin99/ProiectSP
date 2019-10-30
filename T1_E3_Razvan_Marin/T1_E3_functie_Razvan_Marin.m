function [medie,a_squared,b_squared,trans] = func(z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = real(z); %extragem partea reala
y =imag(z);  %extragem partea imaginara
medie = mean(x)
a_squared = power(x,2)
b_squared = power(y,2)
trans = z*z'


end