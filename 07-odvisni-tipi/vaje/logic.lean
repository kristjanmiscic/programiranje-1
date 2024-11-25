-- Izomorfizmi

theorem eq1 {A B : Prop} : (A ∧ B) ↔ (B ∧ A) :=
  by
    -- Iff.intro
    constructor
    intro ab
    constructor
    exact ab.right
    exact ab.left
    intro ba
    sorry

theorem eq2 {A B : Prop} : (A ∨ B) ↔ (B ∨ A) :=
  sorry

theorem eq3 {A B C : Prop} : (A ∧ (B ∧ C)) ↔ (B ∧ (A ∧ C)) :=
  sorry

theorem eq4 {A B C : Prop} : (A ∨ (B ∨ C)) ↔ (B ∨ (A ∨ C)) :=
 sorry

theorem eq5 {A B C : Prop} : A ∧ (B ∨ C) ↔ (A ∧ B) ∨ (A ∧ C) :=
  sorry

theorem eq6 {A B C : Prop} : (B ∨ C) → A ↔ (B → A) ∧ (C → A) :=
  by
    constructor -- za dokaz ekvivalence
    intro h
    constructor
    intro b
    apply h
    left
    exact b
    intro c
    have xx : B ∨ C := Or.inr c
    have yy := h (Or.inr c)
    exact yy
    intro h BvC
    cases BvC
    case inl b =>
      have l := h.left
      apply h.left
      exact b
    case inr c =>
      exact h.right c


theorem eq7 {A B C : Prop} : C → (A ∧ B) ↔ (C → A) ∧ (C → B) :=
  sorry
