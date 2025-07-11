# A Variance-Based Proof of the Binary Goldbach Conjecture

This repository contains the full source, code, and CI setup for the proof that every even integer \(k>2\) is the sum of two primes.

Contents:
- `proof.tex` — Main LaTeX manuscript with Appendices A–D hyperlinked.
- `appendixA_tables.sage` — Generates Rosser–Schoenfeld π(x) bounds (Appendix A).
- `appendixB_error_bounds.sage` — Dyadic decomposition & convolution-error checks (Appendix B).
- `bdh_constant.py` — Numerical integration to estimate BDH constant \(C^*\) (Appendix C).
- `weight_optimization.sage` — Searches optimal large-sieve weights (Appendix C).
- `siegel_zero_region.sage` — Computes explicit zero-free-region deltas (Appendix D).
- `siegel_zero_check.sage` — Verifies Siegel-zero suppression sums (Appendix D).
- `.github/workflows/ci.yml` — GitHub Actions CI to run all scripts and validate “golden” values.

## Usage

1. Install dependencies:
   - SageMath (for `.sage` scripts)
   - Python 3 with `mpmath`
2. Run locally:
   ```bash
   # Rosser–Schoenfeld tables
   sage appendixA_tables.sage

   # Convolution error bounds
   sage appendixB_error_bounds.sage

   # BDH constant estimate
   python3 bdh_constant.py

   # Weight optimization
   sage weight_optimization.sage

   # Siegel-zero region
   sage siegel_zero_region.sage

   # Siegel-zero suppression check
   sage siegel_zero_check.sage
