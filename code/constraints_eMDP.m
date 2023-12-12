function [c,ceq] = constraints_eMDP(x)

run('problem.m');

c=[A_1*x(1:n)-b_1; 
   A_2*x(1:n)+B_2*x(n+1:n+m)-b_2; 
   x(n+1:n+m)-ub_y;
   -x(n+1:n+m)+lb_y; 
   -x(n+2*m+1:n+4*m+p);   
   (d_2)'*x(n+1:n+m)-(d_2)'*x(n+m+1:n+2*m);
   -x(n+2*m+1:n+2*m+p).*(A_2*x(1:n)+B_2*x(n+m+1:n+2*m)-b_2);
   -x(n+2*m+p+1:n+3*m+p).* (x(n+m+1:n+2*m)-ub_y);
   -x(n+3*m+p+1: n+4*m+p).* (lb_y-x(n+m+1:n+2*m))];

ceq=[d_2+(B_2)'*x(n+2*m+1:n+2*m+p)+ x(n+2*m+p+1:n+3*m+p)- x(n+3*m+p+1:n+4*m+p)]; 

end
