% fileID = fopen('PreProcessorBWR.inp','a');


Title_91='***********************************************************************************************';
fprintf(fileID,'%s\n',Title_91);

Title_92='* Group 9 - Conductor Geometry Description                                                    *';
fprintf(fileID,'%s\n',Title_92);

Title_93='***********************************************************************************************';
fprintf(fileID,'%s\n',Title_93);

Title_94='**NGR  ';
fprintf(fileID,'%s\n',Title_94);

Title_95=9;
fprintf(fileID,'%1.0f\n',Title_95);

Title_96='*Card 9.1';
fprintf(fileID,'%s\n',Title_96);

Title_97='*NFLT IRLF ICNF IMWR NM05 NM06 NM07 NM08 NM09 NM10 NM11 NM12 NM13 NM14';
fprintf(fileID,'%s\n',Title_97);

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly == 7
    if Bypass==1
    Title_98=[ 1    0    0    0    0    0    0    0    0    0    0    0    0    0];
    elseif Bypass==2
    Title_98=[ 3    0    0    0    0    0    0    0    0    0    0    0    0    0];
    end
elseif Assembly == 4 || Assembly ==5 || Assembly ==6
    if Bypass==1
    Title_98=[ 2    0    0    0    0    0    0    0    0    0    0    0    0    0];
    elseif Bypass==2
    Title_98=[ 4    0    0    0    0    0    0    0    0    0    0    0    0    0];
    end
end
    
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Title_98);


Title_99='* Card 9.2 for fuel rod';
fprintf(fileID,'%s\n',Title_99);


Title_910='* *   I FTYP     DROD     DFUL NFUL IMTF IMTC IMOX DCRE     TCLD  FTDS IGPC IGFC IRDP';
fprintf(fileID,'%s\n',Title_910);

Title_911=['    1 nucl ' chrDrod ' ' chrDfuel ' 10    0    0    0  0.0  ' chrTcld ' ' chrFTDS '  0    0    0'];
fprintf(fileID,'%s\n',Title_911);

if Bypass==2
Title_912='*Card 9.6 for water rod corner';
fprintf(fileID,'%s\n',Title_912);


Title_913='* *   I FTYP     DROD     DFUL NFUL IMTF IMTC IMOX DCRE     TCLD  FTDS IGPC IGFC IRDP';
fprintf(fileID,'%s\n',Title_913);

Title_914='    2 wall 0.0187452 0.0187452 1    0    0    0  0  0 0  0    0    0';
fprintf(fileID,'%s\n',Title_914);

Title_915='*NODR MATR    TREG    QREG';
fprintf(fileID,'%s\n',Title_915);

Title_916=['    2 1 ' chrDfuel ' 0.0000' ];
fprintf(fileID,'%s\n',Title_916);

Title_917='*Card 9.6 for water rod side';
fprintf(fileID,'%s\n',Title_917);


Title_918='* *   I FTYP     DROD     DFUL NFUL IMTF IMTC IMOX DCRE     TCLD  FTDS IGPC IGFC IRDP';
fprintf(fileID,'%s\n',Title_918);

Title_919='    3 wall 0.01830149 0.01515364 1    0    0    0  0  0 0  0    0    0';
fprintf(fileID,'%s\n',Title_919);


Title_920='*NODR MATR    TREG    QREG';
fprintf(fileID,'%s\n',Title_920);


Title_921=['    2 1 ' chrDfuel ' 0.0000' ];
fprintf(fileID,'%s\n',Title_921);
end

if Assembly ==4 || Assembly ==5 || Assembly ==6
Title_922='* *   I FTYP     DROD     DFUL NFUL IMTF IMTC IMOX DCRE     TCLD  FTDS IGPC IGFC IRDP';
fprintf(fileID,'%s\n',Title_922);

if Bypass==1

Title_923='    2 wall 0.0098347558 0.0084783732 1    0    0    0  0  0 0  0    0    0';
fprintf(fileID,'%s\n',Title_923);
elseif Bypass==2
    Title_923='    4 wall 0.0098347558 0.0084783732 1    0    0    0  0  0 0  0    0    0';
fprintf(fileID,'%s\n',Title_923);
end

Title_924='*NODR MATR    TREG    QREG';
fprintf(fileID,'%s\n',Title_924);

Title_925=['    2 1 0.08636 0.0000' ];
fprintf(fileID,'%s\n',Title_925);
end

