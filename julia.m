function vect_it = julia(n,rec,imc)
    max_iterations = 64;
    rez = -2:0.0005:2;
    imz = -2:0.0005:2;
    vect_it = zeros(length(rez),length(imz));
    c = rec + imc*1i
    for x = 1:length(rez)
        for y = 1:length(imz)
            z = rez(x) + imz(y)*1i;
            modf = 0;
            it = 0;
            while modf < 2
                z = z^n + c; 
                modf = abs(z);
                it = it + 1;
                if it == max_iterations
                    break 
                end
            end
            vect_it(y,x) = it;
        end
    end
end