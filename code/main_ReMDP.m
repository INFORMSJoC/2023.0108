clc
clear
row_index = 0;
for k = [1:50] 
    row_index = row_index + 1;
    rng(k,'twister');
    run('problem.m');
    tic  
    Max_iter=100;
    epsilon_SQP = 1e-16;
    epsilon_r = 1e-8;  
    sigma = 0.5;     
    t0=0.1;
    t1=zeros(1,1);
    c0=zeros(n+4*m+p,1);
    c1=zeros(n+4*m+p,1);
    [x0,~,exit1]=linprog([],A_1, b_1,[],[]);
    if exit1~=1
       c0(1:n)=zeros(n,1);  
    else
       c0(1:n)=x0;  
    end
    [y0,~,exit2,~,lambda2]=linprog(d_2, B_2, b_2-A_2*c0(1:n), [],[],lb_y,ub_y);
    if exit2~=1
       c0(n+1:n+4*m+p)=zeros(4*m+p,1);  
    else
       c0(n+1:n+m)=y0;
       c0(n+m+1:n+2*m)=y0;
       c0(n+2*m+1:n+2*m+p)=lambda2.ineqlin;
       c0(n+2*m+p+1:n+3*m+p)=lambda2.upper;
       c0(n+3*m+p+1:n+4*m+p)=lambda2.lower;
    end

    for j=0:Max_iter
    options = optimoptions('fmincon','Algorithm','sqp','TolFun',epsilon_SQP);
    [x,ObjVal]=fmincon(@(x)fun(x),c0,[],[],[],[],[],[],@(x)constraints_ReMDP(x,t0),options);   
    b=norm( (d_2)'*x(n+1:n+m)-(d_2)'*x(n+m+1:n+2*m) );
    if b<=epsilon_r
    break;
    else
       c1(1:n)=x(1:n);
       [z1,~,exit3,out,lambda3]=linprog(d_2, B_2, b_2-A_2*c1(1:n), [],[],lb_y,ub_y);
       if exit3~=1
          c1=zeros(n+4*m+p,1);  
       else
          c1(n+1:n+m)=z1;
          c1(n+m+1:n+2*m)=z1;
          c1(n+2*m+1:n+2*m+p)= lambda3.ineqlin;
          c1(n+2*m+p+1:n+3*m+p)= lambda3.upper;
          c1(n+3*m+p+1:n+4*m+p)= lambda3.lower;
       end
       c0=c1;
       t1=max(t0*sigma, epsilon_r);
       t0=t1;
    end 
    end

    if j==Max_iter
        fprintf('\nNumber of iterations is maximised!\n');
    end      

    [~,h]=linprog(d_2,B_2, b_2-A_2*x(1:n),[],[],lb_y,ub_y);
    loweropti=d_2'*x(n+1:n+m);
    uppercon=max(0,A_1*x(1:n)-b_1);
    lowercon=max(0,A_2*x(1:n)+B_2*x(n+1:n+m)-b_2);
    upperbound_y=max(0,x(n+1:n+m)-ub_y);
    lowerbound_y=max(0,lb_y-x(n+1:n+m));
    a=max(0,abs(loweropti-h));
    Infeasibility=norm(uppercon)+norm(lowercon)+norm(upperbound_y)+norm(lowerbound_y)+a;
    t=toc;        
    result(row_index,:)=[k,ObjVal,Infeasibility,t];
end
date = datestr(now);
date = strrep(date,':','-');
save(['ReMDP, ',date],'result');




