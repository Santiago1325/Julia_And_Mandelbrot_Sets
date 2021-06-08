function mandelbrot()
    max_iterations = 64;
    rec = -2:0.00025:2;
    imc = -2:0.00025:2;
    vect_it = zeros(length(rec),length(imc));
    for x = 1:length(rec)
        for y = 1:length(imc)
            z = 0;
            modf = 0;
            it = 0;
            while modf < 2
                z = z^2 + (rec(x) + imc(y)*1i); 
                modf = abs(z);
                it = it + 1;
                if it == max_iterations
                    break 
                end
            end
            vect_it(y,x) = it;
        end
    end
    figure;
    imagesc(vect_it);
    colormap hot;
    axis square;
end