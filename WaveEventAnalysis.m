%2016 Ocean Sciences Prep

%average variables for each wave condition

%Katia: indices 46:135
%Maria: indices 246:312
%Low Amp, Med T: 313:384
%Low Amp, Long T: 436:547
%Nor'Easters: 548:654

indKatia=46:135;
indMaria=246:312;
indLowAmpMedT=313:384;
indLowAmpLongT=436:523;
indNorEaster=548:654;

%Katia
[Hs_mean_Katia,Hs_std_Katia]=getMeanStdNoisyData(Hs(indKatia,:),0:0.05:4);
HsIG_mean_Katia=nanmean(HSig(indKatia,:));
HsIG_std_Katia=nanstd(HSig(indKatia,:));
HsIN_mean_Katia=nanmean(HSin(indKatia,:));
HsIN_std_Katia=nanstd(HSin(indKatia,:));
Fs_mean_Katia=nanmean(Fs(indKatia,:));
Fs_std_Katia=nanstd(Fs(indKatia,:));
WL_mean_Katia=nanmean(WL(indKatia,:));
WL_std_Katia=nanstd(WL(indKatia,:));
[Skew_mean_Katia,Skew_std_Katia]=getMeanStdNoisyData(Hskew(indKatia,:),-0.5:0.1:10);
[Asym_mean_Katia,Asym_std_Katia]=getMeanStdNoisyData(-Hasym(indKatia,:),-0.5:0.1:4);


%Maria
[Hs_mean_Maria,Hs_std_Maria]=getMeanStdNoisyData(Hs(indMaria,:),0:0.05:4);
HsIG_mean_Maria=nanmean(HSig(indMaria,:));
HsIG_std_Maria=nanstd(HSig(indMaria,:));
HsIN_mean_Maria=nanmean(HSin(indMaria,:));
HsIN_std_Maria=nanstd(HSin(indMaria,:));
Fs_mean_Maria=nanmean(Fs(indMaria,:));
Fs_std_Maria=nanstd(Fs(indMaria,:));
WL_mean_Maria=nanmean(WL(indMaria,:));
WL_std_Maria=nanstd(WL(indMaria,:));
[Skew_mean_Maria,Skew_std_Maria]=getMeanStdNoisyData(Hskew(indMaria,:),-0.5:0.1:10);
[Asym_mean_Maria,Asym_std_Maria]=getMeanStdNoisyData(-Hasym(indMaria,:),-0.5:0.1:4);

%LowAmpMedT
[Hs_mean_LowAmpMedT,Hs_std_LowAmpMedT]=getMeanStdNoisyData(Hs(indLowAmpMedT,:),0:0.05:4);
HsIG_mean_LowAmpMedT=nanmean(HSig(indLowAmpMedT,:));
HsIG_std_LowAmpMedT=nanstd(HSig(indLowAmpMedT,:));
HsIN_mean_LowAmpMedT=nanmean(HSin(indLowAmpMedT,:));
HsIN_std_LowAmpMedT=nanstd(HSin(indLowAmpMedT,:));
Fs_mean_LowAmpMedT=nanmean(Fs(indLowAmpMedT,:));
Fs_std_LowAmpMedT=nanstd(Fs(indLowAmpMedT,:));
WL_mean_LowAmpMedT=nanmean(WL(indLowAmpMedT,:));
WL_std_LowAmpMedT=nanstd(WL(indLowAmpMedT,:));
[Skew_mean_LowAmpMedT,Skew_std_LowAmpMedT]=getMeanStdNoisyData(Hskew(indLowAmpMedT,:),-0.5:0.1:10);
[Asym_mean_LowAmpMedT,Asym_std_LowAmpMedT]=getMeanStdNoisyData(-Hasym(indLowAmpMedT,:),-0.5:0.1:4);

%LowAmpLongT
[Hs_mean_LowAmpLongT,Hs_std_LowAmpLongT]=getMeanStdNoisyData(Hs(indLowAmpLongT,:),0:0.05:4);
HsIG_mean_LowAmpLongT=nanmean(HSig(indLowAmpLongT,:));
HsIG_std_LowAmpLongT=nanstd(HSig(indLowAmpLongT,:));
HsIN_mean_LowAmpLongT=nanmean(HSin(indLowAmpLongT,:));
HsIN_std_LowAmpLongT=nanstd(HSin(indLowAmpLongT,:));
Fs_mean_LowAmpLongT=nanmean(Fs(indLowAmpLongT,:));
Fs_std_LowAmpLongT=nanstd(Fs(indLowAmpLongT,:));
WL_mean_LowAmpLongT=nanmean(WL(indLowAmpLongT,:));
WL_std_LowAmpLongT=nanstd(WL(indLowAmpLongT,:));
[Skew_mean_LowAmpLongT,Skew_std_LowAmpLongT]=getMeanStdNoisyData(Hskew(indLowAmpLongT,:),-0.5:0.1:10);
[Asym_mean_LowAmpLongT,Asym_std_LowAmpLongT]=getMeanStdNoisyData(-Hasym(indLowAmpLongT,:),-0.5:0.1:4);

%NorEasterth(indNorEaster,:));
Hs_std_NorEaster=nanstd(Hs_smooth(indNorEaster,:));
HsIG_mean_NorEaster=nanmean(HSig(indNorEaster,:));
HsIG_std_NorEaster=nanstd(HSig(indNorEaster,:));
HsIN_mean_NorEaster=nanmean(HSin(in
[Hs_mean_NorEaster,Hs_std_NorEaster]=getMeanStdNoisyData(Hs(indNorEaster,:),0:0.05:4);
Hs_mean_NorEaster=nanmean(Hs_smoodNorEaster,:));
HsIN_std_NorEaster=nanstd(HSin(indNorEaster,:));
Fs_mean_NorEaster=nanmean(Fs(indNorEaster,:));
Fs_std_NorEaster=nanstd(Fs(indNorEaster,:));
WL_mean_NorEaster=nanmean(WL(indNorEaster,:));
WL_std_NorEaster=nanstd(WL(indNorEaster,:));
[Skew_mean_NorEaster,Skew_std_NorEaster]=getMeanStdNoisyData(Hskew(indNorEaster,:),-0.5:0.1:10);
[Asym_mean_NorEaster,Asym_std_NorEaster]=getMeanStdNoisyData(-Hasym(indNorEaster,:),-0.5:0.1:4);
