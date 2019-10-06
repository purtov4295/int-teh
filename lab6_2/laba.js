function areaRectangle(){
    var a = document.forma1.t1.value;
    if (a<0) document.forma1.res.value = "Отриц. сторона";
    else {
    var s = a * a;
    document.forma1.res.value = s;
    }
  }