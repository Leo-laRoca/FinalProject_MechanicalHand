%movimentação - mecanismo de antiparalelogramo
clc
clear all
close all

%h0=4.84;
%w=30;
%l=85.75;
%h=sqrt(l^2-w^2);
w=10;
h=35;
h0=3.5;
l=sqrt(w^2+h^2);

a=(l/2)^2;
b=(h/2)^2;
x=-14.5:0.001:14.5;
y=sqrt((a*b-b*x.^2)/a);


phi=atan(x./(y+h0));

r=x./sin(phi);


phi2=-ang(45):0.01:ang(45);
A=(4+h^2*tan(phi2).^2)./(h^2*tan(phi2).^2);
B=-8*h./(h^2*tan(phi2));
C=4*h0^2/h^2-l^2;
x2=(-B-sqrt(A.^2-4.*A.*C))./(2*A);
r2=x2./sin(phi2);


plot(phi,r,'b','LineWidth',2)
hold on
scatter(phi2,r2,'g')
grid
xlim([-ang(45) ang(45)])
ylim([19 22])
xlabel('\phi [graus]','FontSize', 20)
ylabel('r(\phi) [mm]','FontSize', 20)
xticks([-ang(45) -ang(30) -ang(15) 0 ang(15) ang(30) ang(45)])
xticklabels({'-45°','-30º','-15º','0°','15°','30°','45°'})
a = get(gca,'XTickLabel');  
set(gca,'XTickLabel',a,'fontsize',12,'FontWeight','bold')

