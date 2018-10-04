$ mix run benchmarks/first.exs


Benchmarking jquish.small...
Benchmarking jsonpath.small...
Benchmarking jsonpath.small_atom...

Name                          ips        average  deviation         median         99th %
jsonpath.small           180.78 K        5.53 μs   ±429.89%           5 μs          14 μs
jsonpath.small_atom      165.71 K        6.03 μs   ±405.53%           5 μs          15 μs
jquish.small             139.56 K        7.17 μs   ±299.24%           6 μs          17 μs

Comparison:
jsonpath.small           180.78 K
jsonpath.small_atom      165.71 K - 1.09x slower
jquish.small             139.56 K - 1.30x slower
