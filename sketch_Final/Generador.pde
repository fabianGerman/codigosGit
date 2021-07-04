void AparicionDeObstaculos(ArrayList<Pincho> pinchos, ArrayList<Cuadrado> cuadrados){ //genera obtaculos segun el cronometro (testa parte del codigo es inmensurablemnte larga)
//Pido perdon si es que tiene que leer eso
/*
Notas de agregacion: 
- el piso es 525 (cuadrado) y 550 (pincho)
-buena distancia de tiempo para objetos vinculados 12 (cuadrado) y 8 (pincho)
- casi 1200 líneas de código para esta parte D:
- Buscar otro metodo para agregar 
*/
  if(cronometro > 150 && cronometro < 152){    
    //pinchos.add(new Pincho(1000,550));
    cuadrados.add(new Cuadrado(1000,525));
    moneda.add(new Moneda ());
  }
  if(cronometro > 250 && cronometro < 252){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 350 && cronometro < 352){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 450 && cronometro < 452){
    pinchos.add(new Pincho(1000,550));
    
  }
  if(cronometro > 525 && cronometro < 527){//aqui plataforma
    base.posicion.x += 50;
    base.ancho -=50;
    base.display();
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 600 && cronometro < 602){
    pinchos.add(new Pincho(1000,550));
  }
  //===============(600 = 10s)===============
  if(cronometro > 675 && cronometro < 677){//aqui plataforma
    base.ancho += +0;
    base.posicion.x += 50;
    base.display();
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 682 && cronometro < 684){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 750 && cronometro < 752){
    cuadrados.add(new Cuadrado(1000,525));
    moneda.add(new Moneda ());
  }
  if(cronometro > 780 && cronometro < 782){
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 810 && cronometro < 812){
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 845 && cronometro < 847){
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 850 && cronometro < 852){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 858 && cronometro < 860){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 866 && cronometro < 868){// aqui plataforma
    base.ancho +=50;
    base.posicion.x += 50;
    base.display();
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 874 && cronometro < 876){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 880 && cronometro < 882){
    pinchos.add(new Pincho(1000,375));
  }
  if(cronometro > 882 && cronometro < 884){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 930 && cronometro < 932){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 965 && cronometro < 967){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1005 && cronometro < 1007){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1080 && cronometro < 1082){ 
    cuadrados.add(new Cuadrado(1000,525));
    moneda.add(new Moneda ());
  }
  if(cronometro > 1120 && cronometro < 1122){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 1160 && cronometro < 1162){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 1200 && cronometro < 1202){ 
    cuadrados.add(new Cuadrado(1000,475));
    moneda.add(new Moneda ());
  }
  //===============(1200 = 20s)===============
  if(cronometro > 1240 && cronometro < 1242){ //aqui plataforma
    base.ancho += 50;
    base.posicion.x += 50;
    base.display();
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 1276 && cronometro < 1278){ 
    pinchos.add(new Pincho(1000,450));
    moneda.add(new Moneda ());
  }
  if(cronometro > 1280 && cronometro < 1282){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 1330 && cronometro < 1332){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 1338 && cronometro < 1340){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 1346 && cronometro < 1348){//aqui plataforma
    base.ancho -= 50;
    base.posicion.x += 50;
    base.display();
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1354 && cronometro < 1356){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1362 && cronometro < 1364){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 1450 && cronometro < 1452){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 1500 && cronometro < 1502){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 1524 && cronometro < 1526){ //aqui plataforma
    cuadrados.add(new Cuadrado(1000,525));
    base.ancho -= 50;
    base.posicion.x -= 50;
    base.display();
    moneda.add(new Moneda ());
  }
  if(cronometro > 1572 && cronometro < 1574){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1650 && cronometro < 1652){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1658 && cronometro < 1660){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1690 && cronometro < 1692){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1698 && cronometro < 1700){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1730 && cronometro < 1702){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 1738 && cronometro < 1740){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1775 && cronometro < 1777){
    pinchos.add(new Pincho(1000,550));
  }
  //===============(1800 = 30s)===============
  if(cronometro > 1830 && cronometro < 1832){//aqui plataforma
    base.ancho += 50;
    base.posicion.x -= 50;
    base.display();
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1838 && cronometro < 1838){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1870 && cronometro < 1872){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 1878 && cronometro < 1880){//plataforma aqui
    base.ancho += 50;
    base.posicion.x -= 50;
    base.display();
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 1940 && cronometro < 1942){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2000 && cronometro < 2002){
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 2008 && cronometro < 2010){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2040 && cronometro < 2042){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2048 && cronometro < 2050){//plataforma aqui
    base.posicion.x += 50;
    base.display();
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2080 && cronometro < 2082){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2088 && cronometro < 2090){
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2160 && cronometro < 2162){ 
    cuadrados.add(new Cuadrado(1000,525));
    moneda.add(new Moneda ());
  }
  if(cronometro > 2200 && cronometro < 2202){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 2220 && cronometro < 2222){
    pinchos.add(new Pincho(1000,500));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2240 && cronometro < 2242){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 2275 && cronometro < 2277){ 
    cuadrados.add(new Cuadrado(1000,425));
    moneda.add(new Moneda ());
  }
  if(cronometro > 2310 && cronometro < 2312){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 2345 && cronometro < 2347){ 
    cuadrados.add(new Cuadrado(1000,325));
    moneda.add(new Moneda ());
  }
  if(cronometro > 2365 && cronometro < 2367){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 2400 && cronometro < 2402){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  //===============(2400 = 40s)===============
  if(cronometro > 2414 && cronometro < 2416){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2422 && cronometro < 2424){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2430 && cronometro < 2432){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2438 && cronometro < 2440){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2550 && cronometro < 2552){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 2590 && cronometro < 2592){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 2630 && cronometro < 2632){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 2670 && cronometro < 2672){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 2706 && cronometro < 2708){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2714 && cronometro < 2716){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2760 && cronometro < 2768){ 
    pinchos.add(new Pincho(1000,525));
  }
  if(cronometro > 2800 && cronometro < 2802){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 2840 && cronometro < 2842){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 2880 && cronometro < 2882){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 2916 && cronometro < 2918){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2924 && cronometro < 2926){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 2970 && cronometro < 2792){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  //===============(3000 = 50s)===============
  if(cronometro > 3010 && cronometro < 3012){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 3050 && cronometro < 3052){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 3090 && cronometro < 3092){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 3125 && cronometro < 3127){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 3130 && cronometro < 3132){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3138 && cronometro < 3140){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3146 && cronometro < 3148){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3154 && cronometro < 3156){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3160 && cronometro < 3162){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 3210 && cronometro < 3212){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3250 && cronometro < 3250){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3258 && cronometro < 3260){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3274 && cronometro < 3276){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 3282 && cronometro < 3284){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3290 && cronometro < 3292){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3350 && cronometro < 3352){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3358 && cronometro < 3360){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3374 && cronometro < 3376){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 3382 && cronometro < 3384){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3390 && cronometro < 3392){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3450 && cronometro < 3452){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3458 && cronometro < 3460){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3474 && cronometro < 3476){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 3482 && cronometro < 3484){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3490 && cronometro < 3492){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3540 && cronometro < 3542){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3548 && cronometro < 3550){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3564 && cronometro < 3566){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 3572 && cronometro < 3574){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3580 && cronometro < 3582){ 
    pinchos.add(new Pincho(1000,550));
  }
  //===============(3600 = 60s)===============
  if(cronometro > 3650 && cronometro < 3652){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 3690 && cronometro < 3692){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 3725 && cronometro < 3727){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 3760 && cronometro < 3762){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 3795 && cronometro < 3797){ 
    cuadrados.add(new Cuadrado(1000,325));
    moneda.add(new Moneda ());
  }  
  if(cronometro > 3830 && cronometro < 3832){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 3838 && cronometro < 3840){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3846 && cronometro < 3848){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3854 && cronometro < 3856){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 3862 && cronometro < 3864){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4000 && cronometro < 4002){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 4040 && cronometro < 4042){ 
    cuadrados.add(new Cuadrado(1000,475));
    moneda.add(new Moneda ());
  }
  if(cronometro > 4075 && cronometro < 4077){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 4110 && cronometro < 4112){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 4145 && cronometro < 4147){ 
    cuadrados.add(new Cuadrado(1000,325));
  }  
  if(cronometro > 4180 && cronometro < 4182){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 4188 && cronometro < 4190){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4196 && cronometro < 4198){ 
    pinchos.add(new Pincho(1000,550));
  }
  //===============(4200 = 70s)===============
  if(cronometro > 4204 && cronometro < 4206){ 
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 4212 && cronometro < 4214){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4300 && cronometro < 4302){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 4340 && cronometro < 4342){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 4375 && cronometro < 4377){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 4410 && cronometro < 4412){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 4445 && cronometro < 4447){ 
    cuadrados.add(new Cuadrado(1000,325));
  }  
  if(cronometro > 4480 && cronometro < 4482){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 4488 && cronometro < 4490){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4496 && cronometro < 4498){ 
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 4504 && cronometro < 4506){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4512 && cronometro < 4512){ 
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 4600 && cronometro < 4602){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4650 && cronometro < 4652){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4700 && cronometro < 4702){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4750 && cronometro < 4752){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4800 && cronometro < 4802){ 
    pinchos.add(new Pincho(1000,550));
  }
  //===============(4800 = 80s)===============
  if(cronometro > 4850 && cronometro < 4852){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4900 && cronometro < 4902){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 4950 && cronometro < 4952){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
    moneda.add(new Moneda ());
  }
  if(cronometro > 5000 && cronometro < 5002){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5008 && cronometro < 5010){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5046 && cronometro < 5048){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5100 && cronometro < 5102){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5170 && cronometro < 5172){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5230 && cronometro < 5232){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5280 && cronometro < 5282){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5330 && cronometro < 5332){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5380 && cronometro < 5382){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  //===============(5400 = 90s)===============
  if(cronometro > 5500 && cronometro < 5502){
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 5540 && cronometro < 5542){
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 5575 && cronometro < 5577){
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 5605 && cronometro < 5607){
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 5625 && cronometro < 5627){
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 5640 && cronometro < 5642){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5648 && cronometro < 5650){ 
    pinchos.add(new Pincho(1000,400));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5656 && cronometro < 5658){ 
    pinchos.add(new Pincho(1000,400));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5750 && cronometro < 5752){
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 5790 && cronometro < 5792){
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 5825 && cronometro < 5827){
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 5860 && cronometro < 5862){
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 5860 && cronometro < 5862){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5876 && cronometro < 5878){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 5950 && cronometro < 5952){
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 5990 && cronometro < 5992){
    cuadrados.add(new Cuadrado(1000,475));
  }
  //===============(6000 = 100s)===============
  if(cronometro > 6025 && cronometro < 6027){
    cuadrados.add(new Cuadrado(1000,425));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 6060 && cronometro < 6062){
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 6068 && cronometro < 6070){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 6076 && cronometro < 6078){ 
    pinchos.add(new Pincho(1000,350));
    moneda.add(new Moneda ());
  }
  if(cronometro > 6084 && cronometro < 6086){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 6092 && cronometro < 6094){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 6200 && cronometro < 6202){
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 6240 && cronometro < 6242){
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 6275 && cronometro < 6277){
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 6310 && cronometro < 6312){
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 6318 && cronometro < 6320){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 6326 && cronometro < 6328){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 6334 && cronometro < 6336){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 6342 && cronometro < 6344){ 
    pinchos.add(new Pincho(1000,350));
    moneda.add(new Moneda ());
  }
  if(cronometro > 6450 && cronometro < 6452){
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 6490 && cronometro < 6402){
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 6525 && cronometro < 6527){
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 6560 && cronometro < 6562){
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 6560 && cronometro < 6562){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 6576 && cronometro < 6578){ 
    pinchos.add(new Pincho(1000,515));
    pinchos.add(new Pincho(1000,550));
  }
  //===============(6600 = 110s)===============
  if(cronometro > 6700 && cronometro < 6702){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 6740 && cronometro < 6742){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 6775 && cronometro < 6777){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 6791 && cronometro < 6793){ 
    pinchos.add(new Pincho(1000,400));
  }
  if(cronometro > 6799 && cronometro < 6801){ 
    pinchos.add(new Pincho(1000,500));
  }
  if(cronometro > 6820 && cronometro < 6822){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 6836 && cronometro < 6838){ 
    pinchos.add(new Pincho(1000,400));
  }
  if(cronometro > 6844 && cronometro < 6846){ 
    pinchos.add(new Pincho(1000,400));
  }
  if(cronometro > 6865 && cronometro < 6867){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 6881 && cronometro < 6883){ 
    pinchos.add(new Pincho(1000,400));
  }
  if(cronometro > 6889 && cronometro < 6891){ 
    pinchos.add(new Pincho(1000,400));
  }
  if(cronometro > 6910 && cronometro < 6912){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 6945 && cronometro < 6947){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 6980 && cronometro < 6982){ 
    cuadrados.add(new Cuadrado(1000,325));
    moneda.add(new Moneda ());
  }
  if(cronometro > 6996 && cronometro < 6998){ 
    pinchos.add(new Pincho(1000,300));
    moneda.add(new Moneda ());
  }
  if(cronometro > 7004 && cronometro < 7006){ 
    pinchos.add(new Pincho(1000,300));
  }
  if(cronometro > 7025 && cronometro < 7027){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 7041 && cronometro < 7043){ 
    pinchos.add(new Pincho(1000,300));
    moneda.add(new Moneda ());
  }
  if(cronometro > 7049 && cronometro < 7051){ 
    pinchos.add(new Pincho(1000,300));
  }
  if(cronometro > 7070 && cronometro < 7072){ 
    cuadrados.add(new Cuadrado(1000,325));
    moneda.add(new Moneda ());
  }
  if(cronometro > 7086 && cronometro < 7088){ 
    pinchos.add(new Pincho(1000,300));
  }
  if(cronometro > 7094 && cronometro < 7096){ 
    pinchos.add(new Pincho(1000,300));
  }
  if(cronometro > 7115 && cronometro < 7117){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 7135 && cronometro < 7137){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 7155 && cronometro < 7157){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 7175 && cronometro < 7177){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7191 && cronometro < 7193){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 7199 && cronometro < 7201){ 
    pinchos.add(new Pincho(1000,450));
  }
  //===============(7200 = 120s)===============
  if(cronometro > 7220 && cronometro < 7222){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7236 && cronometro < 7238){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 7244 && cronometro < 7248){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 7265 && cronometro < 7268){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7281 && cronometro < 7283){ 
    pinchos.add(new Pincho(1000,450));
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 7289 && cronometro < 7291){ 
    pinchos.add(new Pincho(1000,450));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7310 && cronometro < 7312){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7335 && cronometro < 7337){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 7380 && cronometro < 7382){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7388 && cronometro < 7390){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7433 && cronometro < 7434){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7441 && cronometro < 7443){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7536 && cronometro < 7538){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7550 && cronometro < 7552){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 7571 && cronometro < 7573){ 
    pinchos.add(new Pincho(1000,500));
  }
  if(cronometro > 7585 && cronometro < 7587){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7606 && cronometro < 7608){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 7620 && cronometro < 7622){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 7641 && cronometro < 7643){ 
    pinchos.add(new Pincho(1000,400));
  }
  if(cronometro > 7655 && cronometro < 7657){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 7680 && cronometro < 7682){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 7715 && cronometro < 7717){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 7750 && cronometro < 7752){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 7775 && cronometro < 7777){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  //===============(7800 = 130s)===============
  if(cronometro > 7810 && cronometro < 7812){ 
    cuadrados.add(new Cuadrado(1000,325));
    moneda.add(new Moneda ());
  }
  if(cronometro > 7835 && cronometro < 7837){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 7860 && cronometro < 7862){ 
    cuadrados.add(new Cuadrado(1000,425));
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7868 && cronometro < 7870){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 7885 && cronometro < 7887){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7910 && cronometro < 7912){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 7945 && cronometro < 7947){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 7970 && cronometro < 7972){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 8005 && cronometro < 8007){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 8040 && cronometro < 8042){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 8065 && cronometro < 8067){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 8100 && cronometro < 8102){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 8135 && cronometro < 8137){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 8160 && cronometro < 8162){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 8195 && cronometro < 8197){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 8220 && cronometro < 8222){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 8255 && cronometro < 8257){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 8290 && cronometro < 8292){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 8315 && cronometro < 8317){ 
    cuadrados.add(new Cuadrado(1000,375));
    moneda.add(new Moneda ());
  }
  if(cronometro > 8350 && cronometro < 8352){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 8375 && cronometro < 8377){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 8400 && cronometro < 8402){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  //===============(8400 = 140s)===============
  if(cronometro > 8408 && cronometro < 8410){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8416 && cronometro < 8418){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8424 && cronometro < 8426){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8432 && cronometro < 8434){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8445 && cronometro < 8447){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 8470 && cronometro < 8472){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 8495 && cronometro < 8497){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 8600 && cronometro < 8602){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 8640 && cronometro < 8642){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 8648 && cronometro < 8650){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 8656 && cronometro < 8658){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 8664 && cronometro < 8668){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 8750 && cronometro < 8752){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 8790 && cronometro < 8792){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 8798 && cronometro < 8800){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8806 && cronometro < 8808){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8814 && cronometro < 8816){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8900 && cronometro < 8902){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 8940 && cronometro < 8942){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 8948 && cronometro < 8950){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8956 && cronometro < 8958){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 8964 && cronometro < 8968){ 
    pinchos.add(new Pincho(1000,550));
  }
  //===============(9000 = 150s)===============
  if(cronometro > 9050 && cronometro < 9052){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 9058 && cronometro < 9060){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 9066 && cronometro < 9068){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 9074 && cronometro < 9076){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 9090 && cronometro < 9092){ 
    pinchos.add(new Pincho(1000,525));
  }
  if(cronometro > 9130 && cronometro < 9132){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 9165 && cronometro < 9167){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9205 && cronometro < 9207){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9230 && cronometro < 9232){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 9275 && cronometro < 9277){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 9305 && cronometro < 9307){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9340 && cronometro < 9342){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 9385 && cronometro < 9387){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 9410 && cronometro < 9412){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9455 && cronometro < 9457){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9490 && cronometro < 9492){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 9535 && cronometro < 9535){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 9560 && cronometro < 9562){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9560 && cronometro < 9562){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 9568 && cronometro < 9570){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 9585 && cronometro < 9587){ 
    pinchos.add(new Pincho(1000,475));
  }
  if(cronometro > 9610 && cronometro < 9612){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  //===============(9600 = 160s)===============
  if(cronometro > 9655 && cronometro < 9657){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 9690 && cronometro < 9692){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 9725 && cronometro < 9727){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9760 && cronometro < 9762){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 9795 && cronometro < 9797){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 9830 && cronometro < 9832){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 9865 && cronometro < 9867){ 
    cuadrados.add(new Cuadrado(1000,225));
  }
  if(cronometro > 9900 && cronometro < 9902){ 
    cuadrados.add(new Cuadrado(1000,175));
  }
  if(cronometro > 9960 && cronometro < 9962){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 9985 && cronometro < 9987){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 9990 && cronometro < 9992){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 9993 && cronometro < 9995){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 10001 && cronometro < 10003){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 10035 && cronometro < 10037){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 10070 && cronometro < 10073){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 10105 && cronometro < 10107){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 10130 && cronometro < 10132){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 10165 && cronometro < 10165){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 10190 && cronometro < 10192){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  //===============(10200 = 170s)===============
  if(cronometro > 10235 && cronometro < 10237){ 
    cuadrados.add(new Cuadrado(1000,435));
  }
  if(cronometro > 10260 && cronometro < 10262){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 10305 && cronometro < 10307){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 10330 && cronometro < 10337){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 10355 && cronometro < 10357){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 10363 && cronometro < 10365){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 10371 && cronometro < 10373){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 10380 && cronometro < 10382){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 10425 && cronometro < 10427){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 10470 && cronometro < 10472){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 10495 && cronometro < 10497){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 10600 && cronometro < 10602){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 10635 && cronometro < 1037){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 10670 && cronometro < 10672){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 10705 && cronometro < 10707){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 10740 && cronometro < 10742){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 10775 && cronometro < 10777){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  //===============(10800 = 180s)===============
  if(cronometro > 10810 && cronometro < 10812){ 
    cuadrados.add(new Cuadrado(1000,225));
  }
  if(cronometro > 10845 && cronometro < 10847){ 
    cuadrados.add(new Cuadrado(1000,175));
  }
  if(cronometro > 10870 && cronometro < 10872){ 
    cuadrados.add(new Cuadrado(1000,225));
  }
  if(cronometro > 10895 && cronometro < 10897){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 10920 && cronometro < 10922){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 10945 && cronometro < 10947){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 10970 && cronometro < 10972){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 10995 && cronometro < 10997){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 11020 && cronometro < 11022){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 11100 && cronometro < 11102){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 11116 && cronometro < 11118){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 11132 && cronometro < 11134){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 11150 && cronometro < 11152){ 
    cuadrados.add(new Cuadrado(1000,525));
    pinchos.add(new Pincho(1000,300));
  }
  if(cronometro > 11166 && cronometro < 11168){ 
    pinchos.add(new Pincho(1000,350));
  }
  if(cronometro > 11184 && cronometro < 11186){ 
    pinchos.add(new Pincho(1000,450));
  }
  if(cronometro > 11200 && cronometro < 11202){ 
    pinchos.add(new Pincho(1000,550));
  }
  if(cronometro > 11350 && cronometro < 11352){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  if(cronometro > 11385 && cronometro < 11387){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  //===============(11400 = 190s)===============
  if(cronometro > 11420 && cronometro < 11422){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 11455 && cronometro < 11457){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 11490 && cronometro < 11492){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 11525 && cronometro < 11527){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 11560 && cronometro < 11562){ 
    cuadrados.add(new Cuadrado(1000,225));
  }
  if(cronometro > 11595 && cronometro < 11597){ 
    cuadrados.add(new Cuadrado(1000,175));
  }
  if(cronometro > 11620 && cronometro < 11628){ 
    cuadrados.add(new Cuadrado(1000,225));
  }
  if(cronometro > 11645 && cronometro < 11647){ 
    cuadrados.add(new Cuadrado(1000,275));
  }
  if(cronometro > 11670 && cronometro < 11672){ 
    cuadrados.add(new Cuadrado(1000,325));
  }
  if(cronometro > 11695 && cronometro < 11697){ 
    cuadrados.add(new Cuadrado(1000,375));
  }
  if(cronometro > 11720 && cronometro < 11722){ 
    cuadrados.add(new Cuadrado(1000,425));
  }
  if(cronometro > 11745 && cronometro < 11747){ 
    cuadrados.add(new Cuadrado(1000,475));
  }
  if(cronometro > 11770 && cronometro < 11772){ 
    cuadrados.add(new Cuadrado(1000,525));
  }
  //===============(FINAL)===============
  if(cronometro > 11800){ //juego completado
    JuegoCompletado();
  }
}  
