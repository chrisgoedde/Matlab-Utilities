function fs = createFigure(theAxis, flagVisible)

fs = figure('Visible', flagVisible);

axis(theAxis);

box on
set(gca, 'FontSize', 12)
