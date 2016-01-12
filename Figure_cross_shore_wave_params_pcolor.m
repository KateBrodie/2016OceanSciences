%Ocean Sciences 2016 Plots
%Investigating cross-shore variations in wave parameters through time (i.e.
%lots of pcolor timestacks!)

%% Figure 1 - Wave Height Pcolor Plots
figure(1)
%subplot 1 - cross-shore variations in total significant wave height
subplot(3,1,1)
pcolor(1:654,xi',Hs_75perts');shading flat;colormap('jet')
set(gca,'fontsize',14);
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
caxis([0.2 2]);
hold on
plot([45 45],[20 120],[523 523],[20 120],'color','k','linewidth',2)
ylim([20 120])
title('Significant Wave Height')

%subplot 2 - cross-shore variations in infragravity wave height
subplot(3,1,2)
pcolor(1:654,xi',HSig_75perts');shading flat;colormap('jet')
set(gca,'fontsize',14);
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
caxis([0.2 1.25]);
hold on
plot([45 45],[20 120],[523 523],[20 120],'color','k','linewidth',2)
ylim([20 120])
title('Significant Infragravity Wave Height')
ylabel('Distance Cross-Shore (m)','fontsize',14)

%subplot 3 - cross-shore variations in sea/swell wave height
subplot(3,1,3)
pcolor(1:654,xi',HSin_75perts');shading flat;colormap('jet')
set(gca,'fontsize',14);
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
caxis([0.2 1.25]);
hold on
plot([45 45],[20 120],[523 523],[20 120],'color','k','linewidth',2)
ylim([20 120])
title('Significant Sea/Swell Wave Height')
xlabel('Collection # (1 ~ 1 hr)','fontsize',14)

%% Figure 2 - Wave Shape Pcolor Plots
figure(2)
%subplot 1 - cross-shore variations in total significant wave height
subplot(3,1,1)
pcolor(1:654,xi',Hs_75perts');shading flat;colormap('jet')
set(gca,'fontsize',14);
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
caxis([0.2 2]);
hold on
plot([45 45],[20 120],[523 523],[20 120],'color','k','linewidth',2)
ylim([20 120])
title('Significant Wave Height')

%subplot 2 - cross-shore variations in infragravity wave height
subplot(3,1,2)
pcolor(1:654,xi',Hskew');shading flat;colormap('jet')
set(gca,'fontsize',14);
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
caxis([-0.5 2]);
hold on
plot([45 45],[20 120],[523 523],[20 120],'color','k','linewidth',2)
ylim([20 120])
title('Wave Skewness: + = peaked crests, flatter troughs')
ylabel('Distance Cross-Shore (m)','fontsize',14)

%subplot 3 - cross-shore variations in sea/swell wave height
subplot(3,1,3)
pcolor(1:654,xi',-Hasym');shading flat;colormap('jet')
set(gca,'fontsize',14);
c = colorbar('eastoutside');
c.Label.String = '(m)';
c.Label.FontSize = 14;
caxis([-0.5 1.5]);
hold on
plot([45 45],[20 120],[523 523],[20 120],'color','k','linewidth',2)
ylim([20 120])
title('Wave Asymmetry: + = steep fronts, flatter backs')
xlabel('Collection # (1 ~ 1 hr)','fontsize',14)