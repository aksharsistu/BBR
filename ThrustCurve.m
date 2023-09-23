function y = ThrustCurve(x, offset)
    if x >= offset && x <= 0.25 + offset
        y = 120*(x-offset);
    elseif x >= 0.25 + offset && x <= 1 + offset
        %y = 10.0503 + 0.0847658/((x-offset)^3.94032);
        %y = -20213 + 20226.1/(x-offset)^0.0000294692;
        y = 9.9672 + 1311.23*exp(-14.5652*(x-offset));
    elseif x >= 1 + offset && x <= 2.8 + offset
        y = 10;
    else
        y = 0;
    end
end
