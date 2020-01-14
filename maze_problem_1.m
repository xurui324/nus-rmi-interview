function tot_time = maze_problem_1
    tot_time = 0;
    choice = randi([1,3]);
    if choice == 1
        tot_time = tot_time + 2;
    elseif choice == 2
        tot_time = tot_time + 4;
        choice_two = rand();
        if choice_two > 0.5
            tot_time = tot_time + 2;
        else
            tot_time = tot_time + 8;
        end
    else
        tot_time = tot_time + 6;
        choice_two = rand();
        if choice_two > 0.5
            tot_time = tot_time + 6;
        else
            tot_time = tot_time + 2;
        end 
    end
end