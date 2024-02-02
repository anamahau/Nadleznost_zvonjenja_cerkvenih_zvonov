%% izracun
[y1, fs1] = audioread('zvon1.wav');
[y2, fs2] = audioread('zvon2.wav');
[y3, fs3] = audioread('zvon3.wav');
[y4, fs4] = audioread('zvon4.wav');

t = linspace(0, length(y1)/fs1, length(y1));
Nfft = 16777216;
a = 2 * 524000;

f1 = linspace(0, fs1, Nfft);
x1 = abs(fft(y1, Nfft));
f2 = linspace(0, fs2, Nfft);
x2 = abs(fft(y2, Nfft));
f3 = linspace(0, fs3, Nfft);
x3 = abs(fft(y3, Nfft));
f4 = linspace(0, fs4, Nfft);
x4 = abs(fft(y4, Nfft));

%% grafi
figure(1);
plot(f1(1:a), x1(1:a));
xlabel('frekvenca (Hz)');
ylabel('amplituda (dB)');
title('Zvon 1');

figure(2);
plot(f2(1:a), x2(1:a));
xlabel('frekvenca (Hz)');
ylabel('amplituda (dB)');
title('Zvon 2');

figure(3);
plot(f3(1:a), x3(1:a));
xlabel('frekvenca (Hz)');
ylabel('amplituda (dB)');
title('Zvon 3');

figure(4);
plot(f4(1:a), x4(1:a));
xlabel('frekvenca (Hz)');
ylabel('amplituda (dB)');
title('Zvon 4');

figure(5);
hold on;
plot(f1(1:a), x1(1:a));
plot(f2(1:a), x2(1:a));
plot(f3(1:a), x3(1:a));
plot(f4(1:a), x4(1:a));
xlabel('frekvenca (Hz)');
ylabel('amplituda (dB)');
legend('zvon 1', 'zvon 2', 'zvon 3', 'zvon 4');
title('Vsi zvonovi');
hold off;