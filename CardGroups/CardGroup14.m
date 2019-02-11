%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  Group 14 - Output Options                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
% fileID = fopen('PreProcessorBWR.inp','a');

Title_141='********************************************************************************';
Title_142='* Group 14 - Output Options                                                    *';              
Title_143='********************************************************************************';        
Title_144='*NGRP';                                                                                          
Title_145='14';
Title_146='*  N1 NOU1 NOU2 NOU3 NOU4 IPRP IOPT NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';
N1=5; %print channels, gaps, rods, and unheated conductors
NOU1=0; % all channels will be printed
NOU2=0; % all rods will be printed
NOU3=0; % all gaps will be printed
NOU4=0; % all unheated conductors will be printed
IPRP=0; % do not print the property table
IOPT=4; % optional printout (print subchannel void fraction in  void.out
Title_147=[N1    0    0    0    0    0    IOPT    0    0    0    0    0    0    0];
fprintf(fileID,'%s\n',Title_141);
fprintf(fileID,'%s\n',Title_142);
fprintf(fileID,'%s\n',Title_143);
fprintf(fileID,'%s\n',Title_144);
fprintf(fileID,'%s\n',Title_145);
fprintf(fileID,'%s\n',Title_146);
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Title_147);
%%
