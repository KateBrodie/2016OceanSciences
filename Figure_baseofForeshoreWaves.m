%Ocean Sciences 2016 Plots
%Investigating wave parameters at the base of the foreshore

%% Figure - Base of Foreshore Wave Parameters
%subplot 1 - sea/swell & infragravity wave height at base of foreshore
figure(1)
subplot(3,1,1)
p=plot(1:654,HSig_basefs,1:654,HSin_basefs);hold on;
plot([45 45],[0 1.5],[523 523],[0 1.5],'color','k','linewidth',2)
p(1).LineWidth=1.5;
p(2).LineWidth=1.5;
set(gca,'fontsize',14)
xlim([0 654]);
ylabel('Significant Wave Height (m)','fontsize',14) % left y-axis
legend('Infragravity','Sea/Swell')

%subplot 2 - gamma and tides
subplot(3,1,2)
[hAx1,hLine1,hLine2]=plotyy(1:654,gamma_basefs,1:654,tides_laser_mean);
legend('Gamma','Still Water Level')
hold on;
plot([45 45],[0 6],[523 523],[0 6],'color','k','linewidth',2)
hLine1.LineWidth = 1.5;
hLine2.LineWidth = 1.5;
%hLine2.LineStyle = '--';
set(hAx1(1),'fontsize',14,'xLim',[0 654],'ylim',[1 5]);
set(hAx1(2),'fontsize',14,'xLim',[0 654]);
ylabel(hAx1(1),'Gamma','fontsize',14) % left y-axis
ylabel(hAx1(2),'Water Level (m)','fontsize',14) % right y-axis


%subplot 3 - skewness and asymmetry
subplot(3,1,3)
p=plot(1:654,Hskew_basefs,1:654,-Hasym_basefs);
hold on;
plot([45 45],[-0.5 10],[523 523],[-0.5 10],'color','k','linewidth',2)
p(1).LineWidth=1.5;
p(2).LineWidth=1.5;
set(gca,'fontsize',14)
xlim([0 654]);
ylim([-0.5 10])
ylabel('Skewness/Asymmetry','fontsize',14) % left y-axis
xlabel('Collection # (1 ~ 1 hr)','fontsize',14)
legend('Skewness','Asymmetry')
