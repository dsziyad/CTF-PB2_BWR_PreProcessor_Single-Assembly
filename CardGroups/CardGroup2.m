%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              Group 2 - Subchannel geomtrical data                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%              

%%
%Assigning numbers to types of channels
Typein=0;                  %internal channel
Types=1;                   %side channel
Typec=2;                   %corner Channel

%Assigning subchannel area and wetted perimeter and type number associated
%with each of them
A=Ain*ones(n^2+3,1);
P=Pin*ones(n^2+3,1);
Type=Typein*ones(n^2,1);

%Corner channels
A(1)=Ac;
A(n)=Ac;
A(n^2-n+1)=Ac;
A(n^2)=Ac;

P(1)=Pc;
P(n)=Pc;
P(n^2-n+1)=Pc;
P(n^2)=Pc;

Type(1)=Typec;
Type(n)=Typec;
Type(n^2-n+1)=Typec;
Type(n^2)=Typec;

%Side Channels
for i=2:n-1
    A(i)=As;
    P(i)=Ps;
    Type(i)=Types;
end

for i=n+1:n:n*(n-2)+1
    A(i)=As;
    P(i)=Ps;
    Type(i)=Types;
end

for i=2*n:n:n*(n-1)
    A(i)=As;
    P(i)=Ps;
    Type(i)=Types;
end

for i=n*(n-1)+2:n^2-1
    A(i)=As;
    P(i)=Ps;
    Type(i)=Types;
end

%Bypass Channel
A(n^2+1)=Aby;
P(n^2+1)=Pby; 

%WaterRod for Assembly 4, 5 and 6
A(n^2+2)=Aw;
P(n^2+2)=Pw;

%WaterRod for Assembly 6
A(n^2+3)=Aw;
P(n^2+3)=Pw;

%%Number of channels
if Assembly == 1 || Assembly ==2 || Assembly ==3 ||Assembly ==7
if Bypass==1
    Nch=n^2;
elseif Bypass==2
    Nch=(n^2)+1;
end
elseif Assembly == 4 || Assembly ==5 
   if Bypass==1
    Nch=(n^2)+1;
   elseif Bypass==2
    Nch=(n^2)+2;
   end
elseif Assembly ==6
    if Bypass==1
    Nch=(n^2)+2;
   elseif Bypass==2
    Nch=(n^2)+3;
   end
end
%%
Z=zeros(n^2+3,3); %Zero matrix for writting card 2.2
I=1:n^2+3;        %Index vector
I=transpose(I);
Card21=[I A P Z];      %Card 2.1 matrix
%% % Writting deck input file

% fileID = fopen('PreProcessorBWR.inp','a');

Title_28='*******************************************************************************';
Title_29='* Group 2 - Subchannel geomtrical data                                        *';
Title_30='*******************************************************************************';
Title_21='**NGR';
Title_22='2';
Title_23='*Card 2.1';
Title_24='**  NCH NDM2 NDM3 NDM4 NDM5 NDM6 NDM7 NDM8 NDM9 NM10 NM11 NM12 NM13 NM14';
Title_25=[Nch    0    0    0    0    0    0    0    0    0    0    0    0    0];
Title_26='*Card 2.2';
Title_27='**   I          AN          PW ABOT ATOP NMGP           X           Y        XSIZ        YSIZ  ';
fprintf(fileID,'%s\n',Title_28);
fprintf(fileID,'%s\n',Title_29);
fprintf(fileID,'%s\n',Title_30);
fprintf(fileID,'%s\n',Title_21);
fprintf(fileID,'%s\n',Title_22);
fprintf(fileID,'%s\n',Title_23);
fprintf(fileID,'%s\n',Title_24);
fprintf(fileID,'%1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f   %1.0f \n',Title_25);
fprintf(fileID,'%s\n',Title_26);
fprintf(fileID,'%s\n',Title_27);

if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
if Bypass==1
    for i=1:n^2
    fprintf(fileID,'%1.0f   %5.10f   %5.10f   %1.0f   %1.0f   %1.0f\n',Card21(i,:));
    end
elseif Bypass==2
    for i=1:n^2+1
    fprintf(fileID,'%1.0f   %5.10f   %5.10f   %1.0f   %1.0f   %1.0f\n',Card21(i,:));
    end
end
elseif Assembly == 4 || Assembly ==5 
    if Bypass==1
    for i=1:n^2+1
    fprintf(fileID,'%1.0f   %5.10f   %5.10f   %1.0f   %1.0f   %1.0f\n',Card21(i,:));
    end
elseif Bypass==2
    for i=1:n^2+2
    fprintf(fileID,'%1.0f   %5.10f   %5.10f   %1.0f   %1.0f   %1.0f\n',Card21(i,:));
    end
    end
elseif Assembly ==6
    if Bypass==1
    for i=1:n^2+2
    fprintf(fileID,'%1.0f   %5.10f   %5.10f   %1.0f   %1.0f   %1.0f\n',Card21(i,:));
    end
elseif Bypass==2
    for i=1:n^2+3
    fprintf(fileID,'%1.0f   %5.10f   %5.10f   %1.0f   %1.0f   %1.0f\n',Card21(i,:));
    end
    end
end
