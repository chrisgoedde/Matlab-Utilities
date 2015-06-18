function startAnimation(~, event)

persistent animating;

if isa(event, 'matlab.ui.eventdata.KeyData')
    
    if isempty(animating)
        
        animating = true;
        
    end
    
    newKey = event.Character;
    
    if strcmp(newKey, ' ')
        
        if animating
            
            animating = false;
            uiwait
            
        else
            
            animating = true;
            uiresume
            
        end
        
    else
        
        animating = false;
        close(gcf)
        
    end
    
else
    
    if event
        
        animating = true;
        
    else
        
        animating = false;
        uiwait
        
    end
    
end

end
