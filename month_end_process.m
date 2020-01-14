function res = month_end_process(filepath, sheet)
    data = xlsread(filepath, sheet);
    res = [0, 0, 0];
    cur_company = data(1, 1);
    cur_month = fix(data(1, 2) / 100);
    begin = 1;
    for i = 1 : size(data, 1)
        if cur_company ~= data(i, 1) || fix(data(i, 2)/100) ~= cur_month
            ending = i - 1;
            tmp = one_month_process(data, begin, ending);
            res = [res; tmp];
            begin = i;
            cur_company = data(i, 1);
            cur_month = fix(data(i, 2)/100);
        end
    end
    if begin ~= size(data, 1)
        tmp = one_month_process(data, begin, size(data, 1));
        res = [res; tmp];
    end
    res = res(2:size(res,1),:);
end