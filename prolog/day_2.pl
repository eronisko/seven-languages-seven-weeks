reverse_list([A|[]],[A]).
reverse_list([Head|Tail], RevList) :- reverse_list(Tail, ReversedTail), append(ReversedTail, [Head], RevList).
