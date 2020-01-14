function arr = one_month_process(data, begin, ending)
    cur = ending;
    while cur >= begin
        if isnan(data(cur, 3))
            cur = cur - 1;
        else
            arr = data(cur, :);
            return
        end
    end
    arr = data(ending, :);
end