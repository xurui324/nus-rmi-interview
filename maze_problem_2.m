function tot_time = maze_problem_2()
    tot_time = 0;
    while 1
        choice = randi([1,3]);
        if choice == 1
            tot_time = tot_time + 2;
            break
        elseif choice == 2
            tot_time = tot_time + 4;
        else
            tot_time = tot_time + 6;
        end
    end
end