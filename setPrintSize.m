function setPrintSize(width, height, axisFlag)

fprintf('Setting PDF size to (%.2f, %.2f)\n', width, height)
set(gcf, 'units', 'inches')
set(gcf, 'paperposition', [ 0 0 width height ])
set(gcf, 'papersize', [ width height ])

if ~axisFlag
    
    fprintf('Maximizing axis\n')
    % set(gca, 'units', 'inches')
    set(gca, 'position', [ 0 0 1 1 ])

end

