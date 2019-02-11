%Card Group 8

% clear all
% clc
X8=zeros((n-1)^2, 16);
% E=zeros((n-1)^2, 1);

E=zeros(n-1,n-1);

for i=1:n-1
    for j=1:n-1
        E(i,j)=i-1;
    end
end
E=transpose(E);
E = reshape(E,(n-1)^2,1);

for i=1:(n-1)^2
%         X(i,1)=i;
        
        X8(i,1)=i+E(i); 
        X8(i,2)=0.25;
        
        X8(i,3)=i+E(i)+1; 
        X8(i,4)=0.25;
        
        X8(i,5)=n+i+E(i);
        X8(i,6)=0.25;
        
        X8(i,7)=n+i+E(i)+1;
        X8(i,8)=0.25;
end

if Assembly == 4 || Assembly ==5 
X8(37,:) = [];
end
if Assembly ==6
X8(29,:) = [];
X8(35,:) = [];
end

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
I=1:N^2;
I=transpose(I);
R=[ 1    1    0 0.00000   1.0  11356.0    1   0.0   0.0];
R = repmat(R,(n-1)^2,1);
R=[I R];
elseif Assembly == 4 || Assembly ==5 || Assembly ==6
I=1:N^2-1;
I=transpose(I);
R=[ 1    1    0 0.00000   1.0  11356.0    1   0.0   0.0];
R = repmat(R,(N^2)-1,1);
R=[I R];
elseif Assembly ==6
I=1:N^2-2;
I=transpose(I);
R=[ 1    1    0 0.00000   1.0  11356.0    1   0.0   0.0];
R = repmat(R,(N^2)-2,1);
R=[I R];
end

% fileID = fopen('PreProcessorBWR.inp','a');

Title_81='***********************************************************************************************';
fprintf(fileID,'%s\n',Title_81);

Title_82='*GROUP 8 - Rod and Unheated Conductor Data                                                    *';
fprintf(fileID,'%s\n',Title_82);

Title_83='***********************************************************************************************';
fprintf(fileID,'%s\n',Title_83);

Title_84='**NGR  ';
fprintf(fileID,'%s\n',Title_84);

Title_85=8;
fprintf(fileID,'%1.0f\n',Title_85);

Title_86='*Card 8.1';
fprintf(fileID,'%s\n',Title_86);

Title_86='** NRRD   NSRD    NC  NRTB  NRAD  NLTY  NSTA   NXF  NCAN  RADF    W3 IHTC  DNBCHK NDM14 ';
fprintf(fileID,'%s\n',Title_86);


if Bypass==1
    if  Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
        Title_87=[(N)^2 0 1     1     0     0     0     1     0     0    0     0     0     0];
    elseif Assembly == 4 || Assembly ==5
        Title_87=[(N)^2-1 4 1     1     0     0     0     1     0     0    0     0     0     0];
    elseif Assembly == 6
        Title_87=[(N)^2-2 8 1     1     0     0     0     1     0     0    0     0     0     0];
    end
    
elseif Bypass==2
    if  Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
        Title_87=[(N)^2 (n-1)*4 1      1     0     0     0     1     0     0    0     0     0     0];
    elseif Assembly == 4 || Assembly ==5
        Title_87=[(N)^2-1 (n-1)*4+4 1      1     0     0     0     1     0     0    0     0     0     0];
    elseif Assembly == 6
        Title_87=[(N)^2-2 (n-1)*4+8 1      1     0     0     0     1     0     0    0     0     0     0];
    end
end




fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Title_87);

Title_88='*Card 8.2';
fprintf(fileID,'%s\n',Title_88);

Title_88='**    N   IFTY   IAXP   NRND DAXMIN  RMULT   HGAP  ISECR  HTAMB   TAMB ';
fprintf(fileID,'%s\n',Title_88);

Title_89='*Card 8.3';
fprintf(fileID,'%s\n',Title_89);

Title_810='****NSCH   PIE  NSCH   PIE  NSCH   PIE  NSCH   PIE  NSCH   PIE  NSCH   PIE  NSCH   PIE NSCH   PIE';
fprintf(fileID,'%s\n',Title_810);


if Assembly == 1 || Assembly == 2 || Assembly == 3 || Assembly == 7
for i=1:(N)^2
    fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',R(i,:));
    fprintf(fileID,'%1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',X8(i,:));
end
elseif Assembly == 4 || Assembly == 5 
    for i=1:((N)^2)-1
    fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',R(i,:));
    fprintf(fileID,'%1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',X8(i,:));
    end
elseif Assembly == 6
    for i=1:((N)^2)-2
    fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',R(i,:));
    fprintf(fileID,'%1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.2f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f\n',X8(i,:));
    end
end
if Bypass==2
Title_819='* Card 8.5';
fprintf(fileID,'%s\n',Title_819);

Title_820='*    N ISTYP     HPERIM       HPERIMI     RMULS  NOSLCH  NSLCHC  HTAMBS   TAMBS';
fprintf(fileID,'%s\n',Title_820);
%Corner Channels-bypass conductors 
Title_821=zeros(4,8);
Title_821(1,:)=[3 0.01830149 0.01515364 1 1 (n^2)+1 0 0];
Title_821(2,:)=[3 0.01830149 0.01515364 1 n (n^2)+1 0 0];
Title_821(3,:)=[3 0.01830149 0.01515364 1 n^2-n+1 (n^2)+1 0 0];
Title_821(4,:)=[3 0.01830149 0.01515364 1 n^2 (n^2)+1 0 0];
%Water Rod Corner channels for assembly 4,5,6
if Assembly ==5 || Assembly ==4
    Title_821=zeros(8,8);
Title_821(1,:)=[3 0.01830149 0.01515364 1 1 (n^2)+1 0 0];
Title_821(2,:)=[3 0.01830149 0.01515364 1 n (n^2)+1 0 0];
Title_821(3,:)=[3 0.01830149 0.01515364 1 n^2-n+1 (n^2)+1 0 0];
Title_821(4,:)=[3 0.01830149 0.01515364 1 n^2 (n^2)+1 0 0];
Title_821(5,:)=[4 0.0098347558 0.0084783732 1 41 (n^2)+2 0 0];
Title_821(6,:)=[4 0.0098347558 0.0084783732 1 42 (n^2)+2 0 0];
Title_821(7,:)=[4 0.0098347558 0.0084783732 1 50 (n^2)+2 0 0];
Title_821(8,:)=[4 0.0098347558 0.0084783732 1 51 (n^2)+2 0 0];
end
if Assembly==6
    Title_821=zeros(12,8);
%Water Rod Corner channels for assembly 6
Title_821(1,:)=[3 0.01830149 0.01515364 1 1 (n^2)+1 0 0];
Title_821(2,:)=[3 0.01830149 0.01515364 1 n (n^2)+1 0 0];
Title_821(3,:)=[3 0.01830149 0.01515364 1 n^2-n+1 (n^2)+1 0 0];
Title_821(4,:)=[3 0.01830149 0.01515364 1 n^2 (n^2)+1 0 0];
Title_821(5,:)=[4 0.0098347558 0.0084783732 1 32 (n^2)+2 0 0];
Title_821(6,:)=[4 0.0098347558 0.0084783732 1 33 (n^2)+2 0 0];
Title_821(7,:)=[4 0.0098347558 0.0084783732 1 41 (n^2)+2 0 0];
Title_821(8,:)=[4 0.0098347558 0.0084783732 1 42 (n^2)+2 0 0];
Title_821(9,:)=[4 0.0098347558 0.0084783732 1 40 (n^2)+3 0 0];
Title_821(10,:)=[4 0.0098347558 0.0084783732 1 41 (n^2)+3 0 0];
Title_821(11,:)=[4 0.0098347558 0.0084783732 1 49 (n^2)+3 0 0];
Title_821(12,:)=[4 0.0098347558 0.0084783732 1 50 (n^2)+3 0 0];
end

%Side Channels-bypass conductors
Conductor=zeros(n^2+1,8);
for i=2:n-1
    Conductor(i,:)=[2 0.0187452	0.0187452 1 i n^2+1 0 0];
end

for i=n+1:n:n*(n-2)+1
    Conductor(i,:)=[2 0.0187452	0.0187452 1 i n^2+1 0 0];
end

for i=2*n:n:n*(n-1)
    Conductor(i,:)=[2 0.0187452	0.0187452 1 i n^2+1 0 0];
end

for i=n*(n-1)+2:n^2-1
    Conductor(i,:)=[2 0.0187452	0.0187452 1 i n^2+1 0 0];
end
Conductor1 = Conductor(any(Conductor,2),:);
Conductor1= [Conductor1; Title_821];

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
I=1:4*(n-1);
elseif Assembly == 4 || Assembly ==5 
I=1:4*(n-1)+4;
elseif Assembly == 6
I=1:4*(n-1)+8;
end

I=transpose(I);
Conductor1=[I Conductor1];

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
for i=1:4*(n-1)
fprintf(fileID,'%1.0f %1.0f %1.7f %1.7f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Conductor1(i,:));
end
elseif Assembly == 4 || Assembly ==5 
    for i=1:4*(n-1)+4
fprintf(fileID,'%1.0f %1.0f %1.7f %1.7f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Conductor1(i,:));
    end
elseif Assembly ==6
    for i=1:4*(n-1)+8
fprintf(fileID,'%1.0f %1.0f %1.7f %1.7f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Conductor1(i,:));
    end
end
end


if Bypass==1 
if    Assembly == 4 || Assembly ==5 || Assembly ==6
Title_819='* Card 8.5';
fprintf(fileID,'%s\n',Title_819);

Title_820='*    N ISTYP     HPERIM       HPERIMI     RMULS  NOSLCH  NSLCHC  HTAMBS   TAMBS';
fprintf(fileID,'%s\n',Title_820);

%Water Rod Corner channels for assembly 4,5
if Assembly==4 || Assembly ==5
Title_821(1,:)=[2 0.0098347558 0.0084783732 1 41 (n^2)+1 0 0];
Title_821(2,:)=[2 0.0098347558 0.0084783732 1 42 (n^2)+1 0 0];
Title_821(3,:)=[2 0.0098347558 0.0084783732 1 50 (n^2)+1 0 0];
Title_821(4,:)=[2 0.0098347558 0.0084783732 1 51 (n^2)+1 0 0];
I=1:4;
end
if Assembly==6
%Water Rod Corner channels for assembly 6
Title_821(1,:)=[2 0.0098347558 0.0084783732 1 32 (n^2)+1 0 0];
Title_821(2,:)=[2 0.0098347558 0.0084783732 1 33 (n^2)+1 0 0];
Title_821(3,:)=[2 0.0098347558 0.0084783732 1 41 (n^2)+1 0 0];
Title_821(4,:)=[2 0.0098347558 0.0084783732 1 42 (n^2)+1 0 0];
Title_821(5,:)=[2 0.0098347558 0.0084783732 1 40 (n^2)+2 0 0];
Title_821(6,:)=[2 0.0098347558 0.0084783732 1 41 (n^2)+2 0 0];
Title_821(7,:)=[2 0.0098347558 0.0084783732 1 49 (n^2)+2 0 0];
Title_821(8,:)=[2 0.0098347558 0.0084783732 1 50 (n^2)+2 0 0];
I=1:8;
end
I=transpose(I);
Title_821=[I Title_821];
if Assembly==4 || Assembly ==5
for i=1:4
fprintf(fileID,'%1.0f %1.0f %1.9f %1.9f %1.0f %1.0f %1.0f %1.0f %1.0f \n',Title_821(i,:));
end
end
if Assembly==6
for i=1:8
fprintf(fileID,'%1.0f %1.0f %1.9f %1.9f %1.0f %1.0f %1.0f %1.0f %1.0f \n',Title_821(i,:));
end
end
end
end

Title_811='* Card 8.6';
fprintf(fileID,'%s\n',Title_811);

Title_812='*   I NRT1 NST1 NRX1';
fprintf(fileID,'%s\n',Title_812);

if Bypass ==1
if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
    Title_813=[1 (n-1)^2 0        2];
elseif Assembly == 4 || Assembly==5 
    Title_813=[1 (n-1)^2-1 4      2];
elseif Assembly == 6
    Title_813=[1 (n-1)^2-2 8      2];
end
elseif Bypass ==2
if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
    Title_813=[1 (n-1)^2   4*(n-1)  2];
elseif Assembly == 4 || Assembly==5
    Title_813=[1 (n-1)^2-1 4*(n-1)+4 2];
elseif Assembly == 6
    Title_813=[1 (n-1)^2-2 4*(n-1)+8 2];
end
end
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f\n',Title_813);

Title_814='** Card 8.7 - rods using temp table';
fprintf(fileID,'%s\n',Title_814);

Title_814='*IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB IRTAB';
fprintf(fileID,'%s\n',Title_814);

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
    X81=ceil(((n-1)^2)/12);
    H=zeros(1,12*X81);
    H1=1:(n-1)^2;
    for i=1:(n-1)^2
    H(i)=H1(i);
    end
elseif Assembly == 4 || Assembly ==5 
    X81=ceil((((n-1)^2)-1)/12);
    H=zeros(1,12*X81);
    H1=1:((n-1)^2)-1;
    for i=1:(n-1)^2-1
    H(i)=H1(i);
    end
elseif Assembly ==6
        X81=ceil((((n-1)^2)-2)/12);
    H=zeros(1,12*X81);
    H1=1:((n-1)^2)-2;
    for i=1:(n-1)^2-2
    H(i)=H1(i);
    end
end


H = reshape(H,12,X81);
H=transpose(H);
for i=1:X81
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',H(i,:));
end
if Bypass==2
Title_822='* Card 8.8-conductors using the table';
fprintf(fileID,'%s\n',Title_822);

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
Xc=ceil((4*(n-1))/12);
Hc=zeros(1,12*Xc);
H1c=1:4*(n-1);
for i=1:4*(n-1)
    Hc(i)=H1c(i);
end
elseif Assembly == 4 || Assembly ==5 
Xc=ceil((4*(n-1)+4)/12);
Hc=zeros(1,12*Xc);
H1c=1:4*(n-1)+4;
for i=1:4*(n-1)+4
    Hc(i)=H1c(i);
end
elseif Assembly ==6
    Xc=ceil((4*(n-1)+8)/12);
    Hc=zeros(1,12*Xc);
H1c=1:4*(n-1)+8;
for i=1:4*(n-1)+8
    Hc(i)=H1c(i);
end
end

Hc = reshape(Hc,12,Xc);
Hc=transpose(Hc);
for i=1:Xc
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Hc(i,:));
end
end



if Bypass==1 
if Assembly == 4 || Assembly ==5 || Assembly ==6
Title_822='* Card 8.8-conductors using the table';
fprintf(fileID,'%s\n',Title_822);

if Assembly == 4 ||Assembly ==5
Xc=ceil((4)/12);
Hc=zeros(1,12*Xc);
H1c=1:4;
for i=1:4
    Hc(i)=H1c(i);
end
elseif Assembly ==6
    Xc=ceil((8)/12);
    Hc=zeros(1,12*Xc);
H1c=1:8;
for i=1:8
    Hc(i)=H1c(i);
end
end

Hc = reshape(Hc,12,Xc);
Hc=transpose(Hc);
for i=1:Xc
fprintf(fileID,'%1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f %1.0f\n',Hc(i,:));
end
end
end

Title_815='* Card 8.9';
fprintf(fileID,'%s\n',Title_815);

Title_816='*  AXIALT     TRINIT';
fprintf(fileID,'%s\n',Title_816);

Title_817=[ 0 300];
fprintf(fileID,'%1.4f %1.2f\n', Title_817);

Title_818=[ L 300];
fprintf(fileID,'%1.4f %1.2f\n',Title_818);
