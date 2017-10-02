count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

sum(0, []).
sum(Total, [Head|Tail]) :- sum(Subtotal, Tail), Total is Head + Subtotal.

average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum/Count.
