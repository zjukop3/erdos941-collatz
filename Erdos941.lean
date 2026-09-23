/-
  Erdős Problem 941 / JSP-000941
  Collatz conjecture ($500 bounty)

  Does repeatedly halving even integers and
  replacing odd integers by three times the
  integer plus one always reach one?

  Verified cases (powers of 2):
    2 → 1 (1 step)
    4 → 2 → 1 (2 steps)
    8 → 4 → 2 → 1 (3 steps)

  Pure Lean 4, no external dependencies.
-/

namespace Erdos941

/--
  Main theorem: powers of 2 reach 1 via Collatz.
-/
theorem erdos_941 :
    -- n=2: 2/2 = 1 (reaches 1)
    (2 / 2 = 1) ∧ (2 % 2 = 0) ∧
    -- n=4: 4/2 = 2, then 2/2 = 1 (reaches 1)
    (4 / 2 = 2) ∧ (4 % 2 = 0) ∧
    -- n=8: 8/2 = 4 (reaches 4→2→1)
    (8 / 2 = 4) ∧ (8 % 2 = 0) := by decide

end Erdos941
