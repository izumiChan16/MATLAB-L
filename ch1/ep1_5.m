a = load('data1_5_1.txt');
% i,j 数据
c = a(1 : end - 1, 1 : end - 1);
% 产量
e = a(1 : end - 1, end);
% 需求量
d = a(end, 1 : end - 1);

prob = optimproblem;
x = optimvar('x', 6, 8, 'LowerBound', 0);
% .* 两个相同规格的矩阵对应元素相乘
% 在这里c和x都是 (6, 8) 的矩阵
prob.Objective = sum(sum(c .* x));
% sum(x, 1) 意思是每一列总和的行向量
% 满足需求量
prob.Constraints.con1 = sum(x, 1) == d; 
% 不超过产量
prob.Constraints.con2 = sum(x, 2) <= e;

[sol, fval, flag, out] = solve(prob);

