%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            Group 11 - Axial Power Tables and Forcing Functions          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
Y=0:(L/(nono+3)):L;
l=length(Y);
Y=transpose(Y);
AXIAL=ones(l,1);

% fileID = fopen('PreProcessorBWR.inp','a');

Title_111='********************************************************************************';
Title_112='* Group 11 - Axial Power Tables and Forcing Functions                          *';              
Title_113='********************************************************************************';        
Title_114='*NGRP';                                                                                          
Title_115='11';
Title_116='*NQA NAXP MNXN   NQ NGPF  NQR NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14'; 
Title_117=[    1    1   nono+4    0    0    1    0    0    0    0    0    0    0    0];
Title_118='* Card 11.2 - Axial Power Forcing Functions'; 
Title_119='* YQA'; 
Title_1110='0.0';
Title_1111='* Card 11.3 - Normal rod power table';
Title_1112='*  I NAXN';
Title_1113=[1 nono+4];
Title_1114='* Card 11.4';
Title_1115=[Y AXIAL];
Title_1115=transpose(Title_1115);
Title_1116='* Card 11.7 - Radial Power Forcing Functions';
Title_1117='*      YQR';
Title_1127='    0.0';
Title_1119='* Card 11.8 - Radial power for all rods';
Title_1120='*    FQR     FQR     FQR     FQR     FQR     FQR     FQR     FQR';

if Assembly ==1 || Assembly == 2 || Assembly ==3 || Assembly ==7
    Nrod=N*N;
elseif Assembly ==4 || Assembly == 5
    Nrod=N*N-1;
elseif  Assembly ==6
    Nrod=N*N-2;
end

X11=floor(Nrod/8);
Title_1121=ones(1,8*X11);
H1=ones((N)^2,1);

% for i=1:(N)^2
%     Title_1118(i)=H1(i);
% end

Title_1123 = reshape(Title_1121,X11,8);
Title_1124= ones((Nrod-8*floor(Nrod/8)),1);
Title_1124= transpose(Title_1124);

fprintf(fileID,'%s\n',Title_111);
fprintf(fileID,'%s\n',Title_112);
fprintf(fileID,'%s\n',Title_113);
fprintf(fileID,'%s\n',Title_114);
fprintf(fileID,'%s\n',Title_115);
fprintf(fileID,'%s\n',Title_116);
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Title_117);
fprintf(fileID,'%s\n',Title_118);
fprintf(fileID,'%s\n',Title_119);
fprintf(fileID,'%s\n',Title_1110);
fprintf(fileID,'%s\n',Title_1111);
fprintf(fileID,'%s\n',Title_1112);
fprintf(fileID,'%1.0f %1.0f \n',Title_1113);
fprintf(fileID,'%s\n',Title_1114);
fprintf(fileID,'%1.5f %1.5f \n',Title_1115);
fprintf(fileID,'%s\n',Title_1116);
fprintf(fileID,'%s\n',Title_1117);
fprintf(fileID,'%s\n',Title_1127);
fprintf(fileID,'%s\n',Title_1119);
fprintf(fileID,'%s\n',Title_1120);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',Title_1123);
for ii = 1:size(Title_1124,1)
    fprintf(fileID,'%g\t',Title_1124(ii,:));
    fprintf(fileID,'\n');
end