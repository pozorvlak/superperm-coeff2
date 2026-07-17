/-
Copyright (c) 2026 Uku Raudvere. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Uku Raudvere
-/
import Coeff2

/-! Axiom audit: every statement of the paper, as formalized in `Coeff2/Statements.lean`.
Expected output: every line reports a subset of `[propext, Classical.choice, Quot.sound]`
(the three standard axioms of classical reasoning in mathlib) — in particular no `sorryAx`
and no `Lean.ofReduceBool` (`native_decide`). -/

#print axioms Coeff2.hpv_point_values
#print axioms Coeff2.properStep_iff_prop
#print axioms Coeff2.superperm_gives_walk
#print axioms Coeff2.lam_le_S
#print axioms Coeff2.lam_eq_S
#print axioms Coeff2.card_perm_rotClasses
#print axioms Coeff2.card_rotClass_members
#print axioms Coeff2.door_leaves_class
#print axioms Coeff2.V_closed_rotation
#print axioms Coeff2.mem_V_genLoop
#print axioms Coeff2.card_V
#print axioms Coeff2.card_markedLoops
#print axioms Coeff2.card_loops_through
#print axioms Coeff2.vert_mem_activeLoop
#print axioms Coeff2.covering_loops_lower
#print axioms Coeff2.increment_of_c
#print axioms Coeff2.hpv_monovariant
#print axioms Coeff2.covering_pStat
#print axioms Coeff2.covering_cStat
#print axioms Coeff2.hpv_lower_bound
#print axioms Coeff2.eStat_nonneg
#print axioms Coeff2.rStat_nonneg
#print axioms Coeff2.ellStat_nonneg
#print axioms Coeff2.excess_identity
#print axioms Coeff2.numFE_eq_vStat
#print axioms Coeff2.tauIdx_strictMono
#print axioms Coeff2.Efe_injective
#print axioms Coeff2.Efe_entered
#print axioms Coeff2.entered_eq_Efe
#print axioms Coeff2.Efe_eq_genLoop_xEntry
#print axioms Coeff2.msucc_period
#print axioms Coeff2.msucc_period_exact
#print axioms Coeff2.canonical_run_le
#print axioms Coeff2.block_bound
#print axioms Coeff2.defect_nonneg
#print axioms Coeff2.defect_sum
#print axioms Coeff2.Pset_card_le
#print axioms Coeff2.break_card_le
#print axioms Coeff2.incident_iff_exists_mem
#print axioms Coeff2.fowner_mem_Omega
#print axioms Coeff2.owner_bookkeeping
#print axioms Coeff2.incidence_count_6a
#print axioms Coeff2.incidence_count_6b
#print axioms Coeff2.chargeSet_spec
#print axioms Coeff2.localtight_wt_le_three
#print axioms Coeff2.localtight_w1
#print axioms Coeff2.localtight_w2
#print axioms Coeff2.localtight_w2_same_loop
#print axioms Coeff2.localtight_w2_tight
#print axioms Coeff2.localtight_w2_cross
#print axioms Coeff2.localtight_w3
#print axioms Coeff2.immediate_charge
#print axioms Coeff2.orbitend_alternatives
#print axioms Coeff2.orbitend_after_close
#print axioms Coeff2.anchored_boundary
#print axioms Coeff2.pinned_dagger
#print axioms Coeff2.pinned_top
#print axioms Coeff2.pinned_full
#print axioms Coeff2.pinned_missed
#print axioms Coeff2.no_long_nondoor
#print axioms Coeff2.nondoor_short_ending
#print axioms Coeff2.full_corner_exit
#print axioms Coeff2.full_residual_charge
#print axioms Coeff2.anchored_missed_orbit
#print axioms Coeff2.short_residual_dispatch
#print axioms Coeff2.endpoint_or_cross
#print axioms Coeff2.uncharged_le
#print axioms Coeff2.slot_fiber_le_two
#print axioms Coeff2.slot_fiber_initial
#print axioms Coeff2.slot_fiber_two_leftright
#print axioms Coeff2.Cstat_le_q
#print axioms Coeff2.refined_break_count
#print axioms Coeff2.short_block_credit
#print axioms Coeff2.interface_sharp
#print axioms Coeff2.interface_no_better
#print axioms Coeff2.twoparam
#print axioms Coeff2.corner_reduction
#print axioms Coeff2.criterion
#print axioms Coeff2.solve_criterion
#print axioms Coeff2.solved
#print axioms Coeff2.solved_exact
#print axioms Coeff2.pointvalues
#print axioms Coeff2.uniform_certificate
#print axioms Coeff2.uniform_form
#print axioms Coeff2.words_criterion
#print axioms Coeff2.words_pointvalues
#print axioms Coeff2.half_wall
#print axioms Coeff2.rideAnchor_eq
#print axioms Coeff2.ride_orbits_distinct
#print axioms Coeff2.ride_corner
#print axioms Coeff2.msucc_edge
#print axioms Coeff2.intromain
#print axioms Coeff2.intromain_points
