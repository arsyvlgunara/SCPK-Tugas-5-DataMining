data = [
    3 1 2 1 ;
    2 2 1 3 ;
    3 1 1 2 ;
    3 2 2 3 ;
    3 2 2 3 ;
    2 2 1 3 ;
    1 2 1 2 ;
    3 2 1 2 ;
    3 2 2 3 ;
    1 1 1 2 ;
    2 2 2 2 ;
    3 2 2 1 ;
    2 2 2 3 ;
    3 2 2 3 ;
    3 2 1 3 ;
    2 1 1 2 ;
    2 1 2 3 ;
    2 1 2 1 ;
    1 2 2 3 ;
    1 2 1 2 
    ];
sample = [2 1 2 3];
grup = [
    0;1;0;1;1;1;0;1;1;0;
    0;1;1;1;1;0;1;0;1;0;
    ];
k=3;
a = fitcknn(data,grup,'NumNeighbors',k);
class = predict(a,sample);
if class == 0
    class = "Tidak Direkomendasikan";
else 
    class = "Direkomendasikan";
end
fprintf('Hasil : %s\n',class)