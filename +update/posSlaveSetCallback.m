function  posSlaveSetCallback( source, event, list )
   addr=repmat(constants.address('COORDINATOR'),max(size(list)),1);
   for i=1:max(size(list))
      if list(i).Value>1 
        tab=findobj('Title',cell2mat(list(i).String(list(i).Value)));
        addr(i,:)=tab.UserData;
      end
   end       
  serial.write(protocol.positionSlaveSetRequest(source.Parent.Parent.Parent.UserData,addr(1,:),addr(2,:),addr(3,:),addr(4,:)));
end

