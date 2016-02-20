%z210 data is noisy with spray

%grid into 10cm bins using roundgrid fun
Zmatfilt=nan(size(griddat.zGrid));
Zmatstd=nan(size(griddat.zGrid));
Zmatmin=nan(size(griddat.zGrid));

for i=1:6000
Zmatfilt(i,:)=roundgridfun(ptdat.XSmat(i,~isnan(ptdat.XSmat(i,:))),ptdat.Zmat(i,~isnan(ptdat.XSmat(i,:))),coredat.xsgrid,@nanmedian);
Zmatstd(i,:)=roundgridfun(ptdat.XSmat(i,~isnan(ptdat.XSmat(i,:))),ptdat.Zmat(i,~isnan(ptdat.XSmat(i,:))),coredat.xsgrid,@nanstd);
Zmatmin(i,:)=roundgridfun(ptdat.XSmat(i,~isnan(ptdat.XSmat(i,:))),ptdat.Zmat(i,~isnan(ptdat.XSmat(i,:))),coredat.xsgrid,@nanmin);
end

%if there's a high standard deviation in values in a bin, use the minumum
%value in that bin

Zmatfilt(Zmatstd>0.1)=Zmatmin(Zmatstd>0.1);

%This still leaves a little spray
%Difference through time and look for big jumps 
jump_thresh = 0.6; %(roughly 6*standard deviation in difference)

Zmatdiff=[diff(Zmatfilt); ones(1,length(coredat.xsgrid))];
Zmatfilt(Zmatdiff>jump_thresh)=nan;
%Zmatfilt(Zmatdiff<-jump_thresh)=nan;

Zmatfilt(Zmatfilt<-1.5)=nan;

griddat.zFilt=Zmatfilt;
sciencedat.HS=4*nanstd(griddat.zFilt);
sciencedat.meanWL=nanmean(griddat.zFilt);
for i=1:length(coredat.xsgrid)
[sciencedat.skew(i),sciencedat.asym(i),~]=calcSkewAsym(interp1nan(1:5999,griddat.zFilt(:,i),1:5999));
end

%histogram elevations
coredat.zgrid=-1.25:0.02:1.25;
for i=1:length(coredat.xsgrid)
griddat.histogram(:,i)=hist(griddat.zFilt(:,i),coredat.zgrid);
end
griddat.histogram(griddat.histogram==0)=nan;

figure;pcolor(coredat.xsgrid,coredat.zgrid',griddat.histogram);shading flat
hold on
plot(coredat.xsgrid,sciencedat.HS,'r','linewidth',3)
plot(coredat.xsgrid,sciencedat.meanWL,'m','linewidth',3)
legend('Histogram of Sea Surface Elevations','Significant Wave Height', 'Mean Water Level')
xlim([95 119])
xlabel('FRF Cross-Shore Coordinate (m)')
ylabel('Elevation/Hs (m)')

figure;plot(coredat.xsgrid,sciencedat.skew,'linewidth',3);hold on
plot(coredat.xsgrid,-sciencedat.asym,'linewidth',3)
legend('Skewness','Asymmetry')
xlim([95 119])
xlabel('FRF Cross-Shore Coordinate (m)')
ylabel('Skewness/Asymmetry')
