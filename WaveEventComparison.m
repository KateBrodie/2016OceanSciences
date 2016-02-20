%Wave Event Comparison Figures

%Wave Height
figure
subplot(4,1,1)
hold on
plot(profile_20110829.xs-54,profile_20110829.z,'b:','linewidth',2)
plot(xi,Fs_mean_Katia,'b','linewidth',2)
plot(profile_20110912.xs-54,profile_20110912.z,'c:','linewidth',2)
plot(xi,Fs_mean_Maria,'c','linewidth',2)
plot(xi,Fs_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,Fs_mean_LowAmpLongT,'r','linewidth',2)
plot(profile_20110930.xs-54,profile_20110930.z,'m:','linewidth',2)
plot(profile_20111017.xs-54,profile_20111017.z,'k:','linewidth',2)
plot(xi,Fs_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 200],'ylim',[-4 3]);
hLegend=legend('LARC 08/29','Lidar Katia 9/7-11','LARC 09/12','Lidar Maria 9/17-20',...
    'Lidar Small 8-10s Waves 9/20-23',...
    'Lidar Small 10-12s Waves 9/25-29','LARC 09/30','LARC 10/17',...
    'Lidar NorEasters 10/28-11/05')
set(hLegend,'fontsize',10)
title('Bathymetry')

subplot(4,1,2)
%significant wave height
plot(xi,Hs_mean_Katia,'b','linewidth',2)
hold on
plot(xi,Hs_mean_Maria,'c','linewidth',2)
plot(xi,Hs_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,Hs_mean_LowAmpLongT,'r','linewidth',2)
plot(xi,Hs_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 100],'ylim',[0 1.25]);
title('Hs_{total}')
ylabel('(m)','fontsize',14)

subplot(4,1,3)
%significant wave height
plot(xi,HsIN_mean_Katia,'b','linewidth',2)
hold on
plot(xi,HsIN_mean_Maria,'c','linewidth',2)
plot(xi,HsIN_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,HsIN_mean_LowAmpLongT,'r','linewidth',2)
plot(xi,HsIN_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 100],'ylim',[0 1.25]);
title('Hs_{Sea/Swell}')
ylabel('(m)','fontsize',14)

subplot(4,1,4)
%significant wave height
plot(xi,HsIG_mean_Katia,'b','linewidth',2)
hold on
plot(xi,HsIG_mean_Maria,'c','linewidth',2)
plot(xi,HsIG_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,HsIG_mean_LowAmpLongT,'r','linewidth',2)
plot(xi,HsIG_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 100],'ylim',[0 1.25]);
title('Hs_{Infragravity}')
ylabel('(m)','fontsize',14)

%Wave Shape
figure
subplot(3,1,1)
hold on
plot(profile_20110829.xs-54,profile_20110829.z,'b:','linewidth',2)
plot(xi,Fs_mean_Katia,'b','linewidth',2)
plot(profile_20110912.xs-54,profile_20110912.z,'c:','linewidth',2)
plot(xi,Fs_mean_Maria,'c','linewidth',2)
plot(xi,Fs_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,Fs_mean_LowAmpLongT,'r','linewidth',2)
plot(profile_20110930.xs-54,profile_20110930.z,'m:','linewidth',2)
plot(profile_20111017.xs-54,profile_20111017.z,'k:','linewidth',2)
plot(xi,Fs_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 200],'ylim',[-4 3]);
hLegend=legend('LARC 08/29','Lidar Katia 9/7-11','LARC 09/12','Lidar Maria 9/17-20',...
    'Lidar Small 8-10s Waves 9/20-23',...
    'Lidar Small 10-12s Waves 9/25-29','LARC 09/30','LARC 10/17',...
    'Lidar NorEasters 10/28-11/05')
set(hLegend,'fontsize',10)
title('Bathymetry')

subplot(3,1,2)
%Wave Asymetry
plot(xi,Asym_mean_Katia,'b','linewidth',2)
hold on
plot(xi,Asym_mean_Maria,'c','linewidth',2)
plot(xi,Asym_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,Asym_mean_LowAmpLongT,'r','linewidth',2)
plot(xi,Asym_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 100],'ylim',[-0.25 1.25]);
title('Wave Asymmetry')
ylabel('(m)','fontsize',14)

subplot(3,1,3)
%Wave Skewness
plot(xi,Skew_mean_Katia,'b','linewidth',2)
hold on
plot(xi,Skew_mean_Maria,'c','linewidth',2)
plot(xi,Skew_mean_LowAmpMedT,'m','linewidth',2)
plot(xi,Skew_mean_LowAmpLongT,'r','linewidth',2)
plot(xi,Skew_mean_NorEaster,'k','linewidth',2)
set(gca,'fontsize',14,'xLim',[10 100],'ylim',[0 3.5]);
title('Wave Skewness')
ylabel('(m)','fontsize',14)