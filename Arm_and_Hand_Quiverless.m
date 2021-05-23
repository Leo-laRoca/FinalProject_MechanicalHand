%Arm and Hand all together!!
%Assemble!
%QUIVERLESS
%------------------------------------------------------------------------------
%Forward Kinematics parameters
aShoulder=0;
aH=30;
aF=27;

%Thumb Dimensions
aHandThumb=4;
aM1=4;
aP1=4;
aD1=3;

%Ring Dimensions
aHandRing=1;
aM4=8.5;
aP4=5;
aI3=3.5;
aD4=2;

%Pinky Dimensions
aHandPinky=2;
aM5=8;
aP5=4;
aI4=2.5;
aD5=2;

%Index Dimensions
aHandIndex=2;
aM2=8.5;
aP2=5;
aI1=3.5;
aD2=2;

%Middle Dimensions
aHandMiddle=0.5;
aM3=8.7;
aP3=6;
aI2=4;
aD3=2;

%Arm and Wrist Angles
thetaHH0= 0;
thetaHH1= 0;
thetaHH2= 0;
thetaE= 5*pi/180;
thetaF= 0;
thetaC0= 0;
thetaC1= 0;

%Thumb Angles
thetaM10= -60*pi/180;
thetaM11= -15*pi/180;
thetaM12= 30*pi/180;
thetaP1= -3*pi/180;
thetaD1= -20*pi/180;

%Ring Angles
thetaK3= 3*pi/180;
thetaM40= 3*pi/180;
thetaM41= -3*pi/180;
thetaP40= -10*pi/180;
thetaP41= 0;
thetaI3= 30*pi/180;
thetaD4= 5*pi/180;

%Pinky Angles
thetaK4= 5*pi/180;
thetaM50= 5*pi/180;
thetaM51= -10*pi/180;
thetaP50= -10*pi/180;
thetaP51= -10*pi/180;
thetaI4= 50*pi/180;
thetaD5= 10*pi/180;

%Index Angles
thetaC1I= 0;
thetaK1= -15*pi/180;
thetaM2= -3*pi/180;
thetaP20= 15*pi/180;
thetaP21= -10*pi/180;
thetaI1= -25*pi/180;
thetaD2= -5*pi/180;

%Middle Angles
thetaC1I2= 0;
thetaK2= -3*pi/180;
thetaM3= 0*pi/180;
thetaP30= 12*pi/180;
thetaP31= 0*pi/180;
thetaI2= -20*pi/180;
thetaD3= -3*pi/180;




%filename = 'Like_Gesture_Frames.gif';

%Transformation Matrices
%to test:
%  thetaM10=-pi/4-105*pi/180*sin(i);
%  thetaM12=35*pi/180+25*pi/180*sin(i);

%Like+P&P gesture
%{
for j=1:2
if j=1
for i=0:0.05:pi/2
 thetaE = ang(115)*sin(i);
 thetaC1 = ang(-30)*sin(i);
 thetaF = ang(5)*sin(i);
 thetaC0 = ang(5)*sin(i);
 thetaHH0 = ang(20)*sin(i);
 thetaHH1 = ang(-45)*sin(i);
 thetaHH2 = ang(10)*sin(i);

 thetaM11 = ang(-50)*sin(i);
 thetaP1 = ang(-2)*sin(i);
 thetaD1 = ang(10)*sin(i);

 thetaP20 = ang(95)*sin(i);
 thetaP30 = ang(95)*sin(i);
 thetaP40 = ang(95)*sin(i);
 thetaP50 = ang(95)*sin(i);

 thetaI1 = ang(95)*sin(i);
 thetaI2 = ang(95)*sin(i);
 thetaI3 = ang(95)*sin(i);
 thetaI4 = ang(95)*sin(i);

 thetaD2 = ang(80)*sin(i);
 thetaD3 = ang(80)*sin(i);
 thetaD4 = ang(80)*sin(i);
 thetaD5 = ang(80)*sin(i);

%}

AHH0= Atrans(thetaHH0,0,aShoulder,pi/2);
AHH1= Atrans(thetaHH1+pi/2, 0,0,pi/2);
AHH2= Atrans(thetaHH2+pi/2,0,aH,0);
AE= Atrans(thetaE+pi/2,0,0,pi/2);
AF= Atrans(thetaF,aF,0,-pi/2);
AC0= Atrans(thetaC0-pi/2,0,1,pi/2);


%Thumb Transformations
AC1= Atrans(thetaC1+pi/2,-aHandThumb,0,pi/2);
AM10= Atrans(thetaM10,0,0,pi/2);
AM11= Atrans(thetaM11+pi/2,0,0,pi/2);
AM12= Atrans(thetaM12,0,aM1,pi/2);
AP1= Atrans(thetaP1,0,aP1,0);
AD1= Atrans(thetaD1,0,aD1,0);

%Ring Transformations
AC1R= Atrans(thetaC1,aHandRing,0,pi/2);
AK3= Atrans(thetaK3,0,0,pi/2);
AM40= Atrans(thetaM40,0,0,pi/2);
AM41= Atrans(thetaM41,0,aM4,pi/2);
AP40= Atrans(thetaP40,0,0,pi/2);
AP41= Atrans(thetaP41,0,aP4,pi/2);
AI3= Atrans(thetaI3,0,aI3,0);
AD4= Atrans(thetaD4,0,aD4,0);

%Pinky Transformations
AC1R2= Atrans(thetaC1,aHandPinky,0,pi/2);
AK4= Atrans(thetaK4,0,0,pi/2);
AM50= Atrans(thetaM50,0,0,pi/2);
AM51= Atrans(thetaM51,0,aM5,pi/2);
AP50= Atrans(thetaP50,0,0,pi/2);
AP51= Atrans(thetaP51,0,aP5,pi/2);
AI4= Atrans(thetaI4,0,aI4,0);
AD5= Atrans(thetaD5,0,aD5,0);

%Index Transformations
AC1I= Atrans(thetaC1I,-aHandIndex,0,pi/2);
AK1= Atrans(thetaK1,0,0,pi/2);
AM2= Atrans(thetaM2,0,aM2,0);
AP20= Atrans(thetaP20,0,0,pi/2);
AP21= Atrans(thetaP21,0,aP2,pi/2);
AI1= Atrans(thetaI1,0,aI1,0);
AD2= Atrans(thetaD2,0,aD2,0);

%Middle Transformations
AC1I2= Atrans(thetaC1I2,-aHandMiddle,0,pi/2);
AK2= Atrans(thetaK2,0,0,pi/2);
AM3= Atrans(thetaM3,0,aM3,0);
AP30= Atrans(thetaP30,0,0,pi/2);
AP31= Atrans(thetaP31,0,aP3,pi/2);
AI2= Atrans(thetaI2,0,aI2,0);
AD3= Atrans(thetaD3,0,aD3,0);


%Points for each joint
%Arm Points
pHH0=AHH0;
pHH1=pHH0*AHH1;
pHH2=pHH1*AHH2;
pE=pHH2*AE;
pF=pE*AF;
pC0=pF*AC0;

%Thumb Points
pC1=pC0*AC1;
pM10=pC1*AM10;
pM11=pM10*AM11;
pM12=pM11*AM12;
pP1=pM12*AP1;
pD1=pP1*AD1;


%Ring Points
PC1R=pC0*AC1R;
pK3=PC1R*AK3;
pM40=pK3*AM40;
pM41=pM40*AM41;
pP40=pM41*AP40;
pP41=pP40*AP41;
pI3=pP41*AI3;
pD4=pI3*AD4;

%Pinky Points
PC1R2=pC0*AC1R2;
pK4=PC1R2*AK4;
pM50=pK4*AM50;
pM51=pM50*AM51;
pP50=pM51*AP50;
pP51=pP50*AP51;
pI4=pP51*AI4;
pD5=pI4*AD5;

%Index Points
pC1I=pC0*AC1I;
pK1=pC1I*AK1;
pM2=pK1*AM2;
pP20=pM2*AP20;
pP21=pP20*AP21;
pI1=pP21*AI1;
pD2=pI1*AD2;


%Middle Points
pC1I2=pC0*AC1I2;
pK2=pC1I2*AK2;
pM3=pK2*AM3;
pP30=pM3*AP30;
pP31=pP30*AP31;
pI2=pP31*AI2;
pD3=pI2*AD3;

%set(gcf, 'Position', get(0, 'Screensize'));
h=figure(1)
scatter3(0,0,0,'r','LineWidth', 5)
hold on

plot3([0 pHH0(1,4)], [0 pHH0(2,4)], [0 pHH0(3,4)],'color','m','LineWidth', 8 );
hold on

plot3([pHH0(1,4) pHH1(1,4)], [pHH0(2,4) pHH1(2,4)], [pHH0(3,4) pHH1(3,4)] ,'m','LineWidth', 8);
hold on

plot3([pHH1(1,4) pHH2(1,4)], [pHH1(2,4) pHH2(2,4)], [pHH1(3,4) pHH2(3,4)] ,'m','LineWidth', 8);
hold on

plot3([pHH2(1,4) pE(1,4)], [pHH2(2,4) pE(2,4)], [pHH2(3,4) pE(3,4)] ,'c','LineWidth', 8);
hold on

plot3([pE(1,4) pF(1,4)], [pE(2,4) pF(2,4)], [pE(3,4) pF(3,4)] ,'c','LineWidth', 8);
hold on

plot3([pF(1,4) pC0(1,4)], [pF(2,4) pC0(2,4)], [pF(3,4) pC0(3,4)] ,'color',[0.8 0.5 0.4],'LineWidth', 8);
hold on

plot3([pC0(1,4) pC1(1,4)], [pC0(2,4) pC1(2,4)], [pC0(3,4) pC1(3,4)] ,'color',[0.8 0.5 0.4],'LineWidth', 8);
hold on

plot3([pC1(1,4) pM10(1,4)], [pC1(2,4) pM10(2,4)], [pC1(3,4) pM10(3,4)] ,'LineWidth', 8);
hold on

plot3([pM10(1,4) pM11(1,4)], [pM10(2,4) pM11(2,4)], [pM10(3,4) pM11(3,4)] ,'LineWidth', 8);
hold on

plot3([pM11(1,4) pM12(1,4)], [pM11(2,4) pM12(2,4)], [pM11(3,4) pM12(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pM12(1,4) pP1(1,4)], [pM12(2,4) pP1(2,4)], [pM12(3,4) pP1(3,4)] ,'y','LineWidth', 8);
hold on

plot3([pP1(1,4) pD1(1,4)], [pP1(2,4) pD1(2,4)], [pP1(3,4) pD1(3,4)] ,'b','LineWidth', 8);
hold on
%Ring Plots -------------------------------------------------------------------------------------------

plot3([pC0(1,4) PC1R(1,4)], [pC0(2,4) PC1R(2,4)], [pC0(3,4) PC1R(3,4)] ,'color',[0.8 0.5 0.4],'LineWidth', 8);
hold on

plot3([PC1R(1,4) pK3(1,4)], [PC1R(2,4) pK3(2,4)], [PC1R(3,4) pK3(3,4)] ,'LineWidth', 8);
hold on

plot3([pK3(1,4) pM40(1,4)], [pK3(2,4) pM40(2,4)], [pK3(3,4) pM40(3,4)] ,'LineWidth', 8);
hold on

plot3([pM40(1,4) pM41(1,4)], [pM40(2,4) pM41(2,4)], [pM40(3,4) pM41(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pM41(1,4) pP40(1,4)], [pM41(2,4) pP40(2,4)], [pM41(3,4) pP40(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pP40(1,4) pP41(1,4)], [pP40(2,4) pP41(2,4)], [pP40(3,4) pP41(3,4)] ,'y','LineWidth', 8);
hold on

plot3([pP41(1,4) pI3(1,4)], [pP41(2,4) pI3(2,4)], [pP41(3,4) pI3(3,4)] ,'m','LineWidth', 8);
hold on

plot3([pI3(1,4) pD4(1,4)], [pI3(2,4) pD4(2,4)], [pI3(3,4) pD4(3,4)] ,'b','LineWidth', 8);
hold on
%Pinky Plots -------------------------------------------------------------------------------------------

plot3([pC0(1,4) PC1R2(1,4)], [pC0(2,4) PC1R2(2,4)], [pC0(3,4) PC1R2(3,4)] ,'color',[0.8 0.5 0.4],'LineWidth', 8);
hold on

plot3([PC1R2(1,4) pK4(1,4)], [PC1R2(2,4) pK4(2,4)], [PC1R2(3,4) pK4(3,4)] ,'LineWidth', 8);
hold on

plot3([pK4(1,4) pM50(1,4)], [pK4(2,4) pM50(2,4)], [pK4(3,4) pM50(3,4)] ,'LineWidth', 8);
hold on

plot3([pM50(1,4) pM51(1,4)], [pM50(2,4) pM51(2,4)], [pM50(3,4) pM51(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pM51(1,4) pP50(1,4)], [pM51(2,4) pP50(2,4)], [pM51(3,4) pP50(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pP50(1,4) pP51(1,4)], [pP50(2,4) pP51(2,4)], [pP50(3,4) pP51(3,4)] ,'y','LineWidth', 8);
hold on

plot3([pP51(1,4) pI4(1,4)], [pP51(2,4) pI4(2,4)], [pP51(3,4) pI4(3,4)] ,'m','LineWidth', 8);
hold on

plot3([pI4(1,4) pD5(1,4)], [pI4(2,4) pD5(2,4)], [pI4(3,4) pD5(3,4)] ,'b','LineWidth', 8);
hold on
%Index Plots 

plot3([pC0(1,4) pC1I(1,4)], [pC0(2,4) pC1I(2,4)], [pC0(3,4) pC1I(3,4)] ,'color',[0.8 0.5 0.4],'LineWidth', 8);
hold on

plot3([pC1I(1,4) pK1(1,4)], [pC1I(2,4) pK1(2,4)], [pC1I(3,4) pK1(3,4)] ,'LineWidth', 8);
hold on

plot3([pK1(1,4) pM2(1,4)], [pK1(2,4) pM2(2,4)], [pK1(3,4) pM2(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pM2(1,4) pP20(1,4)], [pM2(2,4) pP20(2,4)], [pM2(3,4) pP20(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pP20(1,4) pP21(1,4)], [pP20(2,4) pP21(2,4)], [pP20(3,4) pP21(3,4)] ,'y','LineWidth', 8);
hold on

plot3([pP21(1,4) pI1(1,4)], [pP21(2,4) pI1(2,4)], [pP21(3,4) pI1(3,4)] ,'m','LineWidth', 8);
hold on

plot3([pI1(1,4) pD2(1,4)], [pI1(2,4) pD2(2,4)], [pI1(3,4) pD2(3,4)] ,'b','LineWidth', 8);
hold on
%Middle Plots 

plot3([pC0(1,4) pC1I2(1,4)], [pC0(2,4) pC1I2(2,4)], [pC0(3,4) pC1I2(3,4)] ,'color',[0.8 0.5 0.4],'LineWidth', 8);
hold on

plot3([pC1I2(1,4) pK2(1,4)], [pC1I2(2,4) pK2(2,4)], [pC1I2(3,4) pK2(3,4)] ,'LineWidth', 8);
hold on

plot3([pK2(1,4) pM3(1,4)], [pK2(2,4) pM3(2,4)], [pK2(3,4) pM3(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pM3(1,4) pP30(1,4)], [pM3(2,4) pP30(2,4)], [pM3(3,4) pP30(3,4)] ,'k','LineWidth', 8);
hold on

plot3([pP30(1,4) pP31(1,4)], [pP30(2,4) pP31(2,4)], [pP30(3,4) pP31(3,4)] ,'y','LineWidth', 8);
hold on

plot3([pP31(1,4) pI2(1,4)], [pP31(2,4) pI2(2,4)], [pP31(3,4) pI2(3,4)] ,'m','LineWidth', 8);
hold on

plot3([pI2(1,4) pD3(1,4)], [pI2(2,4) pD3(2,4)], [pI2(3,4) pD3(3,4)] ,'b','LineWidth', 8);
hold on
axis equal
xlim([-77 77]);
ylim([-77 20]);
zlim([-77 77]);
xlabel('X');
ylabel('Y');
zlabel('Z');
view([-1 5 -8]);
zoom(2);
ax=gca;
ax.Clipping = 'off';  
set(gca,'visible','off')
set(gcf,'color','w')
set(gcf, 'Position',  [100, 100, 1000, 700])

%hold off
%drawnow
%{
% Capture the plot as an image 
      frame = getframe(h); 
      im = frame2im(frame); 
      [imind,cm] = rgb2ind(im,256); 
      % Write to the GIF File 
      if i == 0 
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf,'DelayTime',0.1); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',0.1); 
      end 
%}
%end
%--------------------------------------------------------------------------------- 