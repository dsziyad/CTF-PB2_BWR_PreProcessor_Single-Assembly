%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Group 7 - Local Pressure Loss Coefficient and Grid Spacer Data        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% fileID = fopen('PreProcessorBWR.inp','a');
X7=ceil((n^2)/12);
Title_71=zeros(1,12*X7);
Title_72=1:(n)^2;

for i=1:(n)^2
    Title_71(i)=Title_72(i);
end
% 
Title_71 = reshape(Title_71,12,X7);
Title_71=transpose(Title_71);

Title_710=[ 0.00450*ones(X7,1) 2*ones(X7,1) Title_71;
    0.00450*ones(X7,1) 2*ones(X7,1) Title_71;
    0.00450*ones(X7,1) 7*ones(X7,1) Title_71;
    0.00450*ones(X7,1) 11*ones(X7,1) Title_71;
    0.00450*ones(X7,1) 16*ones(X7,1) Title_71;
    0.00450*ones(X7,1) 20*ones(X7,1) Title_71;
    0.00450*ones(X7,1) 25*ones(X7,1) Title_71];


Title_71='********************************************************************************';
Title_72='* Group 7 - Local Pressure Loss Coefficient and Grid Spacer Data               *';              
Title_73='********************************************************************************';   
Title_74='*NGRP';
Title_711='7';
Title_75='* Card 7.1';
Title_76='* NCD  NGT IFGQ IFSD IFES IFTP GTMP NFBS NM09 NM10 NM11 NM12 NM13 NM14';
Title_77=[   X7*7    0    0    0    0    0    0    0    0    0    0    0    0    0];
Title_78='* Card 7.2';
Title_79='*   CDL     J IC01 IC02 IC03 IC04 IC05 IC06 IC07 IC08 IC09 IC10 IC11 IC12';

fprintf(fileID,'%s\n',Title_71);
fprintf(fileID,'%s\n',Title_72);
fprintf(fileID,'%s\n',Title_73);
fprintf(fileID,'%s\n',Title_74);
fprintf(fileID,'%s\n',Title_711);
fprintf(fileID,'%s\n',Title_75);
fprintf(fileID,'%s\n',Title_76);
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Title_77);
fprintf(fileID,'%s\n',Title_78);
fprintf(fileID,'%s\n',Title_79);

for i=1:X7*7
fprintf(fileID,'%1.5f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Title_710(i,:));
end
