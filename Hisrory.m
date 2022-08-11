function [an,dt,tx]=Hisrory(f,l,a,e,ct,pi)

prompt = {'Please enter a Z:'};
A = inputdlg(prompt);
z = str2double(A);
%=======================================
prompt = {'Please enter a Total time:'};
A = inputdlg(prompt);
tt = str2double(A);
%=======================================
prompt = {'Please enter a dt:'};
A = inputdlg(prompt);
dt = str2double(A);
%=======================================
tx=floor(tt/dt);

an=zeros(tx,2);

a1=(8/(pi^2))*((f*l)/(a*e));
%=====================================
x=0;
y=101;
for tn=0:tx
    t=tn*dt;
    zigma=0;
for n=1:2:y   
    D1=((n*pi*z)/(2*l));
    D2=((n*pi*ct*t)/(2*l));
    D3=(((-1)^((n-1)/2))/(n^2));
    a2=D3*sin(D1)*(1-cos(D2));
    zigma=zigma+a2;
end
s=a1*zigma;
x=x+1;
an(x,1)=t;
an(x,2)=s;
end

return