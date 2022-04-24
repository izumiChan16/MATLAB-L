d0 = load('work.txt');

a = d0(1, :);

b = d0(2, :);

prob = optimproblem;

x = optimvar('x', 1, 'LowerBound', 5, 'UpperBound', 8);

y = optimvar('y', 1, 'LowerBound', 5, 'UpperBound', 8);

prob.Objective = 