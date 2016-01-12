%Ocean Sciences 2016 Plots
%Plots complete wave time-series & also segments where we had lidar data
%Label wave events in Powerpoint

%% Figure 1A
figure(1)
subplot(2,1,1)
plot(wavedatawac04.time,wavedatawac04.hs, 'linewidth',2);
datetick('x','mmm-dd','keepticks')
hold on
plot([wavedatawac04.time(47) wavedatawac04.time(47)],[0 6],'c',[wavedatawac04.time(111) wavedatawac04.time(111)],[0 6],'c','linewidth',2)
plot([wavedatawac04.time(330) wavedatawac04.time(330)],[0 6],'m',[wavedatawac04.time(860) wavedatawac04.time(860)],[0 6],'m','linewidth',2)
plot([wavedatawac04.time(1500) wavedatawac04.time(1500)],[0 6],'g',[wavedatawac04.time(1750) wavedatawac04.time(1750)],[0 6],'g','linewidth',2)
xlim([wavedatawac04.time(1) wavedatawac04.time(end)])
ylabel('Significant Wave Height (m)','fontsize',14) % left y-axis
xlabel('Date in 2011')
set(gca,'fontsize',14)
title('11 m AWAC Wave Height')

subplot(2,1,2)
plot(1:45,Hs_11mAWAC(1:45),'c','linewidth',2);hold on;
plot(46:523,Hs_11mAWAC(46:523),'m','linewidth',2);
plot(524:654,Hs_11mAWAC(524:654),'g','linewidth',2);
plot([45 45],[0 5],[523 523],[0 5],'color','k','linewidth',2)
ylabel('Significant Wave Height (m)','fontsize',14) % left y-axis
xlabel('Collection # (1 ~ 1 hr)','fontsize',14)
xlim([0 654])
set(gca,'fontsize',14)
title('11 m AWAC Wave Height - Lidar Collect Times')