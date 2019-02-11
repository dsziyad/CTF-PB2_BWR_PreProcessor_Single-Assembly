%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                    Group 13 - Boundary Conditions Data                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%Assigning Mass Flow Rate in each subchannel, bypass and water rods
M=Min*ones(n^2+3,1);
%Corner channels
M(1)=Mc;
M(n)=Mc;
M(n^2-n+1)=Mc;
M(n^2)=Mc;
M(n^2+1)=Mby;
M(n^2+2,1)=Mw; %For Assembly 4,5,6
M(n^2+3,1)=Mw; %For Assembly 6

%Side Channels
for i=2:n-1
    M(i)=Ms;
end
for i=n+1:n:n*(n-2)+1
    M(i)=Ms;
end
for i=2*n:n:n*(n-1)
    M(i)=Ms;
end
for i=n*(n-1)+2:n^2-1
    M(i)=Ms;
end

Z=zeros(n^2+3,3);
I=1:n^2+3;
I=transpose(I);


% fileID = fopen('PreProcessorBWR.inp','a');
Title_1314='********************************************************************************';
Title_1315='* Group 13 - Boundary Conditions Data                                          *';              
Title_1316='********************************************************************************';
fprintf(fileID,'%s\n',Title_1314);
fprintf(fileID,'%s\n',Title_1315);
fprintf(fileID,'%s\n',Title_1316);

Title_131='**NGR';
Title_132='13';
Title_133='*NBND NKBD NFUN NM02 NM03 NM04 NM05 NM06 NM07 NM08 NM09 NM10 NM11 NM12 NM13 NM14';
NFUN=1; %Total number of forcing functions for the boundary conditions
Title_134=[2*Nch 0 1 0 0 0 0 0 0 0 0 0 0 0];
Title_135='*NTPS';
NTPS=3; % Number of pairs of values in forcing function table K
Title_136=NTPS;
Title_137='*ABSC    ORDINT ABSC    ORDINT  ABSC    ORDINT';
ABSC1= 0.0; % Transient time
ORDINT1= 0.0; % Forcing function factor to be applied at time ABSCIS(K,I)
ABSC2= 0.1; % Transient time
ORDINT2=1.0;% Forcing function factor to be applied at time ABSCIS(K,I)
ABSC3= 1500.;% Transient time
ORDINT3=1.0;% Forcing function factor to be applied at time ABSCIS(K,I)
Title_138=[  ABSC1     ORDINT1  ABSC2   ORDINT2 ABSC3       ORDINT3 ];
Title_139='* Inlet b.c. ----------------------------------------------------------';
Title_1310='*IBD1 IBD2 ISPC N1FN N2FN N3FN   BCVALUE1   BCVALUE2   BCVALUE3 INITGAS';
Title_1311=zeros(Nch,10);
for i=1:Nch
    Title_1311 (i,1)=I(i);
    Title_1311(i,2)= 1;
    Title_1311(i,3)=  2;
    Title_1311(i,4)= 1;
    Title_1311(i,5)=0;
    Title_1311(i,6)=0;
    Title_1311(i,7)= M(i);
    Title_1311(i,8)=Hin;
    Title_1311(i,9)=0;
    Title_1311(i,10)=1;
end
Title_1312='**outlet b.c. ------------------------------------------------------------ ';
Title_1313=zeros(Nch,10);
for i=1:Nch
    Title_1313 (i,1)=I(i);
    Title_1313(i,2)= (nono+2);
    Title_1313(i,3)=  1;
    Title_1313(i,4)= 0;
    Title_1313(i,5)=0;
    Title_1313(i,6)=0;
    Title_1313(i,7)= 0;
    Title_1313(i,8)=0;
    Title_1313(i,9)=Pout;
    Title_1313(i,10)=1;
end
fprintf(fileID,'%s\n',Title_131);
fprintf(fileID,'%s\n',Title_132);
fprintf(fileID,'%s\n',Title_133);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_134);
fprintf(fileID,'%s\n',Title_135);
fprintf(fileID,'%1.0f \n',Title_136);
fprintf(fileID,'%s\n',Title_137);
fprintf(fileID,'%1.1f   %1.1f   %1.1f   %1.1f   %1.1f   %1.1f\n',Title_138);
fprintf(fileID,'%s\n',Title_135);
fprintf(fileID,'%s\n',Title_139);
fprintf(fileID,'%s\n',Title_1310);
for i=1:Nch
    fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f %1.8f %1.2f %1.0f   %1.0f\n',Title_1311(i,:));
end
fprintf(fileID,'%s\n',Title_1312);
for i=1:Nch
    fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f %1.0f %1.2f %1.4f   %1.0f\n',Title_1313(i,:));
end
%%