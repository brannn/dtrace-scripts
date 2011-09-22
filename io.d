#pragma D option quiet
BEGIN
{
       printf("%30s %20s %2s\n", "FILE NAME", "APP NAME(PID)", "RW");
}

io:::start
{
       printf("%30s%15s(%5d)%2s\n", args[2]->fi_name, execname, pid, args[0]->b_flags & B_READ ? "R" : "W");
}
