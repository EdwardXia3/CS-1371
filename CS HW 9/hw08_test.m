clc
clear
cars1 = carShopping('carstats1.xlsx','Fuel Tank','Horsepower')
% 	cars1 =>  
% 'Make'        'Model'             'Year'    'Engine Size'    'Horsepower'    'Fuel Tank'    'RAC Rating'
% 'Cadillac'    'Escalade'          [2016]    [     6.2000]    [       420]    [       26]    [   52.9000]
% 'Jeep'        'Grand Cherokee'    [2012]    [     6.4000]    [       470]    [  24.6000]    [   53.5000]
% 'Lexus'       'LS 600h'           [2012]    [          5]    [       389]    [  22.2000]    [   43.8000]
% 
cars2 = carShopping('carstats2.xlsx','Engine Size','Year')
% 	cars2 =>  
% 'Make'      'Model'     'Year'    'Engine Size'    'Horsepower'    'MPG'    'Fuel Tank'    'RAC Rating'
% 'Subaru'    'Legacy'    [2013]    [     3.6000]    [       256]    [ 25]    [  18.5000]    [   31.5000]
% 'Acura'     'RDX'       [2017]    [     3.5000]    [       279]    [ 29]    [       16]    [   29.5000]
% 'Nissan'    'Maxima'    [2016]    [     3.5000]    [       300]    [ 30]    [       18]    [   33.9000]
% 
cars3 = carShopping('carstats3.xlsx','MPG','RAC Rating')
% 	cars3 =>  
% 'Make'      'Model'     'Year'    'Engine Size'    'RAC Rating'    'Fuel Tank'    'MPG'    'Horsepower'
% 'Ford'      'Focus'     [2016]    [          1]    [    9.6000]    [  12.4000]    [ 42]    [       123]
% 'Nissan'    'Sentra'    [2016]    [     1.8000]    [   15.8000]    [  13.2000]    [ 38]    [       130]
% 'Subaru'    'Legacy'    [2016]    [     2.5000]    [   21.9000]    [  18.5000]    [ 36]    [       175]
%
