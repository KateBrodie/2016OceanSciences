%2016 Ocean Sciences Prep

%event figures
figure
subplot(3,1,1)
[hAx,hLine1,hLine2]=plotyy(xi,Fs_mean_LowAmpLongT,xi,Hs_mean_LowAmpLongT);
hLine1.LineWidth = 2;
hLine2.LineWidth = 2;
hold(hAx(1),'on');
hold(hAx(2),'on');
hWL=plot(hAx(1),xi,WL_mean_LowAmpLongT,'k','linewidth',2);
hLARC1=plot(profile_20110912.xs-54,profile_20110912.z,'b--','linewidth',1);
hLARC2=plot(profile_20110930.xs-54,profile_20110930.z,'b','linewidth',1);
plot(hAx(1),xi,Fs_mean_LowAmpLongT+Fs_std_LowAmpLongT,'b:','linewidth',1);
plot(hAx(1),xi,Fs_mean_LowAmpLongT-Fs_std_LowAmpLongT,'b:','linewidth',1);
plot(hAx(1),xi,WL_mean_LowAmpLongT+WL_std_LowAmpLongT,'k:','linewidth',1);
plot(hAx(1),xi,WL_mean_LowAmpLongT-WL_std_LowAmpLongT,'k:','linewidth',1);
plot(hAx(2),xi,Hs_mean_LowAmpLongT+Hs_std_LowAmpLongT,'r:','linewidth',1);
plot(hAx(2),xi,Hs_mean_LowAmpLongT-Hs_std_LowAmpLongT,'r:','linewidth',1);
ylabel(hAx(1),{'Elevation'; '(m, NAVD88)'},'fontsize',14) % left y-axis
ylabel(hAx(2),{'Significant'; 'Wave Height (m)'},'fontsize',14) % right y-axis
set(hAx(1),'fontsize',14,'xLim',[25 100],'ylim',[-3 4]);
set(hAx(2),'fontsize',14,'xLim',[25 100],'yLim',[0 1.5]);
hAx(1).YTick = [-3 -2 -1 0 1 2 3 4];
hAx(2).YTick = [0 0.5 1 1.5];
title({'Small 8-10s Waves';'09/20 - 09/23'})
legend([hLine1; hLine2; hWL; hLARC1; hLARC2],'Foreshore +/- 1\sigma',...
    'Hs +/- 1\sigma','Mean Water Level +/- 1\sigma','LARC Survey 09/12',...
    'LARC Survey 09/30','fontsize',10);

subplot(3,1,2)
plot(xi,HsIN_mean_LowAmpLongT,'m','linewidth',2);
hold on
plot(xi,HsIG_mean_LowAmpLongT,'c','linewidth',2);
plot(xi,HsIN_mean_LowAmpLongT+HsIN_std_LowAmpLongT,'m:','linewidth',1);
plot(xi,HsIN_mean_LowAmpLongT-HsIN_std_LowAmpLongT,'m:','linewidth',1);
plot(xi,HsIG_mean_LowAmpLongT+HsIG_std_LowAmpLongT,'c:','linewidth',1);
plot(xi,HsIG_mean_LowAmpLongT-HsIG_std_LowAmpLongT,'c:','linewidth',1);
set(gca,'fontsize',14,'xLim',[25 100],'ylim',[0 1]);
ylabel('m','fontsize',14)
legend('Hs_{sea/swell} +/- 1\sigma','Hs_{Infragravity} +/- 1\sigma')

subplot(3,1,3)
plot(xi,Skew_mean_LowAmpLongT,'r','linewidth',2);
hold on
plot(xi,Asym_mean_LowAmpLongT,'b','linewidth',2);
plot(xi,Skew_mean_LowAmpLongT+Skew_std_LowAmpLongT,'r:','linewidth',1);
plot(xi,Skew_mean_LowAmpLongT-Skew_std_LowAmpLongT,'r:','linewidth',1);
plot(xi,Asym_mean_LowAmpLongT+Asym_std_LowAmpLongT,'b:','linewidth',1);
plot(xi,Asym_mean_LowAmpLongT-Asym_std_LowAmpLongT,'b:','linewidth',1);
set(gca,'fontsize',14,'xLim',[25 100],'ylim',[0 2.5]);
%ylabel('m','fontsize',14)
legend('Wave Skewness +/- 1\sigma','Wave Asymmetry +/- 1\sigma');
xlabel('Cross-Shore Distance from Lidar (m)','fontsize',14)
ylabel('Wave Asymmetry/Skewness','fontsize',14)