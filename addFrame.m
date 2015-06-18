function addFrame(n, figHandle, fileName)

[ im, map ] = rgb2ind(frame2im(getframe(figHandle)), 256, 'nodither');
if n == 1
    
    imwrite(im, map, fileName, 'gif', 'DelayTime', 0, 'Loopcount', inf);
    
else
    
    imwrite(im, map, fileName, 'gif', 'DelayTime', 0, 'WriteMode', 'append');
    
end

end

