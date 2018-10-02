function winner = rpsls(p1, p2)
%Determines the winner of rock-paper-scissors-lizard-spock.

if isequal(p1,'rock')
    if isequal(p2,'scissors') || isequal(p2, 'lizard');
        scen = 1;
    elseif isequal(p1, p2)
        scen = 3;
    else
        scen = 2;  
    end
    
elseif isequal(p1,'paper')
    if isequal(p2,'rock') || isequal(p2, 'spock');
        scen = 1;
    elseif isequal(p1, p2)
        scen = 3;
    else
        scen = 2;
    end
    
elseif isequal(p1,'scissors')
    if isequal(p2,'paper') || isequal(p2, 'lizard');
        scen = 1;
    elseif isequal(p1, p2)
        scen = 3;
    else
        scen = 2;  
    end    
    
elseif isequal(p1,'lizard')
    if isequal(p2,'paper') || isequal(p2, 'spock');
        scen = 1;
    elseif isequal(p1, p2)
        scen = 3;
    else
        scen = 2;  
    end
    
else
    if isequal(p2,'rock') || isequal(p2, 'scissors');
        scen = 1;
    elseif isequal(p1, p2)
        scen = 3;
    else
        scen = 2;  
    end
    
end
if scen == 1
    winner = sprintf('Player 1 wins!');
elseif scen == 2
    winner = sprintf('Player 2 wins!');
else
    winner = sprintf('It''s a tie!');

end
