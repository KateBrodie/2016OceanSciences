figure

subplot(3,1,1)
[hAx,hLine1,hLine2]=plotyy(coredat.xsgrid(91:291)-64,filt2d(sciencedat.HS(91:291),...
    'avg',1,10),coredat.xsgrid(91:291)-64,filt2d(sciencedat.skew(91:291),'avg',1,10));
hLine1.LineWidth = 2;
hLine2.LineWidth = 2;
hold(hAx(1),'on');
hold(hAx(2),'on');
hAsym=plot(hAx(1),coredat.xsgrid(91:291)-64,filt2d(-sciencedat.asym(91:291),'avg',1,10),'m','linewidth',2);
set(hAx(2),'fontsize',14,'yLim',[0 2],'xLim',[15 100])
set(hAx(1),'fontsize',14,'yLim',[-0.25 1.25],'xLim',[15 100])
title('CRAB Lidar - 1m Waves at 6s')
hAx(1).YTick = [0 0.5 1];
hAx(2).YTick = [0 1 2];
legend([hLine1;hAsym;hLine2],'Hs','Asymmetry','Skewness')

subplot(3,1,2)
[hAx,hLine1,hLine2]=plotyy(xi,filt2d(Hs_mean_LowAmpLongT,'avg',1,10),xi,filt2d(Skew_mean_LowAmpLongT,'avg',1,10));
hLine1.LineWidth = 2;
hLine2.LineWidth = 2;
hold(hAx(1),'on');
hold(hAx(2),'on');
plot(hAx(1),xi,filt2d(Asym_mean_LowAmpLongT,'avg',1,10),'m','linewidth',2)
set(hAx(2),'fontsize',14,'yLim',[0 2],'xLim',[15 100])
set(hAx(1),'fontsize',14,'yLim',[-0.25 1.25],'xLim',[15 100])
title('Dune Lidar - 1m Waves at 10-12s')
ylabel('Hs (m) & Asymmetry','fontsize',14)
ylabel(hAx(2),'Skewness','fontsize',14)
hAx(1).YTick = [0 0.5 1];
hAx(2).YTick = [0 1 2];

subplot(3,1,3)
[hAx,hLine1,hLine2]=plotyy(xi,Hs_mean_Maria,xi,filt2d(Skew_mean_Maria,'avg',1,10));
hLine1.LineWidth = 2;
hLine2.LineWidth = 2;
hold(hAx(1),'on');
hold(hAx(2),'on');
plot(hAx(1),xi,filt2d(Asym_mean_Maria,'avg',1,10),'m','linewidth',2)
set(hAx(2),'fontsize',14,'yLim',[0 2],'xLim',[15 100])
set(hAx(1),'fontsize',14,'yLim',[-0.25 1.25],'xLim',[15 100])
title('Dune Lidar - TS Maria: 2-3m Waves at 8s')
hAx(1).YTick = [0 0.5 1];
hAx(2).YTick = [0 1 2];
xlabel('Distance Cross-Shore (m)')

