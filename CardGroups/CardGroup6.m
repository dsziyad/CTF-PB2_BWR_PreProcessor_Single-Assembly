%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               GROUP 6 - Channels and Gaps Affected by Variation Tables                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

if Assembly==3
% fileID = fopen('PreProcessorBWR.inp','a');
Title_61='*******************************************************************************';
Title_62='* GROUP 6 - Channels and Gaps Affected by Variation Tables                    *';
Title_63='*******************************************************************************';
Title_64='**NGR';
Title_65='6';
Title_66='*Card 6.1';
Title_67='* N1 NDM2 NDM3 NDM4 NDM5 NDM6 NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';
Title_68= [   2       0    0    0    0    0    0    0    0    0    0    0    0    0];
Title_69='*Card 6.2';
Title_610='* External area (CA, MA, PM) Partial Rod ';
Title_611='* *IACT IAMT IPWT ICGR1 ICGR2 ICGR3 ICGR4 ICGR5 ICGR6 ICGR7 ... ICGR12 ';
Title_612=[1    1   2    36   37   44  45  0    0    0    0    0    0    0    0  ];
Title_613='* Gap change';
Title_614='**IACT IAMT IPWT ICGR1 ICGR2 ICGR3 ICGR4 ICGR5 ICGR6 ICGR7 ... ICGR12';
Title_615=[   -3    0   0    32 39 92 93    0    0    0    0    0    0    0    0 ];

fprintf(fileID,'%s\n',Title_61);
fprintf(fileID,'%s\n',Title_62);
fprintf(fileID,'%s\n',Title_63);
fprintf(fileID,'%s\n',Title_64);
fprintf(fileID,'%s\n',Title_65);
fprintf(fileID,'%s\n',Title_66);
fprintf(fileID,'%s\n',Title_67);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_68);
fprintf(fileID,'%s\n',Title_69);
fprintf(fileID,'%s\n',Title_610);
fprintf(fileID,'%s\n',Title_611);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f  %1.0f \n',Title_612);
fprintf(fileID,'%s\n',Title_613);
fprintf(fileID,'%s\n',Title_614);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f  %1.0f \n',Title_615);
end