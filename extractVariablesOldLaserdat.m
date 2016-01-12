files=dir('W:\dune_lidar\MatFiles\KateEdit\processed*.mat');

%% Preallocate
%cross-shore variable
xi=1:0.1:150;

% cross-shore profile variables    
Fs=nan(length(files),length(xi)); %foreshore slope
Hs=nan(length(files),length(xi)); %significant wave height
WL_wbed=nan(length(files),length(xi)); %mean water level with the bed
WL=nan(length(files),length(xi)); %mean water level (drybed = nan)
HSig=nan(length(files),length(xi)); %significant infragravity wave height
HSin=nan(length(files),length(xi)); %significant sea/swell (incident) wave height
Hskew=nan(length(files),length(xi)); %wave skewness
Hasym=nan(length(files),length(xi)); %wave assymetry

%single point variables
slope=nan(1,length(files));
R2=nan(1,length(files));
SW=nan(1,length(files));
Rmax=nan(1,length(files));
Sig=nan(1,length(files));
Sin=nan(1,length(files));

%base of the foreshore single point variables
Hs_basefs=nan(1,length(files));
WL_basefs=nan(1,length(files));
Hskew_basefs=nan(1,length(files));
Hasym_basefs=nan(1,length(files));
h_basefs=nan(1,length(files));
ind_basefs=nan(1,length(files));

%time-series variables
Time=nan(length(files),3006);
runupXsPos=nan(length(files),3006);
runupZ=nan(length(files),3006);

ind=0;

%% Extract

for f=1:length(files);
    filename=['W:\dune_lidar\MatFiles\KateEdit\' files(f,1).name];
    disp(['loading: ',filename,' at ',datestr(now)])
    load([filename],'laserdat');

    if f==1
        freq=freqvariable;
    end
    
    if laserdat.runupdat.isgood==1
        ind=ind+1;
        
        if sum(isnan(laserdat.runupdat.indx))>0
            laserdat.runupdat.indx=round(interp1(find(~isnan(laserdat.runupdat.indx)),laserdat.runupdat.indx(~isnan(laserdat.runupdat.indx)),1:length(laserdat.runupdat.indx),'linear','extrap'));
        end
        
        %cross-shore profile variables
        Fs(ind,:)=interp1(laserdat.coredat.range,laserdat.morphdat.meanforeshore,xi);
        Hs(ind,:)=interp1(laserdat.coredat.range, laserdat.wavedat.Hmo,xi);
        WL(ind,:)=interp1(laserdat.coredat.range,laserdat.wldat.mean,xi);
        
        allpts=laserdat.wldat.waterpts;
        allpts(isnan(allpts))=laserdat.morphdat.foreshore(isnan(allpts));
        meanWL_wbed=nanmean(allpts);
        WL_wbed(ind,:)=interp1(laserdat.coredat.range,meanWL_wbed,xi);
        WL_wbed(ind,1:round(min(laserdat.runupdat.indx))-1)=nan;
        
        lim20s=find(freq>0.05,1);
        lim5s=find(freq>0.2,1);
        Eig=4*sqrt(trapz(freq(1:lim20s),laserdat.wavedat.spectraAmp(1:lim20s,:)));
        Ein=4*sqrt(trapz(freq(lim20s:lim5s),laserdat.wavedat.spectraAmp(lim20s:lim5s,:)));
        HSig(ind,:)=interp1(laserdat.wavedat.xpos,Eig,xi);
        HSin(ind,:)=interp1(laserdat.wavedat.xpos,Ein,xi);
        
        [tDim,xsDim]=size(laserdat.wldat.waterpts);
        
        if length(xi)>xsDim
            XSDim=xsDim;
        else
            XSDim=length(xi);
        end
        
        for i=1:XSDim
            %third order moments
            ts=laserdat.wldat.waterpts(:,i);
            if sum(~isnan(ts))>0.75*length(ts)
                ts=interp1nan(1:length(ts),ts,1:length(ts));
                ts(isnan(ts))=nanmean(ts);
                try
                [Hskew(ind,i), Hasym(ind,i), ~]=calcSkewAsym(ts(1:end-1));
                end
            end
        end
                
        %single point variables
        slope(ind)=laserdat.morphdat.fs_slope;
        R2(ind)=laserdat.runupdat.r2per;
        SW(ind)=laserdat.runupdat.swashwidth;
        Rmax(ind)=laserdat.runupdat.max;
        Sig(ind)=laserdat.runupdat.Sig;
        Sin(ind)=laserdat.runupdat.Sin;
        
        %base of the foreshore variables
        ind_basefs(ind)=find(~isnan(laserdat.morphdat.minforeshore),1,'last');
        Hs_basefs(ind)=laserdat.wavedat.Hmo(ind_basefs(ind));
        WL_basefs(ind)=laserdat.wldat.mean(ind_basefs(ind));
        Hskew_basefs(ind)=Hskew(ind,ind_basefs(ind));
        Hasym_basefs(ind)=Hasym(ind,ind_basefs(ind));
        h_basefs(ind)=WL_basefs(ind)-laserdat.morphdat.meanforeshore(ind_basefs(ind));
        
        %time series variables
        Time(ind,1:length(laserdat.coredat.T))=laserdat.coredat.T;
        runupXsPos(ind,1:length(laserdat.coredat.T))=laserdat.coredat.range(round(laserdat.runupdat.indx));
        runupZ(ind,1:length(laserdat.coredat.T))=laserdat.runupdat.zrunup;
        
    end
    
end

clear allpts Eig Ein lim5s lim20s tDim xsDim ind i 