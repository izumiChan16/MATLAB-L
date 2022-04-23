% 目标函数最大化的优化问题
prob = optimproblem('ObjectiveSense', 'max');

c = [4; 3];
b = [10; 8; 7];
a = [2, 1; 1, 1; 0, 1];
% 决策变量
x = optimvar('x', 2, 'LowerBound', 0);
% 目标函数
prob.Objective = c' * x;
% 约束条件
prob.Constraints.con = a * x <= b;
% fval 返回最优解
[sol, fval, flag, out] = solve(prob);
