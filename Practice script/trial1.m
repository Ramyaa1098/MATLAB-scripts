function term = em_calc_function(a,b,V)
    syms x y n
    denom = (2*a);
    alpha_n = (n*pi)/denom;
    p = (pi*(x+a))/denom;
    exp_val = (pi*(b-y))/ denom;
    q = exp(-exp_val);
    psi = atan((2*q*sin(p))/(1 - q^2));
    term4 = psi/2;
    term3 = (sin(n))*p;
    term2 = q^n;
    term1 = 1/n*((sinh(alpha_n*y)/sinh(alpha_n*b))- term2)*term3;
    term(x,y) = ((4*V/pi)*(symsum(term1,n, 1,10)+ term4));
    
end
