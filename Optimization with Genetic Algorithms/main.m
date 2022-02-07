clear all
close all
clc
x=linspace(0,0.6,50)
y=linspace(0,0.6,50)
[xx,yy] = meshgrid(x,y)

for i=1:length(xx)
    for j=1:length(yy)
        inputvector(1)=xx(i,j);
        inputvector(2)=yy(i,j);
        f(i,j)=ch_stalagmite(inputvector);
    end
end
LB=[0,0];
UB=[0.6,0.6];
num_cases=50;
options=optimoptions('ga');
options=optimoptions('ga', 'Populationsize',200);
tic
for i=1: num_cases
[ inputs_value, function_val ]= ga(@ch_stalagmite, 2, [ ], [], [], [], LB, UB, [], options);
xopt (i)=inputs_value(1);
yopt (i)=inputs_value(2);
fopt(i)=function_val
end
toc

fopt=-fopt

figure(1)
subplot(2,2,1)
hold on
surfc(xx,yy,f)
shading interp
plot3(xopt,yopt,fopt,'marker','o','markersize',5,'markerfacecolor','r')
title('Unbounded Input')
subplot(2,2,3)
plot(fopt)
xlabel('iteration')
ylabel('function maximum')







