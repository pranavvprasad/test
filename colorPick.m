fig = uifigure;   
a={1 0 0 255 [];2 0 255 0 []};
t=cell2table(a,'VariableNames',{'Row#','R','G','B','Color'});
uit = uitable(fig,'Data',t,'ColumnEditable',[false true true true false],'Position',[20 20 400 204], 'CellEditCallback',@changeColor);

for i=1:size(t,1)
    col=[uit.Data.R(i) uit.Data.G(i) uit.Data.B(i)]/255;
    addStyle(uit,uistyle('BackgroundColor',col),'cell',[i 5])
end    


function changeColor(src,event)
rowN=event.Indices(1);
new_col=[src.Data.R(rowN) src.Data.G(rowN) src.Data.B(rowN)]/255;
addStyle(src,uistyle('BackgroundColor',new_col),'cell',[rowN 5])
end