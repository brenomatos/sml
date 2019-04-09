fun cube(x) = x * x * x;

fun cuber(y:real) = y * y * y;

fun fourth(a::b::c::d::L) = d;

fun min(a,b) = if a<b then a else b;
fun min3(a,b,c) = min(min(a,b),c)
