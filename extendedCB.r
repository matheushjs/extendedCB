# require(RColorBrewer);

brewer.pal = function(n, name){
	allColors = t(col2rgb(RColorBrewer::brewer.pal(n=10000, name)));
	colorCount = nrow(allColors);

	red   = splinefun(x=seq(0, 1, length=colorCount), y=allColors[,1]/255);
	green = splinefun(x=seq(0, 1, length=colorCount), y=allColors[,2]/255);
	blue  = splinefun(x=seq(0, 1, length=colorCount), y=allColors[,3]/255);

	x = seq(0, 1, length=n);
	return( rgb(red(x), green(x), blue(x)) );
}
