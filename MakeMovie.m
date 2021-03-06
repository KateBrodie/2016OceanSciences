%make movie ocean sciences

mov=VideoWriter('LOWFAT_SB_OceanSciences_whitebckground.avi');
mov.FrameRate = 10;
open(mov);
f=figure(7);
set(f,'units','normalized','outerposition',[0 0.5 1 0.5],'color','w') %make smaller to reduce video size
plot(ptdat.XSmat(140,:),ptdat.Zmat(140,:),'b.','markersize',5);
ylim([-1 1]);
xlim([92 122]);
set(gca,'nextplot','replacechildren');
set(gcf,'Renderer','zbuffer');

for i=140:400
    plot(ptdat.XSmat(i,:),ptdat.Zmat(i,:),'b.','markersize',15);
    %plot(coredat.xsgrid,griddat.zFilt(i,:),'b.','markersize',15);
    set(gca,'fontsize',14)
    ylim([-1 1]);
    xlim([92 122]);
    xlabel('FRF Cross-Shore Coordinate (m)','fontsize',20);
    ylabel('Elevation (m)','fontsize',20);
    frame=getframe(f);
    writeVideo(mov,frame);
    pause(0.05);
end
close(mov);