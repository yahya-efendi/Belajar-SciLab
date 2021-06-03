mode(0);
ieee(1);
clc;clear;
disp("KELOMPOK 1")
disp("   ")
disp("YAHYA EFENDI")
disp("---------------------------------------")
disp("MODULASI AMPLITUDO")
disp("---------------------------------------")
disp("   ")
//  Frekuensi Sinyal Informasi   - 10
//  Amplitudo Sinyal Informasi   - 1
//  Frekuensi Sinyal Pembawa   - 200
//  Amplitudo Sinyal Pembawa   - 1

Fs = 2000;//Frekuensi sampling
N = 400;//banyak gelombang
n = 10:1:N-1;
t = n/Fs;
// Frekuensi
fm = input("Masukkan Frekuensi Sinyal Informasi   - ");
Am = input("Masukkan Amplitudo Sinyal Informasi   - ");
fc = input("Masukkan Frekuensi Sinyal Pembawa   - ");
Ac = input("Masukkan Amplitudo Sinyal Pembawa   - ");
fDev = 100;
// Pers sinyal modulasi pembawa
x1 = mtlb_double(Am)*sin(((2*%pi)*mtlb_double(fm))*t);
x2 = mtlb_double(Ac)*cos(((2*%pi)*mtlb_double(fc))*t);
// modulasi amplitudo
y1 = x2.*(1+x1);

// plot
subplot(3,1,1);
plot(t,x1);
xlabel("Waktu (s)");
ylabel("Amplitudo");
title("Sinyal Informasi");

subplot(3,1,2);
plot(t,x2);
xlabel("Waktu (s)");
ylabel("Amplitudo");
title("Sinyal Pembawa");

subplot(3,1,3);
plot(t,y1);
xlabel("Waktu (s)");
ylabel("Amplitudo");
title("Modulasi Amplitudo");

