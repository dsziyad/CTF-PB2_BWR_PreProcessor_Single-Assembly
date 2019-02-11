clear all
clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Single Assembly Input Deck Generator for PB-2 Reactor          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Assembly Type
%1: Without bypass
%2: With bypass
Bypass =2;
%Assembly Type 1-6 are PB-2 assemblies, please check the PB2 Documment.
%Assembly type 7 is assembly, which user can decide howmany rods are there
%to be in a matrix of fuel rods in a an assembly
Assembly = 3;
%%
%Number of rows and columns in fuel rod matrix
%For N=4 for:
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   *  *  *  *                        %
%                   *  *  *  *                        %
%                   *  *  *  *                        %
%                   *  *  *  *                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if Assembly == 1 || Assembly ==2 || Assembly ==3
    N=7; %Nummber of rods in XxX matrix
elseif Assembly == 4 || Assembly ==5 || Assembly ==6
    N=8; %Nummber of rods in XxX matrix
elseif Assembly == 7
    N =input('Assembly type number(See Header): ');
end
%Number of rows and columns in channel matrix
n=N+1;

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        Important inputs                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Linear Heat Rate @100 % Power (kW/m)
if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly == 7
    q=24.0495018;
elseif Assembly == 4 || Assembly ==5 || Assembly ==6
    q=18.705158;
 elseif Assembly ==6
    q=19.0068643;
end
chrq = num2str(q);
%Inlet Enthalpy of Water/ Water-Steam Mixture/ Steam (kJ/kg)
H=1212.50;
chrH = num2str(H);
%Inlet Enthalpy of Gas(kJ/kg)
Hg=300;
chrHg = num2str(Hg);
%Inlet Pressure (bar)
p=67.9847;
chrp = num2str(p);
%Mass Flow Rate @ 100% (kg/s)
m=15.5848164;
chrm = num2str(m);
%length of the core
if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly == 4 || Assembly ==5 ||Assembly == 7
    L=3.6576;
elseif Assembly ==6
    L=3.5560;
end
%%Number of nodes
nono=25;  

%rod diameter
if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly ==7
    Drod=0.0143002;
    %Clad Tickness
    Tcld=0.0008128;
    %Pellet Dimater
    Dfuel=0.0123698;
elseif Assembly == 4 || Assembly ==5 || Assembly ==6
    Drod=0.0125222;
    %Clad Tickness
    Tcld=0.0008646;
    %Pellet Dimater
    Dfuel=0.0105664;
end

chrDrod = num2str(Drod);
chrTcld = num2str(Tcld);
chrDfuel = num2str(Dfuel);
%Theroretical density
FTDS=0.95;
chrFTDS =num2str(FTDS);
%
Hin=1212.5;
Hout=2777.20;
Pout=67.9847;
%No of Assemblies
Nas=764;
%Mass flow rate of the core
M=12914.7828;
%Mass Flow rate of bypasses
Mbypass=1007.98304;

%Area of the channels: in internal channel, s side channel, c corner
%channel, b bypass.
if Assembly == 1 || Assembly ==2 || Assembly ==3 || Assembly == 7
    %Area and wetted parimeter of internal channels
    Ain=.0001900772; 
    Pin=0.0449254033;
    %Area and wetted parimeter of side channels
    As=0.0001220492;
    Ps=0.0412079016;
    %Area and wetted parimeter of corner channels
    Ac=0.0000563868;
    Pc=0.014378477;
    %Area and wetted parimeter of bypass
    Aby=0.004097398622560;
    Pby=0.545524800;
    %Area of the Assembly
    Aas=0.0099975072;
elseif Assembly == 4 || Assembly ==5 || Assembly ==6
    %Area and wetted parimeter of internal channels
    Ain=.000141165; 
    Pin=0.039319708;
    %Area and wetted parimeter of side channels
    As=0.00013181422;
    Ps=0.035915854;
    %Area and wetted parimeter of corner channels
    Ac=0.000052186467;
    Pc=0.013464639;
    %Area and wetted parimeter of bypass
    Aby=0.004097398622560;
    Pby=0.545524800;
    %Area of the Assembly
    Aas=0.010816629;
end

%Area of water rod, only being used for Assembly 5 and 6
Aw=0.000091524038;
Pw=0.0339134927;
% Mass flow rate of an Assembly
Mas=(M-Mbypass)/Nas;
%Mass flow rate of the internal channels
Min=Mas*Ain/Aas;
%Mass flow rate of the side channels
Ms=Mas*As/Aas;
%Mass flow rate of the corner channels
Mc=Mas*Ac/Aas;
%Mass flow rate of the water rod
Mw=Mas*Aw/Aas;
%Mass flow rate of the bypass
Mby=Mbypass/Nas;
%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                   Writing the Input Deck                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fileID = fopen('PreProcessorBWR.inp','w');

cd CardGroups
Header
CardGroup1
CardGroup2
CardGroup3
CardGroup4
CardGroup5
CardGroup6
CardGroup7
CardGroup8
CardGroup9
CardGroup10
CardGroup11
CardGroup12
CardGroup13
CardGroup14
CardGroup15