%Desvio de 45° em cosenos
clc
clear all
close all

x=-pi/2:0.001:pi/2;

y1=3*cos(x).^2; %intensidade de luz/voltagem no canal 1

y2=3*cos(x+pi/4).^2; %intensidade de luz/voltagem no canal 2


delta1=acos(sqrt(y1/3));
delta2=acos(sqrt(y2/3));



dy2=-2*sin(x+pi/4).*cos(x+pi/4);

w1=(1-(abs(y1-1.5)./((abs(y1-1.5))+abs(y2-1.5)))).^1;
w2=1-w1;

angx=w1.*delta1 + w2.*delta2;

angxx=ones(1,length(delta1))*-pi/2;
for i=1:length(delta1)
    if delta2(i)<pi/4
       angxx(1,i)=-delta1(i);
    elseif delta2(i)>pi/4
        angxx(1,i)=delta1(i);
    end
end


figure(1)
plot(x,y1,'LineWidth',2)
hold on
plot(x,y2,'LineWidth',2)
xline(0,'--r');
xlim([-pi/2 pi/2])
xticks(-pi/2:pi/4:pi/2)
xticklabels({'-90°','-45º','0°','45°','90°'})
xlabel('Ângulo da haste')
ylabel('Voltagem [volts]')
ylim([0 3])
grid
legend('Canal 1','Canal 2')


figure(2)
plot(x,angxx(1,:),'k','LineWidth',2)
hold on
xlim([-pi/2 pi/2])
ylim([-pi/2 pi/2])
xline(0,'--r');
xlim([-pi/2 pi/2])
xticks(-pi/2:pi/4:pi/2)
yticks(-pi/2:pi/4:pi/2)
xticklabels({'-90°','-45º','0°','45°','90°'})
yticklabels({'-90°','-45º','0°','45°','90°'})
xlabel('Ângulo da haste')
ylabel('Ângulo resultante do eixo')
grid

figure(3)
plot(x,delta1,'LineWidth',2)
hold on
plot(x,delta2,'LineWidth',2)
xlim([-pi/2 pi/2])
ylim([0 pi/2])
xticks(-pi/2:pi/4:pi/2)
yticks(0:pi/18:pi/2)
xline(0,'--r');
yline(pi/4,'--r');
xticklabels({'-90°','-45º','0°','45°','90°'})
yticklabels({'0°','10°','20°','30°','40°','50°','60°','70°','80°','90°'})
xlabel('Ângulo da haste')
ylabel('Ângulo deduzido por cada canal')
legend('Canal 1','Canal 2','Location','SouthEast')
grid
