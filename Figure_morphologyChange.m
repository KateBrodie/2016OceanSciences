%Ocean Sciences 2016 Plots
%Investigating Morphology Change

%% Figure - Plot Morphology Change

%subplot 1 - Elevation change from start of each segment
figure(1)
subplot(3,1,1)
pcolor(1:654,xi',(Fs-Fs_bases)');shading flat
colormap(map)
caxis([-0.8 0.8])
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
hold on
plot([45 45],[0 40],[523 523],[0 40],'color','k','linewidth',2);
set(gca,'fontsize',14)
ylim([0 40]);
xlim([0 654]);
title('Elevation change since start of each segment')

%subplot 2 - Hourly Elevation change
subplot(3,1,2)
pcolor(1:653,xi',(diff(Fs))');shading flat
colormap(map)
caxis([-0.2 0.2])
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
hold on
plot([45 45],[0 40],[523 523],[0 40],'color','k','linewidth',2);
set(gca,'fontsize',14)
ylim([0 40]);
xlim([0 654]);
title('Hourly Elevation Change')
ylabel('Distance Cross-Shore (m)','fontsize',14)

%subplot 3 - Elevations extracted at two locations through time
subplot(3,1,3)
plot(1:654,Fs(:,200),1:654,Fs(:,300),'linewidth',2);
hold on
plot([45 45],[-0.5 2.5],[523 523],[-0.5 2.5],'color','k','linewidth',2);
set(gca,'fontsize',14)
xlim([0 654])
ylim([-0.5 2.5])
title('Elevation at constant cross-shore location')
xlabel('Collection # (1 ~ 1 hr)','fontsize',14)
ylabel('Elevation (m)','fontsize',14)
legend('Cross-shore = 20m', 'Cross-shore = 30m')