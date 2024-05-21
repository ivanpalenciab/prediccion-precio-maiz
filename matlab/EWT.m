x=readtable("../datos_maiz.csv");
y=x.Last;
figure(1)
plot(x.Date,x.Last)
levelForReconstruction = [false,true,true,true,true,true,true,true,true,true,true,true];

bandas=12;

[mra,cfs,wfb,info] = ewt(y, ...
    MaxNumPeaks=bandas, ...
    SegmentMethod='geomean', ...
    FrequencyResolution=0.00052611, ...
    LogSpectrum=false);


y2 = sum(mra(:,levelForReconstruction),2);
figure(3)
plot(x.Date,y2);
title('Datos reconstruidos EWT');
saveas(gcf, 'imagenes/Reconstruccion EWT');

fecha_formateada=datestr(x.Date, 'yyyy-mm-dd');
DatosFinal=table(fecha_formateada,y2,'VariableNames',{'Fecha','Precio_Cierre'});
writetable(DatosFinal,"EWT_datos.csv")

figure(4)
t = tiledlayout(4,3, ...
    TileSpacing="compact",Padding="compact");
for n = 1:12
    nexttile(t)
    plot(x.Date,mra(:,n))
    title("Modo " + num2str(n))
    xlabel("Tiempo")
end
title(t,"Empirical Wavelet Transform (EWT)")
saveas(gcf, 'imagenes/Descompocision_EWT');