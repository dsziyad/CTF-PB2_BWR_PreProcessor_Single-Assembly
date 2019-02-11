%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  Group 3 - Gap connection data                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
G=zeros(2*(n*(n-1)), 3);

E=zeros(n,n-1);

for i=1:n
    for j=1:n-1
        E(i,j)=i-1;
    end
end
E=transpose(E);
E = reshape(E,(n)*(n-1),1);

for i=1:n*(n-1)
    G(i,1)=i;
    G(i,2)=i+E(i);
    G(i,3)=i+E(i)+1;
end

for i=n*(n-1)+1:2*n*(n-1)
    G(i,1)=i;
    G(i,2)=i-n*(n-1);
    G(i,3)=i-n*(n-1)+n;
end

for i=1:2*n*(n-1)
        if Type(G(i,2))== 2;
            G(i,4)=0.0036449;
            G(i,5)=0.0141986;
        elseif Type(G(i,2))==1 && Type(G(i,3))==1;
            G(i,4)=0.0036449;
            G(i,5)=0.0187452;
            else
            G(i,4)=0.004445;
            G(i,5)=0.0187452;
        end
end
        
E1=0.5*ones(2*n*(n-1),1); 
E2=0.5*ones(2*n*(n-1),1);
E3=zeros(2*n*(n-1),1);
E4= zeros(2*n*(n-1),1);
E5= ones(2*n*(n-1),1);
E6=-ones(2*n*(n-1),1);
E7=-ones(2*n*(n-1),1);
E8=zeros(2*n*(n-1),1);
E9=zeros(2*n*(n-1),1);
E10=zeros(2*n*(n-1),1);
E11=zeros(2*n*(n-1),1);

Gap=[G E1 E2 E3 E4 E5 E6 E7 E8 E9 E10 E11];

E12=ones(2*n*(n-1),1);
E13=zeros(2*n*(n-1),1);

E14=[E12 E13];
% fileID = fopen('PreProcessorBWR.inp','a');
Title_312='*******************************************************************************';
Title_313='* Group 3 - Gap connection data                                               *';
Title_314='*******************************************************************************';
Title_31='**NGR';
Title_32='3';
Title_33='*Card 3.1';
Title_34='**  NK NDM2 NDM3 NDM4 NDM5 NDM6 NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';
Title_35=[2*n*(n-1)    0    0    0    0    0    0    0    0    0    0    0    0    0];
Title_36='*Card 3.2';
Title_37='**   K    IK    JK     GAP    LNGT  WKR FWAL IGPB IGPA FACT IGAP JGAP IG JG IG JG';
Title_38='*Card 3.3';
Title_39='**GMULT   ETNR ';
Title_310='***Card 3.4';
Title_311='****NLGP';
Card34=[0 0];
fprintf(fileID,'%s\n',Title_312);
fprintf(fileID,'%s\n',Title_313);
fprintf(fileID,'%s\n',Title_314);
fprintf(fileID,'%s\n',Title_31);
fprintf(fileID,'%s\n',Title_32);
fprintf(fileID,'%s\n',Title_33);
fprintf(fileID,'%s\n',Title_34);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_35);
fprintf(fileID,'%s\n',Title_36);
fprintf(fileID,'%s\n',Title_37);
fprintf(fileID,'%s\n',Title_38);
fprintf(fileID,'%s\n',Title_39);
for i=1:2*n*(n-1)
    fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.7f   %1.7f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f %1.0f   %1.0f\n',Gap(i,:));
    fprintf(fileID,'%1.0f   %1.0f\n',E14(i,:));
end
fprintf(fileID,'%s\n',Title_310);
fprintf(fileID,'%s\n',Title_311);
fprintf(fileID,'%1.0f   %1.0f\n',Card34);
%%