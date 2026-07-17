# A Coefficient-Two Additive Improvement to the HPV Lower Bound for Superpermutations

This repository contains a paper and its complete, machine-checked Lean 4 formalization.

## The result

Let `S(n)` be the minimum length of a word over the alphabet `{1, …, n}` containing every
permutation of `{1, …, n}` as a contiguous factor. The
Anonymous–Houston–Pantone–Vatter (HPV) lower bound is
`S(n) ≥ HPV(n) := n! + (n−1)! + (n−2)! + n − 3`. The paper proves, for all `n ≥ 5`,

    S(n)  ≥  HPV(n) + ⌈((n−3)! − 1) / (2n − 1)⌉ ,

and the ceiling is exactly the largest additive gain the underlying criterion admits.
The first cases:

| n | HPV(n) | this paper | best upper bound |
|---|---|---|---|
| 5 | 152 | **153** | 153 (= S(5)) |
| 6 | 867 | **868** | 872 |
| 7 | 5884 | **5886** | 5906 |
| 8 | 46085 | **46093** | 46205 |
| 9 | 408246 | **408289** | 408966 |
| 10 | 4032007 | **4032273** | 4037047 |
| 11 | 43908488 | **43910408** | 43948808 |

A readable weaker form, uniform over the whole range: `S(n) ≥ HPV(n) + ⌈(n−4)!/3⌉` for
all `n ≥ 5`, with equality against the ceiling at `n = 5, 6, 7, 8`; no such form with
coefficient `≥ 1/2` on `(n−4)!` exists. The `k = 0` instance of the criterion
gives `S(n) ≥ HPV(n) + 1` for all `n ≥ 5` — the improvement announced by Houston, for
which no proof had been published.

## Contents

- `paper/coeff2_paper.pdf` (and `.tex`) — the paper. It is self-contained and classical;
  reading it requires no formalization background.
- `Coeff2/` — the Lean 4 formalization: every definition of the paper and **every
  numbered display and named result — 93 statements, one theorem per paper item, in
  paper order** — each with a docstring citing its paper label. No `sorry`, no custom
  axioms.
- `AxiomCheck.lean` — an executable audit: `#print axioms` for all 93 statements.

## The formalization

The files mirror the paper's development:

| file | contents | paper |
|---|---|---|
| `Coeff2/Words.lean` | words, permutation words, overlap weight, properness | §2 |
| `Coeff2/Walks.lean` | walks, covering walks, `Λ(n)`, `S(n)`, `HPV(n)` | §2 |
| `Coeff2/Loops.lean` | rotation classes, marked 2-loops, the active-loop convention, `p, c, v, e, r, ℓ` | §3 |
| `Coeff2/Breaks.lean` | first entries, the successor map `M`, breaks, local defects | §4 |
| `Coeff2/Charges.lean` | shared orbits, the charge map, window modes, slots | §5 |
| `Coeff2/Helpers.lean`, `Coeff2/Auxiliary.lean` | proof infrastructure | — |
| `Coeff2/Statements.lean` | all 93 results, in paper order | §§2–7 |

Selected headline theorems (all in `Coeff2/Statements.lean`):

- `Coeff2.intromain` — the main theorem: `HPV n + ((n−3)! − 1) ⌈/⌉ (2n−1) ≤ S n` for `n ≥ 5`;
- `Coeff2.criterion` / `Coeff2.solve_criterion` — the coefficient-two criterion and its
  closed-form solution (as an equivalence, so the ceiling is exact for the criterion);
- `Coeff2.lam_eq_S` — the walk model is exact: `Λ(n) = S(n)`;
- `Coeff2.hpv_monovariant` — the HPV monovariant;
- `Coeff2.pointvalues`, `Coeff2.uniform_form` — the point values and the uniform
  factorial form `⌈(n−4)!/3⌉` (all `n ≥ 5`);
- `Coeff2.half_wall` — the coefficient on `(n−4)!` cannot reach `1/2`.

Statements carry sharp per-statement hypotheses: where the paper assumes `n ≥ 4`
throughout its Sections 3–5, the formalization proves each statement at its exact
small-`n` threshold (`n ≥ 1`, `n ≥ 2`, `n ≥ 3`, or `n ≥ 4` as the mathematics requires),
so several auxiliary results are slightly more general than the paper's. Each such
threshold is explained in the theorem's docstring.

## Building and verifying

Requires [elan](https://github.com/leanprover/elan) (the Lean toolchain manager); the
pinned Lean version (v4.31.0) and mathlib revision install automatically.

    lake exe cache get   # fetch the prebuilt mathlib cache
    lake build           # builds everything and prints the axiom audit

The build elaborates the full development and runs `AxiomCheck.lean`, printing the axiom
footprint of all 93 statements. Expected: every line reports a subset of

    [propext, Classical.choice, Quot.sound]

— the three standard axioms of classical reasoning in mathlib. In particular there is no
`sorryAx` (the development is `sorry`-free) and no `Lean.ofReduceBool` (no
`native_decide`); the kernel checks every proof.

## Novelty

To the author's knowledge (as of July 2026) this is the first strengthening of the HPV
bound whose gain grows factorially with `n`. Sources checked: OEIS A180632 and its
references, Greg Egan's superpermutation page, the Engen–Vatter survey
(arXiv:1810.08252), arXiv listings, and the public archive of the Superpermutators
group.

## Provenance

The proofs are an AI-derived result produced under the author's direction; see the
provenance statement in the paper (the paragraph before the bibliography).

## License

The Lean formalization and all other code in this repository are released under the
[Apache License 2.0](LICENSE). The paper (`paper/`) is distributed under the
[Creative Commons Attribution 4.0 International license](paper/LICENSE) (CC BY 4.0).
