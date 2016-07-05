clc;
clear;close;

//número de estaçõesa
nSt= linspace(1,50,50);

numbN = size(nSt,2);

//janela de contenção
cw =[5,15,31,63,127];
numbW = size(cw,2);

//Matriz de Probabilidade
prob = zeros(numbW,numbN);

j=1; i =1;
while i<=numbW
    w = cw(i);
    while j<=numbN
        n=nSt(j);
        
        po = 2/(w + 1);
        Ps= (n*po*(1-po)^(n-1))/(1-(1-po)^n);
        
        prob(i,j)=(Ps*100);
        
        j=j+1;
    end
    j=1;
    i=i+1;
end

figure;
i=1;
while i<=numbW
    plot(nSt(1,:),prob(i,:),"-");
    i=i+1;
end
    



//printf("Probabilidade de Sucesso: %.2f", (Ps*100));
//printf("%%\n");
