%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Group 1 - Calculation Variables and Initial Conditions           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% fileID = fopen('PreProcessorBWR.inp','a');

Title_11='*******************************************************************************';
fprintf(fileID,'%s\n',Title_11);

Title_12='* Group 1 - Calculation Variables and Initial Conditions                      *';
fprintf(fileID,'%s\n',Title_12);

Title_13='*******************************************************************************';
fprintf(fileID,'%s\n',Title_13);

Title_14='*NGRP';
fprintf(fileID,'%s\n',Title_14);

Title_15='   1';
fprintf(fileID,'%s\n',Title_15);

Title_16='*NGAS IRFC EDMD IMIX ISOL GINIT NOTRANS MESH MAPS IPRP NM11 NM12 NM13 NM14';
fprintf(fileID,'%s\n',Title_16);

NGAS=1; %Number of non-condensable gases
IRFC=2; % Rod friction factor correlation: Check Manual
EDMD=1; % Entrainment and deposition model: Check Manual: 1 - Original model
IMIX=2; % Mixing and void drift model: 2 - Single-phase mixing coecient according to Rogers and Rosehart (1972)
ISOL=0; % Solver for the pressure equation: 0 - Direct Gaussian elimination or Iterative Gauss-Seidel solver (For pressure equation, selection by means of parameter NSIM in Card Group 4.1)
GINIT=0; % Value of the mass  flow rate to initialize mass flow rate in the entire CTF mesh. The cross-sectional area. 0.0 if specifying the mass flux for initialization.
NOTRANS=0; %0 - Use Card Group 15 transient information
MESH=0; %0 - No meshing information
MAPS=0; %0 - Do not look for Group 17 or print HDF5 edits
IPRP=0; %Fluid property tables to use: 0 - Original CTF property tables (mix of various sources)


Title_17=[ NGAS IRFC EDMD IMIX ISOL GINIT NOTRANS MESH MAPS IPRP    0    0    0    0];
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_17);

Title_18='*      GTOT      AFLUX    DHFRAC';
fprintf(fileID,'%s\n',Title_18);

Title_19=[    0   q    0.04];
fprintf(fileID,'%1.0f   %1.6f   %1.2f\n',Title_19);

Title_110='*      PREF        HIN      [HGIN]    VFRAC1    VFRAC2';
fprintf(fileID,'%s\n',Title_110);

Title_111=[p H Hg   1.0     0.9999];
fprintf(fileID,'%1.4f   %1.2f   %1.2f %1.2f %1.4f\n',Title_111);

Title_112='*GTYPE         VFRAC';
fprintf(fileID,'%s\n',Title_112);

Title_113=['air           0.0001'];
fprintf(fileID,'%s\n',Title_113);
%%



