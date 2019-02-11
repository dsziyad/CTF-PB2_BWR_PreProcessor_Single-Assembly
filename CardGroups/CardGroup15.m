%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Group 15 - Time Domain Data                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Print card group 15
% fileID = fopen('PreProcessorBWR.inp','a');

Title_151='********************************************************************************';
Title_152='* Group 15 - Time Domain Data                                                  *';              
Title_153='********************************************************************************';        
Title_154='*NGRP';                                                                                          
Title_155='15';
Title_156='*    DTMIN   DTMAX  TEND  EDINT  DMPINT   RTWFP';
DTMIN=0.0000001; %minimum time step
DTMAX=0.001; %Maximum time step
TEND=40; %End of time domain
EDINT=10; %Time of printing output
DMPRINT=100.0; %Restart dump interval
RTWFP=1.0; %Ratio of time step sizes for heat conduction solution and fluid solutionn
Title_157=[DTMIN DTMAX TEND EDINT DMPRINT RTWFP];
Title_158='*    DTMIN (if negative stop)';
DTMIN=-1.0;
Title_159=[DTMIN     0.0   0.0   0.0     0.0     0.0];                                                                 
fprintf(fileID,'%s\n',Title_151);
fprintf(fileID,'%s\n',Title_152);
fprintf(fileID,'%s\n',Title_153);
fprintf(fileID,'%s\n',Title_154);
fprintf(fileID,'%s\n',Title_155);
fprintf(fileID,'%s\n',Title_156);
fprintf(fileID,'%1.7f %1.3f %1.0f %1.0f %1.1f %1.0f\n',Title_157);
fprintf(fileID,'%s\n',Title_158);
fprintf(fileID,'%1.1f %1.1f %1.1f %1.1f %1.1f %1.1f\n',Title_159);
%%