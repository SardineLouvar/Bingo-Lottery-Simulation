clc;clear;close all;
n = 100000;
num = 1:59;
hand = [];
max_days = [];
days_used = [];
cum_freq = [];
tally = zeros(1,59);
count = 0;

%can not get repeat number

for i = 1:n
    hand = [];
    num_hand = num;
    num_deck = num;
    run_count= [];
    for z = 1:5 
        add = randi(length(num_hand));
        add_to_hand = num_hand(add);
        hand = [hand,add_to_hand];
        num_hand(add)=[]; 
    end
    for d = 1:length(num)
        test = randi(length(num_deck));
        check = num_deck(test);
        num_deck(test) = [];
        if ismember(check, hand) == true
            run_count = [run_count;d];
            %disp("Number checked off on day " + d)
            hand = hand(hand~=check);
        end
        if isempty(hand)
            days_used = [days_used, run_count];
            max_days = [max_days,d];
            tally(d) = tally(d)+1;
            count = count + 1;
            disp(count);
            break;
        end
    end
end

for i = 1:length(tally)
    add2 = sum(tally(1:i));
    cum_freq = [cum_freq,add2];    
end
prob = (cum_freq/n)*100
tally_prob = (tally/n)*100

x_axis = 1:59;
y_axis = tally_prob;
plot(x_axis,y_axis,'k','linewidth',2)
%'linewidth',2
title(["Plot of days taken to win Bingo Lottery", "(No repeat numbers)"],'FontName','times');
xlabel("Number of days since start");
%ylabel("Frequency (" + n + " simulations)")

ylabel("Chance of winning on this day (%)")

set(gca, 'FontName','times','FontSize',12); 
xlim([1 59])
grid on;
