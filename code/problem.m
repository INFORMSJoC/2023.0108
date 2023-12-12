%===========Generation of linear bilevel programs=============

n=20;     %Dimension of the upper level variable x
l=30;     %Number of upper level inequality constraints
m=60;     %Dimension of the lower level variable y
p=50;     %Number of lower level inequality constraints

d=0.5;   
lb_y=-10*ones(m,1);   %lower bound for variable y
ub_y=10*ones(m,1);    %upper bound for variable y

c_1= sprand(n,1,d)-sprand(n,1,d); 
c_2= sprand(m,1,d)-sprand(m,1,d); 
A_1= sprand(l,n,d)-sprand(l,n,d); 
B_1= sprand(l,m,d)-sprand(l,m,d);  
b_1= sprand(l,1,d)-sprand(l,1,d); 
d_2= sprand(m,1,d)-sprand(m,1,d);  
A_2= sprand(p,n,d)-sprand(p,n,d);  
B_2= sprand(p,m,d)-sprand(p,m,d);  
b_2= sprand(p,1,d)-sprand(p,1,d); 
