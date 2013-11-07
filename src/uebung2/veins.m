function aus=veins(t,v)

	c=5;
        m=20;
        g=9.81;
	phi = @(x,y) atan(y/x);

	aus = zeros(2,1);
	aus(1)=-(c*dot(v,v)*cos(phi(v(1),v(2))))/m;
	aus(2)=-((c*dot(v,v)*sin(phi(v(1),v(2))))/m) + g;

end
