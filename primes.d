import std.stdio;
import std.conv;
import std.math;
import std.datetime.stopwatch;
void main()
{
StopWatch sw;
sw.start();
int n=10 * 1000*1000;
float t=ceil(float(n)/2);
int q= to!int(t);
bool[] p= new bool[](q);

foreach (i;0 .. q-1){p[i]=true;}

float a=to!int(sqrt(float(n)));
int ub = to!int(a);
for (int i = 3; i <=ub; i+=2)
    {
    if (p[(i-1)/2])
        for (int j = (i*i-1)/2; j <=q-1; j+=i)
     {p[j]=false;}

    }

int k=0;
int pn=0;
foreach (i;0 .. q-1){
 if (p[i]){k++;pn=2*i+1;}
}

sw.stop();
writeln("count:",k," max:",pn);
writeln("Total time cost:",sw.peek.total!"msecs");
/*
foreach (i;0 .. q-1){
 if (p[i])writeln(2*i+1);
}
*/
}
