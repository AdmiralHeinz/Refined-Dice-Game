function NumofRolls = Any_Dice(sides,trials)
%let n repersent the number of sides on the die
%let t represent the number of trials
Rolls = 0;

for i=0: 1 : trials % loop for each trial(t times)
    Flag = zeros(1,sides);
    while prod(Flag)== 0
       DiceValue = randi(sides);
       Flag(DiceValue) = 1;
       Rolls = Rolls + 1;
    end    
end
NumofRolls = Rolls/trials;