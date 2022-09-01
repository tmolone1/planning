library(rasterVis)
library(cowplot)
library(tiff)
library(ggplot2)

r<-brick("Figure 1.tiff")
p<-plotRGB(r)

img<-readTIFF("Figure1.tiff")
p<-gplot(r) + 
  geom_tile(aes(fill = value)) 

draw<-ggdraw() +
  draw_image("Figure 3.tiff",x = 0, y= -.03, scale =.8, vjust=0,hjust=0) + 
  draw_image("SEO_logo_BW.png", x = 0.37, y= -0.4, scale =.11, vjust=0,hjust=0) + 
  draw_label("DRAFT", colour = "#80404080", size = 120, angle = 45) +
  draw_label("Figure 4", colour = "black", x = .22, y= .9,size = 36)

#draw

pdf(paste0("Figure4.pdf"), family = "sans",width=11,height=8.5,pagecentre = TRUE)
print(draw)
dev.off()

draw<-ggdraw() +
  draw_image("Figure1.PNG",x = 0, y= 0, scale =.8, vjust=0,hjust=0) + 
  draw_image("SEO_logo_BW.png", x = 0.37, y= -0.40, scale =.11, vjust=0,hjust=0) + 
  draw_label("DRAFT", colour = "#80404080", size = 120, angle = 45) +
  draw_label("Figure 1", colour = "black", x = .17, y= .9,size = 36) +
  draw_label("Well Locations", colour = "black", x = .16, y= .85,size = 14)

#draw

pdf(paste0("Figure1.pdf"), family = "sans",width=11,height=8.5,pagecentre = TRUE)
print(draw)
dev.off()
