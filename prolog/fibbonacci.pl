fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, Result) :- N1 is N - 1, N2 is N - 2, fib(N1, Res1), fib(N2, Res2), Result is Res1 + Res2.
