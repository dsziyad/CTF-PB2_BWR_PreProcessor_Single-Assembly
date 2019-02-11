%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               GROUP 5 - Geometry Variation Data                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

if Assembly==3
% fileID = fopen('PreProcessorBWR.inp','a');

Title_51='*******************************************************************************';
Title_52='* Group 5 - Geometry Variation Data                                           *';
Title_53='*******************************************************************************';
Title_54='**NGR';
Title_56='5';
Title_57='*Card 5.1';
Title_58='** NFACT  NAXL NDM3 NDM4 NDM5 NDM6 NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';
Title_59= [   3       7    0    0    0    0    0    0    0    0    0    0    0    0];
Title_510='*Card 5.2';
Title_511='* AN change subchannels with partial lenght rods ';
Title_512='* JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT';
Title_513=[  1 1.0000  2 1.0000 floor(nono*3.30/L) 1.0000 ceil(nono*3.30/L) 1.2244 ceil(nono*3.30/L)+1 1.2244 25 1.2244 26 1.2244];
Title_514='* PW change subchannels with partial lenght rods';
Title_515='* JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT';
Title_516=[  1 1.0000  2 1.0000 floor(nono*3.30/L) 1.0000 ceil(nono*3.30/L) 0.7500 ceil(nono*3.30/L)+1 0.7500 25 0.7500 26 0.7500];
Title_517='* Gap change with partial lenght rods';
Title_518='* JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT JAX FACT';
Title_519=[  1 1.0000  2 1.0000 floor(nono*3.30/L) 1.0000 ceil(nono*3.30/L) 2.73276 ceil(nono*3.30/L)+1 2.73276 25 2.73276 26 2.73276];


fprintf(fileID,'%s\n',Title_51);
fprintf(fileID,'%s\n',Title_52);
fprintf(fileID,'%s\n',Title_53);
fprintf(fileID,'%s\n',Title_54);
fprintf(fileID,'%s\n',Title_56);
fprintf(fileID,'%s\n',Title_57);
fprintf(fileID,'%s\n',Title_58);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_59);
fprintf(fileID,'%s\n',Title_510);
fprintf(fileID,'%s\n',Title_511);
fprintf(fileID,'%s\n',Title_512);
fprintf(fileID,'%1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f \n',Title_513);
fprintf(fileID,'%s\n',Title_514);
fprintf(fileID,'%s\n',Title_515);
fprintf(fileID,'%1.0f   %1.5f   %1.0f   %1.5f   %1.0f   %1.5f   %1.0f   %1.5f   %1.0f   %1.5f   %1.0f   %1.5f   %1.0f   %1.5f \n',Title_516);
fprintf(fileID,'%s\n',Title_517);
fprintf(fileID,'%s\n',Title_518);
fprintf(fileID,'%1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f   %1.0f   %1.4f \n',Title_513);
end