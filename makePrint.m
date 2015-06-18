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
    
    printPlot(path, fileName, type)
    
    set(gcf, 'color', c)
    set(gcf, 'InvertHardCopy', invert)
    
else
    
    printPlot(path, fileName, type)
    
end

    function printPlot(theFigurePath, printName, type)
        
        theFullPath = theFigurePath;
        
        if ~exist(theFullPath, 'dir')
            
            mkdir(theFullPath);
            
        end
        
        printFile = sprintf('%s/%s.%s', theFullPath, printName, type);
        
        print(sprintf('-d%s', type), printFile)
        
        fprintf('Printing file %s.\n', printFile)
        
    end

end
