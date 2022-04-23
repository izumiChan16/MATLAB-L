f = [-2; -3; 5];
a = [
    -2, 5, -1;
     1, 3,  1
];
b = [
    -10;
     12
];

aeq = [1, 1, 1];
beq = 7;

%{
B=zeros(n)：生成n×n全零阵。
B=zeros(m,n)：生成m×n全零阵。
B=zeros([m n])：生成m×n全零阵。
B=zeros(d1,d2,d3……)：生成d1×d2×d3×……全零阵或数组。
B=zeros([d1 d2 d3……])：生成d1×d2×d3×……全零阵或数组。
B=zeros(size(A))：生成与矩阵A相同大小的全零阵。
%}

%{
https://ww2.mathworks.cn/help/optim/ug/linprog.html
x = linprog(f,A,b,Aeq,beq,lb,ub) 定义设计变量 x 的一组下界和上界，使解始终在 lb ≤ x ≤ ub 范围内。
如果不存在等式，请设置 Aeq = [] 和 beq = []。
%}
[x, y] = linprog(f, a, b, aeq, beq, zeros(3, 1));