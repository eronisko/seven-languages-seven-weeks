reverse_list([A|[]],[A]).
reverse_list([Head|Tail], RevList) :- reverse_list(Tail, ReversedTail), append(ReversedTail, [Head], RevList).

min([A, B], A) :- A =< B.
min([A, B], B) :- A > B.
min([Head|Tail], Min) :- min(Tail, TailMin), min([Head, TailMin], Min).

sort_list([A], [A]).
sort_list([Head|Tail], Sorted) :- min([Head|Tail], Min), Head > Min, append(Tail, [Head], HeadAfterTail), sort_list(HeadAfterTail, Sorted).
sort_list([Head|Tail], [Head|SortedTail]) :- min([Head|Tail], Head), sort_list(Tail, SortedTail), append([Head], SortedTail, Sorted).
