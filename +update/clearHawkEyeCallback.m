function clearHawkEyeCallback( source, event )
    l=findobj('tag','POS');
    set(l(:),'xData',NaN,'yData',NaN);
    l=findobj('tag','SET');
    set(l(:),'xData',NaN,'yData',NaN);    
end

