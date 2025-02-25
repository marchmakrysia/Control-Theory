function chki_czest_2
%Transfer function
  num=[6];
  den=[4 2];
  G=tf(num,den);

% Poles of transfer function
subplot(2,2,1) 
  pzmap(num,den)

% Nyquist plot
  w1=0:0.01:10000;
  [re,im]=nyquist(num,den,w1);
  
subplot(2,2,2)
  plot(re,im)
  grid
  title('Nyquist Diagram')
  xlabel('Real Axis')
  ylabel('Imaginary Axis')

% Bode plot
  w2=logspace(-3,2,50);
  [mag,phase]=bode(num,den,w2);
  magdB=20*log10(mag);
  
subplot(2,2,3)
  semilogx(w2,magdB,'r-')
  grid
  title('Bode Diagrams')
  xlabel('Frequency (rad/s)')
  ylabel('Magnitude (dB)')

subplot(2,2,4)
  semilogx(w2,phase,'g-')
  grid
  xlabel('Frequency (rad/s)')
  ylabel('Phase (deg)')
  
