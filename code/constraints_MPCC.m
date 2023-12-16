function [c,ceq] = constraints_MPCC(x)

run('problem.m');

c=[A_1*x(1:n)-b_1; 
   A_2*x(1:n)+B_2*x(n+1:n+m)-b_2; 
   x(n+1:n+m)-ub_y;
   -x(n+1:n+m)+lb_y;
   -x(n+m+1:n+3*m+p)];
 
ceq=[d_2+(B_2)'*x(n+m+1:n+m+p)+x(n+m+p+1:n+2*m+p)-x(n+2*m+p+1:n+3*m+p);
     x(n+m+1:n+m+p)'*(A_2*x(1:n)+B_2*x(n+1:n+m)-b_2)+x(n+m+p+1:n+2*m+p)'*(x(n+1:n+m)-ub_y)+x(n+2*m+p+1:n+3*m+p)'*(lb_y-x(n+1:n+m))];  

end