clear all
clc
filepath = '10 to 1 3500rpm 0.3ND 40dB amp position 1.dat';
fid = fopen( filepath) ; 
mipa = fread(fid,'int16') * 1E-4 ; % unit V
fclose(fid);

pts = 1400 ; 
mipa_raw = reshape( mipa, pts*2,[] ) ;

aline = mipa_raw( 1:1400,: ) ; 
laser_pulse = mipa_raw( 1401:end,: ) ; 