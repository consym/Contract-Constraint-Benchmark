# Contract-Constraint-Benchmark

Contract contraint benchmark can be used to evaluate whether the smart contract vulnerability detector is aware of the hidden constraints.

## Contract Hidden Constraint Benchmark Datasets

* `buggy_tp`: 973 contracts with feasible vulnerabilities (corresponding to the *dataset1* in our paper).

* `buggy_fp`: 973 contracts with infeasible vulnerabilities (corresponding to the *dataset2* in our paper).

* `base-contract`: `buggy_tp` and `buggy_fp` are constructed by injecting buggy snippets into the base contracts.

