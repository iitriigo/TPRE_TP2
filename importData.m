%% importData 
%This script imports the Data present in the DadosTPRE2 file which contains
%the initial data supplied by the professor without any alterations. 


%Data from excel - cronological variables 
disp('Importing data ...')
Month = xlsread('DadosTPRE2', 'A3:A16706'); disp('Month imported (1/17)');
Week = xlsread('DadosTPRE2', 'B3:B16706');  disp('Week imported (2/17)');
Hour = xlsread('DadosTPRE2', 'C3:C16706');  disp('Hour imported (3/17)');

%Data from excel - meteorological variables 
Temp = xlsread('DadosTPRE2', 'D3:D16706');   disp('Temp imported (4/17)');
Wind = xlsread('DadosTPRE2', 'E3:E16706'); disp('Wind imported (5/17)');
WindDirc = xlsread('DadosTPRE2', 'F3:F16706'); disp('WindDirc imported (6/17)');
Irradiance = xlsread('DadosTPRE2', 'G3:G16706'); disp('Irradiance imported (7/17)');
Rainfall = xlsread('DadosTPRE2', 'H3:H16706'); disp('Rainfall imported (8/17)');

%Data for prevision 
Price = xlsread('DadosTPRE2','I3:I16706'); disp('Price imported (9/17)');
EnerCons = xlsread('DadosTPRE2', 'J3:J16706'); disp('EnergyComp imported (10/17)');
Export = xlsread('DadosTPRE2', 'K3:K16706'); disp('Export imported (11/17)');
Eolic = xlsread('DadosTPRE2','L3:L16706'); disp('Eolic imported (12/17)');
Hydro = xlsread('DadosTPRE2', 'M3:M16706'); disp('Hydro imported (13/17)');
CG_Solar= xlsread('DadosTPRE2', 'N3:N16706'); disp('CG and Solar imported (14/17)');
Coal = xlsread('DadosTPRE2','O3:O16706'); disp('Coal imported (15/17)');
Nuc = xlsread('DadosTPRE2', 'P3:P16706'); disp('Nuclear imported (16/17)');
GN = xlsread('DadosTPRE2', 'Q3:Q16706'); disp('GN imported (17/17)');
disp('Data imported succesfully!');
