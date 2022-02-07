function f = ch_stalagmite(inputvector)
    X = inputvector(1);
    Y = inputvector(2);

    f1=[sin(5.1*pi*X+0.5)].^6;
    f2=[sin(5.1*pi*Y+0.5)].^6;
    f3=exp(-4*log(2)*((X-0.0667).^2/0.64));
    f4=exp(-4*log(2)*((Y-0.0667).^2/0.64));
    f=-(f1*f2*f3*f4);
end
