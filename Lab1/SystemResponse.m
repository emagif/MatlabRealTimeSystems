clc; 
clear;

s=tf('s');

% przykład a)
uklad_1 = tf(1/(s*s + 0.5*s + 1));
bandWidth_1 = bandwidth(uklad_1);
gpeak_1 = getPeakGain(uklad_1);

figure;
subplot(4, 2, 1);
bode(uklad_1);
title("Bode dla a)")

subplot(4, 2, 2);
step(uklad_1);
title("Odp skokowa dla a)")

% przykład b)
G_R_2 = 10;
G_O_2 = tf(1/(1+10*s));
uklad_otwarty_2 = series(G_R_2, G_O_2);
uklad_zamkniety_2 = feedback(uklad_otwarty_2, 1);
bandWidth_2 = bandwidth(uklad_zamkniety_2);
gpeak_2 = getPeakGain(uklad_zamkniety_2);


subplot(4, 2, 3);
bode(uklad_zamkniety_2);
title("Bode dla b)")

subplot(4, 2, 4);
step(uklad_zamkniety_2);
title("Odp skokowa dla b)")

% przykład c) 
G_R_3 = tf(1+1/2.5*s);
G_O_3 = tf(1/((1+10*s)*(1+10*s)*(1+10*s)));
uklad_otwarty_3 = series(G_R_3, G_O_3);
uklad_zamkniety_3 = feedback(uklad_otwarty_3, 1);
bandWidth_3 = bandwidth(uklad_zamkniety_3);
gpeak_3 = getPeakGain(uklad_zamkniety_3);

subplot(4, 2, 5);
bode(uklad_zamkniety_3);
title("Bode dla c)");

subplot(4, 2, 6);
step(uklad_zamkniety_3);
title("Odp skokowa dla c)")


% przykład d)
G_R_4 = tf(1.5 + ((3*s)/(1+s)) + (1/(3*s)));
G_O_4 = tf(5/(2*s*s + s + 0.5));
uklad_otwarty_4 = series(G_R_4, G_O_4);
uklad_zamkniety_4 = feedback(uklad_otwarty_4, 1);
bandWidth_4 = bandwidth(uklad_zamkniety_4);
gpeak_4 = getPeakGain(uklad_zamkniety_4);

subplot(4, 2, 7);
bode(uklad_zamkniety_4);
title("Bode dla d)")

subplot(4, 2, 8);
step(uklad_zamkniety_4);
title("Odp skokowa dla d)");
