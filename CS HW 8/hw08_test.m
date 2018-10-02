clc
clear
clear
clc

fred.first = 'Fred';
fred.last = 'Jones';
date.year = 1990;
date.month = 'Feb';
date.day = 30
fred.birth = date;
fred.grad = false
fred.odd = {'abc'; false}
fred = rmfield(fred,'odd')

sally = fred;
sally.first = 'Sally';
sally.birth.day = 31