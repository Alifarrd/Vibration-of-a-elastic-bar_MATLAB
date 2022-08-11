function[an]=printt(dt,tx,an) 
figure
hold on;
time=0:dt:dt*tx;
plot(time,an(:,2),'r')
print(gcf,'C:\Users\Ali Fard\Desktop\u\ans\figure.bmp','-dbmp','-r600');
legend('exact')