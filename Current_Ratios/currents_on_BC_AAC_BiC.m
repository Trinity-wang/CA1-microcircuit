%% Melisa Gumus - 2018 May
% Calculate Excitatory/Inhibitory Ratios onto Population of BC, AAC and BiC

%% Load Data From Netclamp Results
clear all
close all
clc

g = fullfile('/home','melisagumus','Documents', ...
    'MATLAB','CA1_SimTracker','pvbasket',{...
    'pvbasket_332810_1000';...
    'pvbasket_333500_1000';...
    'pvbasket_333776_1000';...
    'pvbasket_334466_1000';...
    'pvbasket_335018_1000';...
    'pvbasket_335432_1000';...
    'pvbasket_335846_1000';...
    'pvbasket_336260_1000';...
    'pvbasket_336536_1000';...
    'pvbasket_336674_1000';...
    'pvbasket_337088_1000';...
    'pvbasket_337364_1000';...
    'pvbasket_337640_1000';...
    'pvbasket_338192_1000';...
    'pvbasket_338054_1000'...
    },{...
    'mytrace_332810_syns.dat';...
    'mytrace_333500_syns.dat';...
    'mytrace_333776_syns.dat';...
    'mytrace_334466_syns.dat';...
    'mytrace_335018_syns.dat';...
    'mytrace_335432_syns.dat';...
    'mytrace_335846_syns.dat';...
    'mytrace_336260_syns.dat';...
    'mytrace_336536_syns.dat';...
    'mytrace_336674_syns.dat';...
    'mytrace_337088_syns.dat';...
    'mytrace_337364_syns.dat';...
    'mytrace_337640_syns.dat';...
    'mytrace_338192_syns.dat';...
    'mytrace_338054_syns.dat'...
    });

f = fullfile('/home','melisagumus','Documents', ...
    'MATLAB','CA1_SimTracker','AAC',{...
    'AAC_0_1000';...
    'AAC_36_1000';...
    'AAC_180_1000';...
    'AAC_288_1000';...
    'AAC_360_1000';...
    'AAC_468_1000';...
    'AAC_576_1000';...
    'AAC_720_1000';...
    'AAC_828_1000';...
    'AAC_900_1000';...
    'AAC_1008_1000';...
    'AAC_1152_1000';...
    'AAC_1224_1000';...
    'AAC_1332_1000';...
    'AAC_1404_1000'...
    },{...
    'mytrace_0_syns.dat';...
    'mytrace_36_syns.dat';...
    'mytrace_180_syns.dat';...
    'mytrace_288_syns.dat';...
    'mytrace_360_syns.dat';...
    'mytrace_468_syns.dat';...
    'mytrace_576_syns.dat';...
    'mytrace_720_syns.dat';...
    'mytrace_828_syns.dat';...
    'mytrace_900_syns.dat';...
    'mytrace_1008_syns.dat';...
    'mytrace_1152_syns.dat';...
    'mytrace_1224_syns.dat';...
    'mytrace_1332_syns.dat';...
    'mytrace_1404_syns.dat'...
    });

h = fullfile('/home','melisagumus','Documents', ...
    'MATLAB','CA1_SimTracker','BiC',{...
    'BiC_1470_1000';...
    'BiC_1580_1000';...
    'BiC_1635_1000';...
    'BiC_1855_1000';...
    'BiC_2020_1000';...
    'BiC_2130_1000';...
    'BiC_2350_1000';...
    'BiC_2460_1000';...
    'BiC_2570_1000';...
    'BiC_2900_1000';...
    'BiC_3010_1000';...
    'BiC_3175_1000';...
    'BiC_3340_1000';...
    'BiC_3505_1000';...
    'BiC_3615_1000'...
    },{...
    'mytrace_1470_syns.dat';...
    'mytrace_1580_syns.dat';...
    'mytrace_1635_syns.dat';...
    'mytrace_1855_syns.dat';...
    'mytrace_2020_syns.dat';...
    'mytrace_2130_syns.dat';...
    'mytrace_2350_syns.dat';...
    'mytrace_2460_syns.dat';...
    'mytrace_2570_syns.dat';...
    'mytrace_2900_syns.dat';...
    'mytrace_3010_syns.dat';...
    'mytrace_3175_syns.dat';...
    'mytrace_3340_syns.dat';...
    'mytrace_3505_syns.dat';...
    'mytrace_3615_syns.dat'...
    });

%%
clear all
close all
clc

g = fullfile('/Users','macklabadmin','Documents', ...
    'other','pvbasket',{...
    'pvbasket_332810_1000';...
    'pvbasket_333500_1000';...
    'pvbasket_333776_1000';...
    'pvbasket_334466_1000';...
    'pvbasket_335018_1000';...
    'pvbasket_335432_1000';...
    'pvbasket_335846_1000';...
    'pvbasket_336260_1000';...
    'pvbasket_336536_1000';...
    'pvbasket_336674_1000';...
    'pvbasket_337088_1000';...
    'pvbasket_337364_1000';...
    'pvbasket_337640_1000';...
    'pvbasket_338192_1000';...
    'pvbasket_338054_1000'...
    },{...
    'mytrace_332810_syns.dat';...
    'mytrace_333500_syns.dat';...
    'mytrace_333776_syns.dat';...
    'mytrace_334466_syns.dat';...
    'mytrace_335018_syns.dat';...
    'mytrace_335432_syns.dat';...
    'mytrace_335846_syns.dat';...
    'mytrace_336260_syns.dat';...
    'mytrace_336536_syns.dat';...
    'mytrace_336674_syns.dat';...
    'mytrace_337088_syns.dat';...
    'mytrace_337364_syns.dat';...
    'mytrace_337640_syns.dat';...
    'mytrace_338192_syns.dat';...
    'mytrace_338054_syns.dat'...
    });

f = fullfile('/Users','macklabadmin','Documents', ...
    'other','AAC',{...
    'AAC_0_1000';...
    'AAC_36_1000';...
    'AAC_180_1000';...
    'AAC_288_1000';...
    'AAC_360_1000';...
    'AAC_468_1000';...
    'AAC_576_1000';...
    'AAC_720_1000';...
    'AAC_828_1000';...
    'AAC_900_1000';...
    'AAC_1008_1000';...
    'AAC_1152_1000';...
    'AAC_1224_1000';...
    'AAC_1332_1000';...
    'AAC_1404_1000'...
    },{...
    'mytrace_0_syns.dat';...
    'mytrace_36_syns.dat';...
    'mytrace_180_syns.dat';...
    'mytrace_288_syns.dat';...
    'mytrace_360_syns.dat';...
    'mytrace_468_syns.dat';...
    'mytrace_576_syns.dat';...
    'mytrace_720_syns.dat';...
    'mytrace_828_syns.dat';...
    'mytrace_900_syns.dat';...
    'mytrace_1008_syns.dat';...
    'mytrace_1152_syns.dat';...
    'mytrace_1224_syns.dat';...
    'mytrace_1332_syns.dat';...
    'mytrace_1404_syns.dat'...
    });

h = fullfile('/Users','macklabadmin','Documents', ...
    'other','BiC',{...
    'BiC_1470_1000';...
    'BiC_1580_1000';...
    'BiC_1635_1000';...
    'BiC_1855_1000';...
    'BiC_2020_1000';...
    'BiC_2130_1000';...
    'BiC_2350_1000';...
    'BiC_2460_1000';...
    'BiC_2570_1000';...
    'BiC_2900_1000';...
    'BiC_3010_1000';...
    'BiC_3175_1000';...
    'BiC_3340_1000';...
    'BiC_3505_1000';...
    'BiC_3615_1000'...
    },{...
    'mytrace_1470_syns.dat';...
    'mytrace_1580_syns.dat';...
    'mytrace_1635_syns.dat';...
    'mytrace_1855_syns.dat';...
    'mytrace_2020_syns.dat';...
    'mytrace_2130_syns.dat';...
    'mytrace_2350_syns.dat';...
    'mytrace_2460_syns.dat';...
    'mytrace_2570_syns.dat';...
    'mytrace_2900_syns.dat';...
    'mytrace_3010_syns.dat';...
    'mytrace_3175_syns.dat';...
    'mytrace_3340_syns.dat';...
    'mytrace_3505_syns.dat';...
    'mytrace_3615_syns.dat'...
    });

%% Write Data on Matrix
alldataBC = [];
for m = 1:1:15
    temp_data = readtable(g{m},'Delimiter','\t');
    temp_data = table2array(temp_data);
    alldataBC = [alldataBC temp_data];
end

dataBC = mat2cell(alldataBC, 40000, ...
    [12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12]);

alldataAAC = [];
for m = 1:1:15
    temp_data = readtable(f{m},'Delimiter','\t');
    temp_data = table2array(temp_data);
    alldataAAC = [alldataAAC temp_data];
end

dataAAC = mat2cell(alldataAAC, 40000, ...
    [12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12]);

alldataBiC = [];
for m = 1:1:15
    temp_data = readtable(h{m},'Delimiter','\t');
    temp_data = table2array(temp_data);
    alldataBiC = [alldataBiC temp_data];
end

dataBiC = mat2cell(alldataBiC, 40000, ...
    [12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12]);

%% Creates a big table consists of inputs from BiC, PYR, and BC... onto BC

M_on_BC = [];
current_BC_on_BC = [];
current_PYR_on_BC = [];
current_BiC_on_BC = [];
current_cck = [];
current_ivy = [];
current_ngf = [];
current_olm = [];
current_sca = [];

for m = 1:15  % number of cells 
    for k = 2:12  % number of input 
        if k == 3
            temp_current_BiC = dataBC{m}(:,k);
            [pks, locs] = findpeaks(dataBC{m}(:,k),'MinPeakDistance',4000); % peak detection
            temp_BiC = dataBC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_BiC(element,:) = 0;
            end 
            BiC_on_BC = temp_BiC;
        elseif k == 8
            temp_current_PYR = dataBC{m}(:,k);
            [pks, locs] = findpeaks(-dataBC{m}(:,k),'MinPeakDistance',4000); % peak detection
            temp_PYR = dataBC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_PYR(element,:) = 0;
            end 
            PYR_on_BC = temp_PYR;
        elseif k == 9
            temp_current_BC = dataBC{m}(:,k);
            [pks, locs] = findpeaks(dataBC{m}(:,k),'MinPeakDistance',4000); % peak detection
            %findpeaks(data{m}(:,k),M
            temp_BC = dataBC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_BC(element,:) = 0;
            end 
            BC_on_BC = temp_BC;
        elseif k == 4
            temp_current_cck = dataBC{m}(:,k);
        elseif k == 5
            temp_current_ivy = dataBC{m}(:,k);
        elseif k == 6
            temp_current_ngf = dataBC{m}(:,k);
        elseif k == 7
            temp_current_olm = dataBC{m}(:,k);
        elseif k == 10
            temp_current_sca = dataBC{m}(:,k);
        
        end 
        
    end
    current_PYR_on_BC = [current_PYR_on_BC temp_current_PYR];
    current_BiC_on_BC = [current_BiC_on_BC temp_current_BiC];
    current_BC_on_BC = [current_BC_on_BC temp_current_BC];
    current_cck_on_BC = [current_cck temp_current_cck];
    current_ivy_on_BC = [current_ivy temp_current_ivy];
    current_ngf_on_BC = [current_ngf temp_current_ngf];
    current_olm_on_BC = [current_olm temp_current_olm];
    current_sca_on_BC = [current_sca temp_current_sca];
    
    M_on_BC = [M_on_BC BiC_on_BC PYR_on_BC BC_on_BC];
    
end 

allcellsBC = mat2cell(M_on_BC, 40000, ...
    [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3]); 

%% Creates a big table consists of inputs from BiC, PYR, and BC... onto AAC

M = [];
current_BC_on_AAC = [];
current_PYR_on_AAC = [];
current_BiC_on_AAC = [];
for m = 1:15  % number of cells 
    for k = 2:12  % number of input 
        if k == 3
            temp_current_BiC = dataAAC{m}(:,k);
            [pks, locs] = findpeaks(dataAAC{m}(:,k),'MinPeakDistance',4000); % peak detection
            temp_BiC = dataAAC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_BiC(element,:) = 0;
            end 
            BiC_on_AAC = temp_BiC;
        elseif k == 8
            temp_current_PYR = dataAAC{m}(:,k);
            [pks, locs] = findpeaks(-dataAAC{m}(:,k),'MinPeakDistance',4000); % peak detection
            temp_PYR = dataAAC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_PYR(element,:) = 0;
            end 
            PYR_on_AAC = temp_PYR;
        elseif k == 9
            temp_current_BC = dataAAC{m}(:,k);
            [pks, locs] = findpeaks(dataAAC{m}(:,k),'MinPeakDistance',4000); % peak detection
            %findpeaks(data{m}(:,k),M
            temp_BC = dataAAC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_BC(element,:) = 0;
            end 
            BC_on_AAC = temp_BC;
            elseif k == 4
                temp_current_cck = dataAAC{m}(:,k);
            elseif k == 5
                temp_current_ivy = dataAAC{m}(:,k);
            elseif k == 6
                temp_current_ngf = dataAAC{m}(:,k);
            elseif k == 7
                temp_current_olm = dataAAC{m}(:,k);
            elseif k == 10
                temp_current_sca = dataAAC{m}(:,k); 
        end 
    end
    current_PYR_on_AAC = [current_PYR_on_AAC temp_current_PYR];
    current_BiC_on_AAC = [current_BiC_on_AAC temp_current_BiC];
    current_BC_on_AAC = [current_BC_on_AAC temp_current_BC];
    M = [M BiC_on_AAC PYR_on_AAC BC_on_AAC];
    current_cck_on_AAC = [current_cck temp_current_cck];
    current_ivy_on_AAC = [current_ivy temp_current_ivy];
    current_ngf_on_AAC = [current_ngf temp_current_ngf];
    current_olm_on_AAC = [current_olm temp_current_olm];
    current_sca_on_AAC = [current_sca temp_current_sca];
end 

allcellsAAC = mat2cell(M, 40000, ...
    [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3]); 

%% Creates a big table consists of inputs from BiC, PYR, and BC... onto BiC

M_BiC = [];
current_BC_on_BiC = [];
current_PYR_on_BiC = [];
current_BiC_on_BiC = [];
for m = 1:15  % number of cells 
    for k = 2:12  % number of input 
        if k == 3
            temp_current_BiC = dataBiC{m}(:,k);
            [pks, locs] = findpeaks(dataBiC{m}(:,k),'MinPeakDistance',4000); % peak detection
            temp_BiC = dataBiC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_BiC(element,:) = 0;
            end 
            BiC_on_BiC = temp_BiC;
        elseif k == 8
            temp_current_PYR = dataBiC{m}(:,k);
            [pks, locs] = findpeaks(-dataBiC{m}(:,k),'MinPeakDistance',4000); % peak detection
            temp_PYR = dataBiC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_PYR(element,:) = 0;
            end 
            PYR_on_BiC = temp_PYR;
        elseif k == 9
            temp_current_BC = dataBiC{m}(:,k);
            [pks, locs] = findpeaks(dataBiC{m}(:,k),'MinPeakDistance',4000); % peak detection
            %findpeaks(data{m}(:,k),M
            temp_BC = dataBiC{m}(:,k);
            allrows = (1:40000)';
            notpeak = setdiff(allrows,locs);
            for t = 1:1:numel(notpeak)
                element = notpeak(t,:);
                temp_BC(element,:) = 0;
            end
            BC_on_BiC = temp_BC;
            elseif k == 4
                temp_current_cck = dataAAC{m}(:,k);
            elseif k == 5
                temp_current_ivy = dataAAC{m}(:,k);
            elseif k == 6
                temp_current_ngf = dataAAC{m}(:,k);
            elseif k == 7
                temp_current_olm = dataAAC{m}(:,k);
            elseif k == 10
                temp_current_sca = dataAAC{m}(:,k); 
        end 
    end
    current_PYR_on_BiC = [current_PYR_on_BiC temp_current_PYR];
    current_BiC_on_BiC = [current_BiC_on_BiC temp_current_BiC];
    current_BC_on_BiC = [current_BC_on_BiC temp_current_BC];
    M_BiC = [M_BiC BiC_on_BiC PYR_on_BiC BC_on_BiC];
    current_cck_on_BiC = [current_cck temp_current_cck];
    current_ivy_on_BiC = [current_ivy temp_current_ivy];
    current_ngf_on_BiC = [current_ngf temp_current_ngf];
    current_olm_on_BiC = [current_olm temp_current_olm];
    current_sca_on_BiC = [current_sca temp_current_sca];
end 

allcellsBiC = mat2cell(M_BiC, 40000, ...
    [3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3]); 

%% Find Mean EPSCs and SD from PYR onto BC

EPSC_BC = [];
epsc_BC = [];
for i = 1:1:15 
    pks_epsc = allcellsBC{i}(:,2);
    pks_epsc(pks_epsc==0)=[];
    epsc_mean = mean(pks_epsc);
    epsc_std = std(pks_epsc);
    epsc_BC = [epsc_mean;epsc_std];
    EPSC_BC = [EPSC_BC epsc_BC];
end 

EPSC_BC_table = EPSC_BC;
num = (1:15)';
EPSC_BC_table = array2table(EPSC_BC_table');
EPSC_BC_table.num = num;
EPSC_BC_table = [EPSC_BC_table(:,end) EPSC_BC_table(:,1) EPSC_BC_table(:,2)];

EPSC_BC_table.Properties.VariableNames = {'BC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,1)
EPSC_BC_mean = EPSC_BC(1,:);
EPSC_BC_std = EPSC_BC(2,:);
x = linspace(0,14,length(EPSC_BC_mean));
scatter(x,EPSC_BC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dEPSC_BC_mean=0.1;
text(x+dx, EPSC_BC_mean+dEPSC_BC_mean, c);
xlabel('Individual BCs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak EPSCs','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,EPSC_BC_mean,EPSC_BC_std,'b','LineStyle','none')
title('Mean Peak EPSCs onto BCs','FontSize',15,'FontWeight','bold')


%% Find Mean EPSCs and SD onto AAC

EPSC_on_AAC = [];
epsc_on_AAC = [];
for i = 1:1:15
    pks_epsc = allcellsAAC{i}(:,2);
    pks_epsc(pks_epsc==0)=[];
    epsc_on_AAC_mean = mean(pks_epsc);
    epsc_on_AAC_std = std(pks_epsc);
    epsc_on_AAC = [epsc_on_AAC_mean;epsc_on_AAC_std];
    EPSC_on_AAC = [EPSC_on_AAC epsc_on_AAC];
end 

EPSC_on_AAC_table = EPSC_on_AAC;
num = (1:15)';
EPSC_on_AAC_table = array2table(EPSC_on_AAC_table');
EPSC_on_AAC_table.num = num;
EPSC_on_AAC_table = [EPSC_on_AAC_table(:,end) EPSC_on_AAC_table(:,1) EPSC_on_AAC_table(:,2)];

EPSC_on_AAC_table.Properties.VariableNames = {'AAC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,2)
EPSC_on_AAC_mean = EPSC_on_AAC(1,:);
EPSC_on_AAC_std = EPSC_on_AAC(2,:);
x = linspace(0,14,length(EPSC_on_AAC_mean));
scatter(x,EPSC_on_AAC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dEPSC_on_AAC_mean=0.1;
text(x+dx, EPSC_on_AAC_mean+dEPSC_on_AAC_mean, c);
xlabel('Individual AACs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak EPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,EPSC_on_AAC_mean,EPSC_on_AAC_std,'b','LineStyle','none')
title('Mean Peak EPSC onto AACs','FontSize',15,'FontWeight','bold')

%% Find Mean EPSCs and SD onto BiC

EPSC_on_BiC = [];
epsc_on_BiC = [];
for i = 1:1:15
    pks_epsc = allcellsBiC{i}(:,2);
    pks_epsc(pks_epsc==0)=[];
    epsc_on_BiC_mean = mean(pks_epsc);
    epsc_on_BiC_std = std(pks_epsc);
    epsc_on_BiC = [epsc_on_BiC_mean;epsc_on_BiC_std];
    EPSC_on_BiC = [EPSC_on_BiC epsc_on_BiC];
end 

EPSC_on_BiC_table = EPSC_on_BiC;
num = (1:15)';
EPSC_on_BiC_table = array2table(EPSC_on_BiC_table');
EPSC_on_BiC_table.num = num;
EPSC_on_BiC_table = [EPSC_on_BiC_table(:,end) EPSC_on_BiC_table(:,1) EPSC_on_BiC_table(:,2)];

EPSC_on_BiC_table.Properties.VariableNames = {'BiC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,3)
EPSC_on_BiC_mean = EPSC_on_BiC(1,:);
EPSC_on_BiC_std = EPSC_on_BiC(2,:);
x = linspace(0,14,length(EPSC_on_BiC_mean));
scatter(x,EPSC_on_BiC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dEPSC_on_BiC_mean=0.1;
text(x+dx, EPSC_on_BiC_mean+dEPSC_on_BiC_mean, c);
xlabel('Individual BiCs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak EPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,EPSC_on_BiC_mean,EPSC_on_BiC_std,'b','LineStyle','none')
title('Mean Peak EPSC onto BiCs','FontSize',15,'FontWeight','bold')


%% IPSCs Only from BiC onto BC

IPSC_BiC_on_BC = [];
ipsc_BiC_on_BC = [];
for i = 1:1:15
    pks_ipsc_BiC = allcellsBC{i}(:,1);
    pks_ipsc_BiC(pks_ipsc_BiC==0)=[];
    ipsc_BiC_mean = mean(pks_ipsc_BiC);
    ipsc_BiC_std = std(pks_ipsc_BiC);
    ipsc_BiC_on_BC = [ipsc_BiC_mean;ipsc_BiC_std];
    IPSC_BiC_on_BC = [IPSC_BiC_on_BC ipsc_BiC_on_BC];
end 

IPSC_BiC_on_BC_table = IPSC_BiC_on_BC;
num = (1:15)';
IPSC_BiC_on_BC_table = array2table(IPSC_BiC_on_BC_table');
IPSC_BiC_on_BC_table.num = num;
IPSC_BiC_on_BC_table = [IPSC_BiC_on_BC_table(:,end) IPSC_BiC_on_BC_table(:,1) IPSC_BiC_on_BC_table(:,2)];

IPSC_BiC_on_BC_table.Properties.VariableNames = {'BC_Number', 'Mean_Peak', 'Standard_Deviation'};


subplot(3,1,1)
IPSC_BiC_on_BC_mean = IPSC_BiC_on_BC(1,:);
IPSC_BiC_on_BC_std = IPSC_BiC_on_BC(2,:);
x = linspace(0,14,length(IPSC_BiC_on_BC_mean));
scatter(x,IPSC_BiC_on_BC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dIPSC_BiC_on_BC_mean=0.1;
text(x+dx, IPSC_BiC_on_BC_mean+dIPSC_BiC_on_BC_mean, c);
xlabel('Individual BCs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_BiC_on_BC_mean,IPSC_BiC_on_BC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BiCs onto BCs','FontSize',15,'FontWeight','bold')

%% IPSCs only from BiC on AAC

IPSC_BiC_on_AAC = [];
ipsc_BiC_on_AAC = [];
for i = 1:1:15
    pks_ipsc_BiC = allcellsAAC{i}(:,1);
    pks_ipsc_BiC(pks_ipsc_BiC==0)=[];
    ipsc_BiC_on_AAC_mean = mean(pks_ipsc_BiC);
    ipsc_BiC_on_AAC_std = std(pks_ipsc_BiC);
    ipsc_BiC_on_AAC = [ipsc_BiC_on_AAC_mean;ipsc_BiC_on_AAC_std];
    IPSC_BiC_on_AAC = [IPSC_BiC_on_AAC ipsc_BiC_on_AAC];
end 

IPSC_BiC_on_AAC_table = IPSC_BiC_on_AAC;
num = (1:15)';
IPSC_BiC_on_AAC_table = array2table(IPSC_BiC_on_AAC_table');
IPSC_BiC_on_AAC_table.num = num;
IPSC_BiC_on_AAC_table = [IPSC_BiC_on_AAC_table(:,end) IPSC_BiC_on_AAC_table(:,1) IPSC_BiC_on_AAC_table(:,2)];

IPSC_BiC_on_AAC_table.Properties.VariableNames = {'AAC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,2)
IPSC_BiC_on_AAC_mean = IPSC_BiC_on_AAC(1,:);
IPSC_BiC_on_AAC_std = IPSC_BiC_on_AAC(2,:);
x = linspace(0,14,length(IPSC_BiC_on_AAC_mean));
scatter(x,IPSC_BiC_on_AAC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dIPSC_BiC_on_AAC_mean=0.1;
text(x+dx, IPSC_BiC_on_AAC_mean+dIPSC_BiC_on_AAC_mean, c);
xlabel('Individual AACs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC from BiC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_BiC_on_AAC_mean,IPSC_BiC_on_AAC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BiCs onto AACs','FontSize',15,'FontWeight','bold')

%% IPSCs only from BiC on BiC

IPSC_BiC_on_BiC = [];
ipsc_BiC_on_BiC = [];
for i = 1:1:15
    pks_ipsc_BiC = allcellsBiC{i}(:,1);
    pks_ipsc_BiC(pks_ipsc_BiC==0)=[];
    ipsc_BiC_on_BiC_mean = mean(pks_ipsc_BiC);
    ipsc_BiC_on_BiC_std = std(pks_ipsc_BiC);
    ipsc_BiC_on_BiC = [ipsc_BiC_on_BiC_mean;ipsc_BiC_on_BiC_std];
    IPSC_BiC_on_BiC = [IPSC_BiC_on_BiC ipsc_BiC_on_BiC];
end 

IPSC_BiC_on_BiC_table = IPSC_BiC_on_BiC;
num = (1:15)';
IPSC_BiC_on_BiC_table = array2table(IPSC_BiC_on_BiC_table');
IPSC_BiC_on_BiC_table.num = num;
IPSC_BiC_on_BiC_table = [IPSC_BiC_on_BiC_table(:,end) IPSC_BiC_on_BiC_table(:,1) IPSC_BiC_on_BiC_table(:,2)];

IPSC_BiC_on_BiC_table.Properties.VariableNames = {'BiC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,3)
IPSC_BiC_on_BiC_mean = IPSC_BiC_on_BiC(1,:);
IPSC_BiC_on_BiC_std = IPSC_BiC_on_BiC(2,:);
x = linspace(0,14,length(IPSC_BiC_on_BiC_mean));
scatter(x,IPSC_BiC_on_BiC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dIPSC_BiC_on_BiC_mean=0.1;
text(x+dx, IPSC_BiC_on_BiC_mean+dIPSC_BiC_on_BiC_mean, c);
xlabel('Individual BiCs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC from BiCs','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_BiC_on_BiC_mean,IPSC_BiC_on_BiC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BiCs onto BiCs','FontSize',15,'FontWeight','bold')

%% IPSCs only from BC on BC

IPSC_BC_on_BC = [];
ipsc_BC_on_BC = [];
for i = 1:1:15
    pks_ipsc_BC = allcellsBC{i}(:,3);
    pks_ipsc_BC(pks_ipsc_BC==0)=[];
    ipsc_BC_on_BC_mean = mean(pks_ipsc_BC);
    ipsc_BC_on_BC_std = std(pks_ipsc_BC);
    ipsc_BC_on_BC = [ipsc_BC_on_BC_mean;ipsc_BC_on_BC_std];
    IPSC_BC_on_BC = [IPSC_BC_on_BC ipsc_BC_on_BC];
end 

IPSC_BC_on_BC_table = IPSC_BC_on_BC;
num = (1:15)';
IPSC_BC_on_BC_table = array2table(IPSC_BC_on_BC_table');
IPSC_BC_on_BC_table.num = num;
IPSC_BC_on_BC_table = [IPSC_BC_on_BC_table(:,end) IPSC_BC_on_BC_table(:,1) IPSC_BC_on_BC_table(:,2)];

IPSC_BC_on_BC_table.Properties.VariableNames = {'BC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,1)
IPSC_BC_on_BC_mean = IPSC_BC_on_BC(1,:);
IPSC_BC_on_BC_std = IPSC_BC_on_BC(2,:);
x = linspace(0,14,length(IPSC_BC_mean));
scatter(x,IPSC_BC_on_BC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dIPSC_BC_on_BC_mean=0.1;
text(x+dx, IPSC_BC_on_BC_mean+dIPSC_BC_on_BC_mean, c);
xlabel('Individual BCs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_BC_on_BC_mean,IPSC_BC_on_BC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BCs onto BCs','FontSize',15,'FontWeight','bold')

%% IPSCs only from BC on AAC

IPSC_BC_on_AAC = [];
ipsc_BC_on_AAC = [];
for i = 1:1:15
    pks_ipsc_BC = allcellsAAC{i}(:,3);
    pks_ipsc_BC(pks_ipsc_BC==0)=[];
    ipsc_BC_on_AAC_mean = mean(pks_ipsc_BC);
    ipsc_BC_on_AAC_std = std(pks_ipsc_BC);
    ipsc_BC_on_AAC = [ipsc_BC_on_AAC_mean;ipsc_BC_on_AAC_std];
    IPSC_BC_on_AAC = [IPSC_BC_on_AAC ipsc_BC_on_AAC];
end 

IPSC_BC_on_AAC_table = IPSC_BC_on_AAC;
num = (1:15)';
IPSC_BC_on_AAC_table = array2table(IPSC_BC_on_AAC_table');
IPSC_BC_on_AAC_table.num = num;
IPSC_BC_on_AAC_table = [IPSC_BC_on_AAC_table(:,end) IPSC_BC_on_AAC_table(:,1) IPSC_BC_on_AAC_table(:,2)];

IPSC_BC_on_AAC_table.Properties.VariableNames = {'AAC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,2)
IPSC_BC_on_AAC_mean = IPSC_BC_on_AAC(1,:);
IPSC_BC_on_AAC_std = IPSC_BC_on_AAC(2,:);
x = linspace(0,15,length(IPSC_BC_on_AAC_mean));
scatter(x,IPSC_BC_on_AAC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dIPSC_BC_on_AAC_mean=0.1;
text(x+dx, IPSC_BC_on_AAC_mean+dIPSC_BC_on_AAC_mean, c);
xlabel('Individual AACs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_BC_on_AAC_mean,IPSC_BC_on_AAC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BCs onto AACs','FontSize',15,'FontWeight','bold')

%% IPSCs only from BC on BiC

IPSC_BC_on_BiC = [];
ipsc_BC_on_BiC = [];
for i = 1:1:15
    pks_ipsc_BC = allcellsBiC{i}(:,3);
    pks_ipsc_BC(pks_ipsc_BC==0)=[];
    ipsc_BC_on_BiC_mean = mean(pks_ipsc_BC);
    ipsc_BC_on_BiC_std = std(pks_ipsc_BC);
    ipsc_BC_on_BiC = [ipsc_BC_on_BiC_mean;ipsc_BC_on_BiC_std];
    IPSC_BC_on_BiC = [IPSC_BC_on_BiC ipsc_BC_on_BiC];
end 

IPSC_BC_on_BiC_table = IPSC_BC_on_BiC;
num = (1:15)';
IPSC_BC_on_BiC_table = array2table(IPSC_BC_on_BiC_table');
IPSC_BC_on_BiC_table.num = num;
IPSC_BC_on_BiC_table = [IPSC_BC_on_BiC_table(:,end) IPSC_BC_on_BiC_table(:,1) IPSC_BC_on_BiC_table(:,2)];

IPSC_BC_on_BiC_table.Properties.VariableNames = {'BiC_Number', 'Mean_Peak', 'Standard_Deviation'};

subplot(3,1,3)
IPSC_BC_on_BiC_mean = IPSC_BC_on_BiC(1,:);
IPSC_BC_on_BiC_std = IPSC_BC_on_BiC(2,:);
x = linspace(0,14,length(IPSC_BC_on_BiC_mean));
scatter(x,IPSC_BC_on_BiC_mean,'black','filled');
xlabel('Individual BiCs','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_BC_on_BiC_mean,IPSC_BC_on_BiC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BCs onto BiCs','FontSize',15,'FontWeight','bold')

%% IPSCs Only From BC and BiC onto BC, BiC and AAC gathered 
% Sum all ipsc currents
all_ipsc_on_BC_BiC = [];
all_epsc_on_BC_BiC = [];
all_ipsc_on_BC_BiC_AAC = [];
all_ipsc_on_BC_AAC = [];
all_epsc_on_BC_BiC_AAC = [];
all_epsc_on_BC_AAC = [];

for i = 1:1:15
    tot_cur_ipsc_on_BC =  current_BiC_on_BC(:,i) + current_BC_on_BC(:,i);
    tot_cur_ipsc_on_BiC =  current_BiC_on_BiC(:,i) + current_BC_on_BiC(:,i);
    tot_cur_ipsc_on_AAC =  current_BiC_on_AAC(:,i) + current_BC_on_AAC(:,i);
    
    tot_cur_ipsc_on_BC_BiC = tot_cur_ipsc_on_BC + tot_cur_ipsc_on_BiC;
    tot_cur_ipsc_on_BC_BiC_AAC = tot_cur_ipsc_on_AAC + tot_cur_ipsc_on_AAC;
    tot_cur_ipsc_on_BC_AAC = tot_cur_ipsc_on_AAC + tot_cur_ipsc_on_AAC;
    
    all_ipsc_on_BC_BiC = [all_ipsc_on_BC_BiC tot_cur_ipsc_on_BC_BiC];
    all_ipsc_on_BC_BiC_AAC = [all_ipsc_on_BC_BiC_AAC tot_cur_ipsc_on_BC_BiC_AAC];
    all_ipsc_on_BC_AAC = [all_ipsc_on_BC_AAC tot_cur_ipsc_on_BC_AAC];
    
    % EPSC
    tot_cur_epsc_on_BC_BiC_AAC =  current_PYR_on_BC(:,i) + current_PYR_on_BiC(:,i) + current_PYR_on_AAC(:,i);
    all_epsc_on_BC_BiC_AAC = [all_epsc_on_BC_BiC_AAC tot_cur_epsc_on_BC_BiC_AAC];
    
    tot_cur_epsc_on_BC_AAC =  current_PYR_on_BC(:,i) + current_PYR_on_AAC(:,i);
    all_epsc_on_BC_AAC = [all_epsc_on_BC_AAC tot_cur_epsc_on_BC_AAC];
end

%% Find the peaks of the summed IPSCs from BC and BiC onto BC, BiC and AAC 

peaks_all_PV_on_BC_BiC = [];
for k = 1:1:15
    [pks, locs] = findpeaks(all_ipsc_on_BC_BiC(:,k),'MinPeakDistance',4000); % peak detection
    temp_cur = all_ipsc_on_BC_BiC(:,k);
    allrows = (1:40000)';
    notpeak = setdiff(allrows,locs);
    for t = 1:1:numel(notpeak)
        element = notpeak(t,:);
        temp_cur(element,:) = 0;
    end
    peaks_all = temp_cur;
    peaks_all_PV_on_BC_BiC = [peaks_all_PV_on_BC_BiC peaks_all];
end


peaks_all_PV_on_BC_AAC = [];
for k = 1:1:15
    [pks, locs] = findpeaks(all_ipsc_on_BC_AAC(:,k),'MinPeakDistance',4000); % peak detection
    temp_cur = all_ipsc_on_BC_BiC(:,k);
    allrows = (1:40000)';
    notpeak = setdiff(allrows,locs);
    for t = 1:1:numel(notpeak)
        element = notpeak(t,:);
        temp_cur(element,:) = 0;
    end
    peaks_all = temp_cur;
    peaks_all_PV_on_BC_AAC = [peaks_all_PV_on_BC_AAC peaks_all];
end

% Find the peaks of the summed ipsc currents
peaks_all_PV_on_BC_BiC_AAC = [];
for k = 1:1:15
    [pks, locs] = findpeaks(all_ipsc_on_BC_BiC_AAC(:,k),'MinPeakDistance',4000); % peak detection
    temp_cur = all_ipsc_on_BC_BiC_AAC(:,k);
    allrows = (1:40000)';
    notpeak = setdiff(allrows,locs);
    for t = 1:1:numel(notpeak)
        element = notpeak(t,:);
        temp_cur(element,:) = 0;
    end
    peaks_all = temp_cur;
    peaks_all_PV_on_BC_BiC_AAC = [peaks_all_PV_on_BC_BiC_AAC peaks_all];
end

peaks_PYR_on_BC_BiC_AAC = [];
for k = 1:1:15
    [pks, locs] = findpeaks(all_epsc_on_BC_BiC_AAC(:,k),'MinPeakDistance',4000); % peak detection
    temp_cur = all_epsc_on_BC_BiC_AAC(:,k);
    allrows = (1:40000)';
    notpeak = setdiff(allrows,locs);
    for t = 1:1:numel(notpeak)
        element = notpeak(t,:);
        temp_cur(element,:) = 0;
    end
    peaks_all = temp_cur;
    peaks_PYR_on_BC_BiC_AAC = [peaks_PYR_on_BC_BiC_AAC peaks_all];
end

peaks_PYR_on_BC_AAC = [];
for k = 1:1:15
    [pks, locs] = findpeaks(all_epsc_on_BC_AAC(:,k),'MinPeakDistance',4000); % peak detection
    temp_cur = all_epsc_on_BC_AAC(:,k);
    allrows = (1:40000)';
    notpeak = setdiff(allrows,locs);
    for t = 1:1:numel(notpeak)
        element = notpeak(t,:);
        temp_cur(element,:) = 0;
    end
    peaks_all = temp_cur;
    peaks_PYR_on_BC_AAC = [peaks_PYR_on_BC_AAC peaks_all];
end

%% IPSCs from BC and BiC onto BC and BiC 

IPSC_all_on_BC_BiC = [];
ipsc_all_on_BC_BiC = [];
for i = 1:1:15
    pks_ipsc_all = peaks_all_PV_on_BC_BiC(:,i);
    pks_ipsc_all(pks_ipsc_all == 0) = [];
    ipsc_all_mean = mean(pks_ipsc_all);
    ipsc_all_std = std(pks_ipsc_all);
    ipsc_all_on_BC_BiC = [ipsc_all_mean;ipsc_all_std];
    IPSC_all_on_BC_BiC = [IPSC_all_on_BC_BiC ipsc_all_on_BC_BiC];
end 

IPSC_all_on_BC_BiC_table = IPSC_all_on_BC_BiC;
num = (1:15)';
IPSC_all_on_BC_BiC_table = array2table(IPSC_all_on_BC_BiC_table');
IPSC_all_on_BC_BiC_table.num = num;
IPSC_all_on_BC_BiC_table = [IPSC_all_on_BC_BiC_table(:,end) IPSC_all_on_BC_BiC_table(:,1) IPSC_all_on_BC_BiC_table(:,2)];

IPSC_all_on_BC_BiC_table.Properties.VariableNames = {'BC_and_BiC_Number', 'Mean_Peak', 'Standard_Deviation'};

IPSC_all_on_BC_BiC_mean = IPSC_all_on_BC_BiC(1,:);
IPSC_all_on_BC_BiC_std = IPSC_all_on_BC_BiC(2,:);
x = linspace(0,15,length(IPSC_all_on_BC_BiC_mean));
figure
scatter(x,IPSC_all_on_BC_BiC_mean,'black','filled');
set(gca, 'XTickLabel',[]);
a = [1:15]'; b =num2str(a); c=cellstr(b);
dx=0.1; dIPSC_all_on_BC_BiC_mean=0.1;
text(x+dx, IPSC_all_on_BC_BiC_mean+dIPSC_all_on_BC_BiC_mean, c);
xlabel('Each Point Includes 1 BC and 1 BiC ','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_all_on_BC_BiC_mean,IPSC_all_on_BC_BiC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BC, BiC onto BC, BiC','FontSize',15,'FontWeight','bold')

%% Mean Peak and Standard Deviation of IPSC from BC, BiC onto BC, BiC
fig = uitable('Data',IPSC_all_on_BC_BiC_table{:,:},...
    'RowName',[],...
    'ColumnName',{'1 BC, 1 BiC Number #','Mean Peak','Standard Deviation'},...
    'Units','Normalized',...
    'Position',[0, 0, 1, 1]);%% Display the table as a figure

%% BC and BiC ipsc currents together onto BC, BiC and AAC - graph and table %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

IPSC_all_on_BC_BiC_AAC = [];
ipsc_all_on_BC_BiC_AAC = [];
for i = 1:1:14 % number of PYR cells
    pks_ipsc_all = peaks_all_PV_on_BC_BiC_AAC(:,i);
    pks_ipsc_all(pks_ipsc_all == 0) = [];
    ipsc_all_mean = mean(pks_ipsc_all);
    ipsc_all_std = std(pks_ipsc_all);
    ipsc_all_on_BC_BiC_AAC = [ipsc_all_mean;ipsc_all_std];
    IPSC_all_on_BC_BiC_AAC = [IPSC_all_on_BC_BiC_AAC ipsc_all_on_BC_BiC_AAC];
end 

IPSC_all_on_BC_BiC_AAC = array2table(IPSC_all_on_BC_BiC_AAC);
IPSC_all_on_BC_BiC_AAC.Properties.VariableNames = {'BC_BiC_AAC1'...
    'BC_BiC_AAC2' 'BC_BiC_AAC3' 'BC_BiC_AAC4' 'BC_BiC_AAC5' 'BC_BiC_AAC6'...
    'BC_BiC_AAC7' 'BC_BiC_AAC8' 'BC_BiC_AAC9' 'BC_BiC_AAC10' 'BC_BiC_AAC11'...
    'BC_BiC_AAC12' 'BC_BiC_AAC13' 'BC_BiC_AAC14'};

IPSC_all_on_BC_BiC_AAC_mean = table2array(IPSC_all_on_BC_BiC_AAC(1,:));
IPSC_all_on_BC_BiC_AAC_std = table2array(IPSC_all_on_BC_BiC_AAC(2,:));
x = linspace(0,14,length(IPSC_all_on_BC_BiC_AAC_mean));
figure
scatter(x,IPSC_all_on_BC_BiC_AAC_mean,'black','filled');
xlabel('Each Point Includes BC, BiC, AAC','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_all_on_BC_BiC_AAC_mean,IPSC_all_on_BC_BiC_AAC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BC, BiC, AAC and BC, BiC, AAC','FontSize',15,'FontWeight','bold')

%% Display the table as a figure

uitable('Data',IPSC_all_on_BC_BiC_AAC{:,:},'ColumnName', IPSC_all_on_BC_BiC_AAC.Properties.VariableNames,...
    'Units', 'Normalized', 'Position',[0, 0, 1, 1]);

%% BC and BiC ipsc currents together onto BC, AAC - graph and table %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

IPSC_all_on_BC_AAC = [];
ipsc_all_on_BC_AAC = [];
for i = 1:1:14 % number of PYR cells
    pks_ipsc_all = peaks_all_PV_on_BC_AAC(:,i);
    pks_ipsc_all(pks_ipsc_all == 0) = [];
    ipsc_all_mean = mean(pks_ipsc_all);
    ipsc_all_std = std(pks_ipsc_all);
    ipsc_all_on_BC_AAC = [ipsc_all_mean;ipsc_all_std];
    IPSC_all_on_BC_AAC = [IPSC_all_on_BC_AAC ipsc_all_on_BC_AAC];
end 

IPSC_all_on_BC_AAC = array2table(IPSC_all_on_BC_AAC);
IPSC_all_on_BC_AAC.Properties.VariableNames = {'BC_AAC1'...
    'BC_AAC2' 'BC_AAC3' 'BC_AAC4' 'BC_AAC5' 'BC_AAC6'...
    'BC_AAC7' 'BC_AAC8' 'BC_AAC9' 'BC_AAC10' 'BC_AAC11'...
    'BC_AAC12' 'BC_AAC13' 'BC_AAC14'};

IPSC_all_on_BC_AAC_mean = table2array(IPSC_all_on_BC_AAC(1,:));
IPSC_all_on_BC_AAC_std = table2array(IPSC_all_on_BC_AAC(2,:));
x = linspace(0,14,length(IPSC_all_on_BC_AAC_mean));
figure
scatter(x,IPSC_all_on_BC_AAC_mean,'black','filled');
xlabel('Each Point Includes BC, AAC','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak IPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,IPSC_all_on_BC_AAC_mean,IPSC_all_on_BC_AAC_std,'b','LineStyle','none')
title('Mean Peak IPSC from BC, AAC onto BC, AAC','FontSize',15,'FontWeight','bold')

%% Display the table as a figure

uitable('Data',IPSC_all_on_BC_AAC{:,:},'ColumnName', IPSC_all_on_BC_AAC.Properties.VariableNames,...
    'Units', 'Normalized', 'Position',[0, 0, 1, 1]);

%% EPSC currents together onto BC, AAC - graph and table %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

EPSC_on_BC_AAC = [];
epsc_on_BC_AAC = [];
for i = 1:1:14 % number of PYR cells
    pks_epsc_all = peaks_PYR_on_BC_AAC(:,i);
    pks_epsc_all(pks_epsc_all == 0) = [];
    epsc_all_mean = mean(pks_epsc_all);
    epsc_all_std = std(pks_epsc_all);
    epsc_on_BC_AAC = [epsc_all_mean;ipsc_all_std];
    EPSC_on_BC_AAC = [EPSC_on_BC_AAC epsc_on_BC_AAC];
end 

EPSC_on_BC_AAC = array2table(EPSC_on_BC_AAC);
EPSC_on_BC_AAC.Properties.VariableNames = {'BC_AAC1'...
    'BC_AAC2' 'BC_AAC3' 'BC_AAC4' 'BC_AAC5' 'BC_AAC6'...
    'BC_AAC7' 'BC_AAC8' 'BC_AAC9' 'BC_AAC10' 'BC_AAC11'...
    'BC_AAC12' 'BC_AAC13' 'BC_AAC14'};

EPSC_on_BC_AAC_mean = table2array(EPSC_on_BC_AAC(1,:));
EPSC_on_BC_AAC_std = table2array(EPSC_on_BC_AAC(2,:));
x = linspace(0,14,length(EPSC_on_BC_AAC_mean));
figure
scatter(x,EPSC_on_BC_AAC_mean,'black','filled');
xlabel('Each Point Includes BC, AAC','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak EPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,EPSC_on_BC_AAC_mean,EPSC_on_BC_AAC_std,'b','LineStyle','none')
title('Mean Peak EPSC onto BC, BiC','FontSize',15,'FontWeight','bold')

%% Display the table as a figure

uitable('Data',EPSC_on_BC_AAC{:,:},'ColumnName', EPSC_on_BC_AAC.Properties.VariableNames,...
    'Units', 'Normalized', 'Position',[0, 0, 1, 1]);

%% EPSC currents together onto BC, BiC, AAC - graph and table %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

EPSC_on_BC_BiC_AAC = [];
epsc_on_BC_BiC_AAC = [];
for i = 1:1:14 % number of PYR cells
    pks_epsc_all = peaks_PYR_on_BC_BiC_AAC(:,i);
    pks_epsc_all(pks_epsc_all == 0) = [];
    epsc_all_mean = mean(pks_epsc_all);
    epsc_all_std = std(pks_epsc_all);
    epsc_on_BC_BiC_AAC = [epsc_all_mean;ipsc_all_std];
    EPSC_on_BC_BiC_AAC = [EPSC_on_BC_BiC_AAC epsc_on_BC_BiC_AAC];
end 

EPSC_on_BC_BiC_AAC = array2table(EPSC_on_BC_BiC_AAC);
EPSC_on_BC_BiC_AAC.Properties.VariableNames = {'BC_BiC_AAC1'...
    'BC_BiC_AAC2' 'BC_BiC_AAC3' 'BC_BiC_AAC4' 'BC_BiC_AAC5' 'BC_BiC_AAC6'...
    'BC_BiC_AAC7' 'BC_BiC_AAC8' 'BC_BiC_AAC9' 'BC_BiC_AAC10' 'BC_BiC_AAC11'...
    'BC_BiC_AAC12' 'BC_BiC_AAC13' 'BC_BiC_AAC14'};

EPSC_on_BC_BiC_AAC_mean = table2array(EPSC_on_BC_BiC_AAC(1,:));
EPSC_on_BC_BiC_AAC_std = table2array(EPSC_on_BC_BiC_AAC(2,:));
x = linspace(0,14,length(EPSC_on_BC_AAC_mean));
figure
scatter(x,EPSC_on_BC_BiC_AAC_mean,'black','filled');
xlabel('Each Point Includes BC, BiC, AAC','FontSize',13,'FontWeight','bold');
ylabel('Mean Peak EPSC','FontSize',13,'FontWeight','bold');
hold on;
errorbar(x,EPSC_on_BC_BiC_AAC_mean,EPSC_on_BC_BiC_AAC_std,'b','LineStyle','none')
title('Mean Peak EPSC onto BC, BiC, AAC','FontSize',15,'FontWeight','bold')

%% Display the table as a figure

uitable('Data',EPSC_on_BC_BiC_AAC{:,:},'ColumnName', EPSC_on_BC_BiC_AAC.Properties.VariableNames,...
    'Units', 'Normalized', 'Position',[0, 0, 1, 1]);


%% E/I Ratios on BC, BiC Cells %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

IPSC_BC_BiC_AAC_on_BC_BiC_AAC = table2array(IPSC_all_on_BC_BiC_AAC);
IPSC_BC_AAC_on_BC_AAC = table2array(IPSC_all_on_BC_AAC);

EPSC_on_BC_AAC = table2array(EPSC_on_BC_AAC);
EPSC_on_BC_BiC_AAC = table2array(EPSC_on_BC_BiC_AAC);

%IPSC_BC_on_BC = table2array(IPSC_BC_on_BC);
%IPSC_all_on_BC= table2array(IPSC_all_on_BC);  % all refers to BC and BiC together
%EPSC_BC = table2array(EPSC_BC);
%%
Ratios_BC_AAC = [];
Ratios_BC_BiC_AAC = [];
E_I_BC_AAC = abs(EPSC_on_BC_AAC(1,:)./IPSC_BC_AAC_on_BC_AAC(1,:))';
E_I_BC_BiC_AAC = abs(EPSC_on_BC_BiC_AAC(1,:)./IPSC_BC_BiC_AAC_on_BC_BiC_AAC(1,:))';

cells = 1:14;
Ratios_BC_AAC = [Ratios_BC_AAC cells' E_I_BC_AAC];
Ratios_BC_AAC = array2table(Ratios_BC_AAC);
Ratios_BC_AAC.Properties.VariableNames = {'cell_number' 'Ratio_BC_AAC'};

Ratios_BC_BiC_AAC = [Ratios_BC_BiC_AAC cells' E_I_BC_BiC_AAC];
Ratios_BC_BiC_AAC = array2table(Ratios_BC_BiC_AAC);
Ratios_BC_BiC_AAC.Properties.VariableNames = {'cell_number' 'Ratio_BC_BiC_AAC'};

%%
uitable('Data',Ratios_BC_AAC{:,:},'ColumnName',Ratios_BC_AAC.Properties.VariableNames,...
    'Units', 'Normalized', 'Position',[0, 0, 1, 1]);

%%
uitable('Data',Ratios_BC_BiC_AAC{:,:},'ColumnName',Ratios_BC_BiC_AAC.Properties.VariableNames,...
    'Units', 'Normalized', 'Position',[0, 0, 1, 1]);


%% E/I Ratios on PYR Cells

IPSC_BiC_on_BC = table2array(IPSC_BiC_on_BC);
IPSC_BC_on_BC = table2array(IPSC_BC_on_BC);
IPSC_all_on_BC= table2array(IPSC_all_on_BC);  % all refers to BC and BiC together
EPSC_BC = table2array(EPSC_BC);

Ratios_BC = [];
E_I_BC = abs(EPSC_BC(1,:)./IPSC_BC_on_BC(1,:))';
E_I_BiC = abs(EPSC_BC(1,:)./IPSC_BiC_on_BC(1,:))';
E_I_all = abs(EPSC_BC(1,:)./IPSC_all_on_BC(1,:))'; 
 
bc = 1:14;
Ratios_BC = [Ratios_BC bc' E_I_BC E_I_BiC E_I_all];
Ratios_BC = array2table(Ratios_BC);
 
Ratios_BC.Properties.VariableNames = {'BC_no' 'Ratio_BC_BC'...
    'Ratio_BiC_BC' 'Ratio_All_BC'};

%% Voltage
g = fullfile('/home','melisagumus','Documents', ...
    'MATLAB','CA1_SimTracker','pvbasket',{...
    'pvbasket_332810_1000';...
    'pvbasket_333500_1000';...
    'pvbasket_333776_1000';...
    'pvbasket_334466_1000';...
    'pvbasket_335018_1000';...
    'pvbasket_335432_1000';...
    'pvbasket_335846_1000';...
    'pvbasket_336260_1000';...
    'pvbasket_336536_1000';...
    'pvbasket_336674_1000';...
    'pvbasket_337088_1000';...
    'pvbasket_337364_1000';...
    'pvbasket_337640_1000';...
    'pvbasket_338192_1000'...
    },{...
    'othertrace_332810_soma.dat';...
    'othertrace_333500_soma.dat';...
    'othertrace_333776_soma.dat';...
    'othertrace_334466_soma.dat';...
    'othertrace_335018_soma.dat';...
    'othertrace_335432_soma.dat';...
    'othertrace_335846_soma.dat';...
    'othertrace_336260_soma.dat';...
    'othertrace_336536_soma.dat';...
    'othertrace_336674_soma.dat';...
    'othertrace_337088_soma.dat';...
    'othertrace_337364_soma.dat';...
    'othertrace_337640_soma.dat';...
    'othertrace_338192_soma.dat'...
    });

%%
allvol = [];
for m = 1:1:14
    temp_data = readtable(g{m},'Delimiter','\t');
    temp_data = table2array(temp_data);
    allvol = [allvol temp_data];
end

voldata = mat2cell(allvol, 40000, ...
    [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]);
%%
time = voldata{1}(:,1); % same for all cells
vol = [];
for k =1:14
    tempvol = voldata{k}(:,2);
    vol = [vol tempvol];
    subplot(7,2,k)
    plot(time,tempvol,'b')
    hold on
    title (['BC' num2str(k)]) % name each graph with the corresponding pyr #
end 
suptitle('Voltage Recordings from BC')


%% Raster Plot for one neuron - NOT FIXED

rasterfile = fullfile('/home','melisagumus','Documents', ...
                        'MATLAB','CA1_SimTracker','pyr',{...
                        'pyr_36884_1000';...
                        'pyr_68032_1000';...
                        'pyr_83606_1000';...
                        'pyr_99180_1000';...
                        'pyr_106967_1000';...
                        'pyr_114754_1000';...
                        'pyr_200411_1000';...
                        'pyr_254920_1000';...
                        'pyr_286068_1000';...
                        'pyr_301642_1000'...
                        },{...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat';...
                        'spikeraster.dat'...
                        });

%rasterfile = ('/home/melisagumus/Documents/MATLAB/CA1_SimTracker/pyr/pyr_36884_1000/spikeraster.dat');

raster = readtable(rasterfile{1},'Delimiter','\t');
num_spikes = length(raster.Var2);
var2 = (raster.Var2)';

plot([var2; var2], [ones(1,num_spikes); ones(1, num_spikes) + 1], 'b')
%%
num_spikes = raster.Var1';
plot([var2; var2], [num_spikes; num_spikes], 'b')


%% 
t = raster(:,1);
nspikes = numel(t);

for ii = 1:nspikes
    line([t(ii) t(ii)]);%[8474 8475], 'Color', 'k');
end 

%% 


%% 
pd = fitdist(AAC, 'Normal');
mean_cell = mean(pd);
x = 0:10:10000;
y = pdf(pd,x);

histogram(AAC,'Normalization','pdf')
ylim([0 4])
xlim([-5 5])
xlabel('EPSC')

%%
