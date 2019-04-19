fun cube x = x*x*x;

fun cuber x:real = x*x*x;

fun fourth (a::b::c::d) = d

fun min2(a,b) = if a<b then a else b;
fun min3(a,b,c) = min2(min2(a,b),c)

fun red3(a,b,c) = (a,c);

fun third(a::b::c::d) = c;
fun thirds a = third(explode(a));

fun cycle1( l::ls) = ls@[l];

fun sort2(a:real,b:real) = if a<b then [a]@[b] else [b]@[a];

fun minr2(a:real,b:real) = if a<b then a else b;
fun sort3(a:real,b:real,c:real) = if a<minr2(b,c) then [a]@sort2(b,c)
  else if b<minr2(a,c) then [b]@sort2(a,c)
  else [c]@sort2(a,b)

fun del3(a::b::c::d) = a::b::d;

fun sqsum(0) = 0 | sqsum(n) = (n*n )+sqsum(n-1);

fun cycle(l::ls,0) = l::ls | cycle(l::ls,1) = ls@[l] | cycle(l::ls,n) = cycle(ls@[l],n-1);

fun pow(a:real,1) = a | pow(a,n) = a*pow(a,n-1);

fun maxhelper([],x) = x | maxhelper(l, x) = if hd l > x then maxhelper(tl l,hd l) else maxhelper(tl l,x);
fun max(l) = maxhelper(tl l, hd l);
