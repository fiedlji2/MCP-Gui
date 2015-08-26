function clearTelCallback( source, event )
    lines=getappdata(source.Parent.Parent,'lines');

    for i=1:max(size(lines(:)))
        lines(i).YData=nan(1,max(size(lines(i).YData)));
    end    
end

