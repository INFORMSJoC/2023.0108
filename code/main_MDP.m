clc
clear
row_index = 0;
for k = [1:50] 
    row_index = row_index + 1;
    rng(k,'twister'); 
    run('problem.m');    
    tic
    c0=zeros(n+4*m+p,1);

    option = optimset('Algorithm','sqp');
    [x,ObjVal]=fmincon('fun',c0,[],[],[],[],[],[],'constraints_MDP',option);
    
    [~,h]=linprog(d_2,B_2, b_2-A_2*x(1:n),[],[],lb_y,ub_y);
    loweropti=d_2'*x(n+1:n+m);
    uppercon=max(0,A_1*x(1:n)-b_1);
    lowercon=max(0,A_2*x(1:n)+B_2*x(n+1:n+m)-b_2);
    upperbound_y=max(0,x(n+1:n+m)-ub_y);
    lowerbound_y=max(0,lb_y-x(n+1:n+m));
    a=abs(loweropti-h);
    Infeasibility=norm(uppercon)+norm(lowercon)+norm(upperbound_y)+norm(lowerbound_y)+a;
    t=toc;       
    result(row_index,:)=[k,ObjVal,Infeasibility,t];
end
date = datestr(now);
date = strrep(date,':','-');
save(['MDP, ',date],'result');