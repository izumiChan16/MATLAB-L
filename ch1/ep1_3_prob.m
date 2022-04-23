% 优化的意义，指定为 'minimize' 或 'maximize'。您还可以指定 'min' 以获得 'minimize' 或指定 'max' 以获得 'maximize'。
% 当 ObjectiveSense 为 'minimize' 时，solve 函数将最小化目标；当 ObjectiveSense 为 'maximize' 时，函数将最大化目标。
prob = optimproblem('ObjectiveSense', 'max');
% 创建一个名为 x 的 3×1 优化变量向量。
% 设置下限为0
x = optimvar('x', 3, 'LowerBound', 0);
% 创建目标函数
prob.Objective = 2 * x(1) + 3 * x(2) - 5 * x(3);
% 三个约束条件
prob.Constraints.con1 = x(1) + x(2) + x(3) == 7;
prob.Constraints.con2 = 2 * x(1) - 5 * x(2) + x(3) >= 10;
prob.Constraints.con3 = x(1) + 3 * x(2) + x(3) <= 12;
% 求解
[sol, fval, flag, out] = solve(prob);