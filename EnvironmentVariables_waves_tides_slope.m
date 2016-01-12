%Ocean Sciences 2016 Plots
%Investigating relationships between inner surf-zone wave shape and beach
%morphology

%% Figure 1 - Environmental Variables
%subplot 1 - wave height and period vs time
figure(1)
subplot(3,1,1)
[hAx1,hLine1,hLine2]=plotyy(1:654,Hs_11mAWAC,1:654,Tp_11mAWAC);
hLine1.LineWidth = 2;
hLine2.LineWidth = 2;
hLine2.LineStyle = ':';
hold on
plot([45 45],[0 5],[523 523],[0 5],'color','k','linewidth',2)
ylabel(hAx1(1),{'Significant'; 'Wave Height (m)'},'fontsize',14) % left y-axis
ylabel(hAx1(2),'Peak Period (s)','fontsize',14) % right y-axis
set(hAx1(1),'fontsize',14,'xLim',[0 654]);
set(hAx1(2),'fontsize',14,'xLim',[0 654]);
hAx1(1).YTick = [0 1 2 3 4 5];
hAx1(2).YTick = [0 4 8 12 16 20];
title('11 m AWAC Wave Height & Period')

%subplot 2 - tide and beach slope
subplot(3,1,2)
[hAx2,hLine1,hLine2]=plotyy(1:654,tides_laser_mean,1:654,-slope);
hLine1.LineWidth = 2;
hLine2.LineWidth = 2;
hLine2.LineStyle = ':';
hold on
plot([45 45],[-1 1],[523 523],[-1 1],'color','k','linewidth',2)
ylabel(hAx2(1),{'Water Level (m)'},'fontsize',14) % left y-axis
ylabel(hAx2(2),'Foreshore Slope','fontsize',14) % right y-axis
set(hAx2(1),'fontsize',14,'yLim',[-1 1],'xLim',[0 654]);
set(hAx2(2),'fontsize',14,'yLim',[0 0.2],'xLim',[0 654]);
hAx2(1).YTick = [-1;-0.5; 0; 0.5; 1];
hAx2(2).YTick = [0; 0.05; 0.1; 0.15; 0.2];
title('Tides and Foreshore Slope')

%subplot 3 - cross-shore slope
subplot(3,1,3)
hAx3=pcolor(1:654,xi(1:end-1)',-Fs_grad');shading flat;colormap('jet')
set(gca,'fontsize',14)
c = colorbar('eastoutside');
c.Label.String = 'Slope';
c.Label.FontSize = 14;
hold on
plot([45 45],[10 45],[523 523],[10 45],'color','k','linewidth',2)
ylim([10 45])
xlim([0 654]);
caxis([0 0.2])
ylabel('Distance Cross-Shore (m)','fontsize',14)
xlabel('Collection # (1 ~ 1 hr)','fontsize',14)
title('Cross-Shore Slope','fontsize',14)
