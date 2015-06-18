function makePrint(path, fileName, type, flag)

if flag
    
    axis on
    
else
    
    axis off
    
end

if strcmp(type, 'pdf')
    
    c = get(gcf, 'color');
    invert = get(gcf, 'InvertHardCopy');
    
    set(gcf, 'color', 'none')
    set(gcf, 'InvertHardCopy', 'off')
    
    PrintPlot(path, fileName, type)
    
    set(gcf, 'color', c)
    set(gcf, 'InvertHardCopy', invert)
    
else
    
    PrintPlot(path, fileName, type)
    
end

end