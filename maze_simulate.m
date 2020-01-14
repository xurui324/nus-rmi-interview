tot = 0;
repetition = 100000;
for i = 1:repetition
    tot = tot + maze_problem_1();
	% tot = tot + maze_problem_2();
end
expect_time = tot / repetition;