%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Group 1 - Calculation Variables and Initial Conditions           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% fileID = fopen('PreProcessorBWR.inp','w');

Title_H1='*ICOBRA';
fprintf(fileID,'%s\n',Title_H1);

Title_H2='1';
fprintf(fileID,'%s\n',Title_H2);

Title_H3='* CARD INPUT 3';
fprintf(fileID,'%s\n',Title_H3);

Title_H4='* INITIAL      DUMPF';
fprintf(fileID,'%s\n',Title_H4);

Title_H5='      1          1';
fprintf(fileID,'%s\n',Title_H5);

Title_H6='* CARD INPUT 4';
fprintf(fileID,'%s\n',Title_H6);

Title_H7='*        EPSO        OITMAX        IITMAX   ';
fprintf(fileID,'%s\n',Title_H7);

Title_H8='         0.001            10            40       ';
fprintf(fileID,'%s\n',Title_H8);

Title_H9='* CARD COBRA 1';
fprintf(fileID,'%s\n',Title_H9);

Title_H10='*---------- TEXT ------------>';
fprintf(fileID,'%s\n',Title_H10);

Title_H11='    **PB2 Assembly1** ';
fprintf(fileID,'%s\n',Title_H11);

Title_H12='* ';
fprintf(fileID,'%s\n',Title_H12);
%%