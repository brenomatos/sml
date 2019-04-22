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

fun divisible (x,b) = if x mod b = 0 then true else false;



fun il3rl x = map (fn a => real(a)) x ;

fun ordList(z) = map (fn a => ord(a)) z;

fun squareList x = map (fn a => a*a) x;

fun multPairs x = map (fn (a,b) => a*b) x;

fun incList (x,n) = map (fn a => a+n) x;

fun sqSum xs = foldl (fn (x,acc) => x*x + acc) (hd xs) (tl xs);

fun bor x = foldl (fn (a, acc) => a orelse acc) (hd x) (tl x);

fun band x = foldl (fn (a, acc) => a andalso acc) (hd x) (tl x);

fun bxor x = foldl (fn (a, acc) => (a orelse acc) andalso not(a andalso acc)) (hd x) (tl x);

fun dupList x = foldr (fn (a,acc) => [a,a]@acc) [] x;

fun myLength x = foldl (fn (a,acc) => acc+1) 0 ( x);

(* fun is2absrl x = map(real(fn a => real(abs(a)))) x; *)

fun trueCount x = foldl (fn (a,acc) => if a=true then acc+1 else acc+0) 0 (x);

fun maxPairs x = map (fn (a,b) => if a > b then a else b) x;

fun myImplode x = foldl (fn (a,acc) => a^acc) "" (x);

fun lconcat x = foldr (fn (a,acc) => a@acc) [] x;

fun max x = foldl (fn (a,acc) => if a > acc then a else acc) (hd x) (tl x);

fun min x = foldl (fn (a,acc) => if a > acc then acc else a) (hd x) (tl x);

(* fun member (e,L) = foldl (fn (e,acc) => if e=(acc) then true else false ) (hd L) (tl L); *)


fun less (e,L) = foldl(fn(e,acc) => if hd L > e then [e]@acc else nil@acc) ([]) ( L);
