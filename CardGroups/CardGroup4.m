%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Group  4 - Vertical Channel Connection Data                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
I=1:n^2+3;
I = transpose(I);
Z=zeros(n^2+3, 1);

I=[I I Z Z Z Z Z I Z Z Z Z Z];

% fileID = fopen('PreProcessorBWR.inp','a');

Title_41='*******************************************************************************';
fprintf(fileID,'%s\n',Title_41);

Title_42='* Group  4 - Vertical Channel Connection Data                                 *';
fprintf(fileID,'%s\n',Title_42);

Title_43='*******************************************************************************';
fprintf(fileID,'%s\n',Title_43);

Title_44='*NGRP';
fprintf(fileID,'%s\n',Title_44);

Title_45='   4';
fprintf(fileID,'%s\n',Title_45);

Title_46='*Card4.1';
fprintf(fileID,'%s\n',Title_46);

Title_47='**NSEC NSIM IREB NDM4 NDM5 NDM6 NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';
fprintf(fileID,'%s\n',Title_47);

Title_48=[1    1    0    0    0    0    0    0    0    0    0    0    0    0];
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_48);

Title_47='*Card4.2';
fprintf(fileID,'%s\n',Title_47);

Title_48='**ISEC    NCHN  NONO   DXS     IVAR ';
fprintf(fileID,'%s\n',Title_48);

Title_49=[1 Nch  nono  L/nono 0];
fprintf(fileID,'%1.0f %1.0f %1.0f %1.5f %1.0f \n',Title_49);

Title_410='*Card4.4';
fprintf(fileID,'%s\n',Title_410);

Title_411='**    I   KCHA  KCHA  KCHA  KCHA  KCHA  KCHA   KCHB  KCHB  KCHB  KCHB  KCHB  KCHB';
fprintf(fileID,'%s\n',Title_411);

for i=1:Nch
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',I(i,:));
end

Title_412='*Card4.5';
fprintf(fileID,'%s\n',Title_412);

Title_413='**  IWDE';
fprintf(fileID,'%s\n',Title_413);

Title_414=Nch;
fprintf(fileID,'%1.0f\n',Title_414);


Title_415='*Card4.6';
fprintf(fileID,'%s\n',Title_415);

Title_416='**  MSIM';
fprintf(fileID,'%s\n',Title_416);

Title_414=nono*Title_414;
fprintf(fileID,'%1.0f\n',Title_414);
%%