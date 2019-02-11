%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Group 12 - Turbulent mixing and void drift data              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% fileID = fopen('PreProcessorBWR.inp','a');

Title_121='********************************************************************************';
Title_122='* Group 12 - Turbulent mixing and void drift data                              *';              
Title_123='********************************************************************************';        
Title_124='*NGRP';                                                                                          
Title_125='12';
Title_126='* AAAK     DFROD      THETM'; 
AAAK=1.4; %Equilibrium distribution weighting factor Km in void drift model
THETM=5.0; % Ratio between the maximum two-phase turbulent mixing coecient (near the transition between slug and annular flowthe single-phase mixing coefficient (in single-phase liquid)
Title_127=[AAAK Drod THETM]; 
fprintf(fileID,'%s\n',Title_121);
fprintf(fileID,'%s\n',Title_122);
fprintf(fileID,'%s\n',Title_123);
fprintf(fileID,'%s\n',Title_124);
fprintf(fileID,'%s\n',Title_125);
fprintf(fileID,'%s\n',Title_126);
fprintf(fileID,'%1.1f %1.5f %1.1f\n',Title_127);
%%