w0 = 2*pi;
wn = 10*pi;
zeta = 0.1;
M = 1;
wd = sqrt(1-zeta^2)*wn;

N=300;
T=0.01;
n = [1:1:N];


F = sin(w0*n);
g=(T/(M*wd))*exp(-(n-1)*zeta*wn*T).*sin((n-1)*wd*T);
c0=conv(F,g);
c=c0(1:N);
plot(c);