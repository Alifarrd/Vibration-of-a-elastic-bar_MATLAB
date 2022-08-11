function [an,dt,tx]=Itration2(f,l,a,e,ct,pi)
prompt = {'Time:'};
A = inputdlg(prompt);
t = str2double(A);
%==========================================================================
prompt = {'Please enter a dx:'};
A = inputdlg(prompt);
dxx = str2double(A);
%dxx=0.04
%==========================================================================
zxx=floor(l/dxx);



a1=(8/(pi^2))*((f*l)/(a*e));
%=====================================
%==========================================================================
prompt = {'Please enter a dt:'};
A = inputdlg(prompt);
dt = str2double(A);
%==========================================================================
endtime=floor(t/dt);
an=zeros(zxx,endtime+1);

for ii=0:endtime
t=ii*dt;

x=0;
y=1001;

for o=0:zxx
z=o*dxx;
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
x=x+1;
an(x,1)=z;
an(x,ii+1)=s;
end

dt=dxx;
tx=zxx;

%figure
hold on;
time=0:dt:dt*tx;
plot(time,an(:,2),'r')
print(gcf,'C:\Users\Ali Fard\Desktop\u\ans\figure.bmp','-dbmp','-r600');
end

return