
% fileID = fopen('PreProcessorBWR.inp','a');

Title_101='********************************************************************************';
Title_102='* GROUP 10 - Material Properties Tables                                        *';              
Title_103='********************************************************************************';        
Title_104='*NGRP';                                                                                          
Title_105='10';
Title_106='*NMAT NDM2 NDM3 NDM4 NDM5 NDM6 NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';                     
Title_107='1   0   0   0   0   0   0   0   0   0   0   0   0   0';
Title_108='*   N NTDP     RCOLD    IMATAN';
Title_109='1   6   8470.57   Inconel   600';
Title_1010='*    TPROP     CPF1      THCF';                                                                  
Title_1011='-73   0.377   13.40';
Title_1012='93   0.464   15.71';
Title_1013='204   0.485   17.44';
Title_1014='427   0.527   20.90';
Title_1015='649   0.586   24.79';
Title_1016='871   0.623   28.83';
fprintf(fileID,'%s\n',Title_101);
fprintf(fileID,'%s\n',Title_102);
fprintf(fileID,'%s\n',Title_103);
fprintf(fileID,'%s\n',Title_104);
fprintf(fileID,'%s\n',Title_105);
fprintf(fileID,'%s\n',Title_106);
fprintf(fileID,'%s\n',Title_107);
fprintf(fileID,'%s\n',Title_108);
fprintf(fileID,'%s\n',Title_109);
fprintf(fileID,'%s\n',Title_1010);
fprintf(fileID,'%s\n',Title_1011);
fprintf(fileID,'%s\n',Title_1012);
fprintf(fileID,'%s\n',Title_1013);
fprintf(fileID,'%s\n',Title_1014);
fprintf(fileID,'%s\n',Title_1015);
fprintf(fileID,'%s\n',Title_1016);