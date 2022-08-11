function[z,t,an]=Exact(f,l,a,e,ct,pi) 
prompt = {'Please enter a Z:'};
A = inputdlg(prompt);
z = str2double(A);
%=======================================
prompt = {'Please enter a T:'};
A = inputdlg(prompt);
t = str2double(A);
%=======================================
a1=(8/(pi^2))*((f*l)/(a*e));
%=====================================
y=1001;
%========================================================================== 
 zigma=0;
for n=1:2:y   
    D1=((n*pi*z)/(2*l));
    D2=((n*pi*ct*t)/(2*l));
    D3=(((-1)^((n-1)/2))/(n^2));
    a2=D3*sin(D1)*(1-cos(D2));
    zigma=zigma+a2;
end
s=a1*zigma;

an(1,1)=z;
an(1,2)=s;

return