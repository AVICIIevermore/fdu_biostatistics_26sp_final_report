# Draft quality notes

## Compact outline

- Abstract: states the two-sample testing problem, the reviewed MMMD idea, the report boundary, and the Yao empirical finding.
- Related work: moves from classical one-dimensional tests to distance, graph, MMD, kernel selection, and multi-kernel aggregation.
- Three reserved chapters: method, data/application review, and other group numerical results.
- Yao experiments: representation axis, datasets, metrics, BloodMNIST, PathMNIST, NCT-CRC, NEW-MMMD.
- Limitations and future directions: Monte Carlo limits, frozen encoders, joint representation-test design, and interpretability.

## Paragraph roles

- Abstract: challenge, paper contribution, report scope, experiment summary.
- Related work: background, classical baselines, kernel tests, aggregation gap, representation extension.
- Reserved chapters: explicit worker handoff instructions.
- Experimental design: setup and protocol.
- BloodMNIST: evidence for noise robustness and sample-size efficiency.
- PathMNIST: evidence that frozen encoders need enough samples and can trail trained CNNs.
- NCT-CRC: evidence that DINOv2 scales well on larger pathology images.
- NEW-MMMD: evidence for calibration and conditioning tradeoffs.
- Summary and limitations: practical interpretation and boundaries of the current evidence.

## Claim-evidence map

Claim: MMMD power depends strongly on representation space.
Evidence: BloodMNIST, PathMNIST, and NCT-CRC tables compare raw pixels, CLIP, DINOv2, and CNN under a mostly fixed GAUSS5 testing layer.
Status: supported.

Claim: Raw pixels are usually sample inefficient.
Evidence: BloodMNIST sample-size table and NCT-CRC representation table show raw-pixel power below learned features at most sample sizes.
Status: supported, with the caveat that raw pixels are competitive at BloodMNIST \(n=150\).

Claim: DINOv2 is stronger than CLIP on pathology-style images.
Evidence: PathMNIST table shows DINOv2 above CLIP from \(n=60\) onward; NCT-CRC table shows DINOv2 above CLIP at all listed sample sizes except both being weak at \(n=30\).
Status: supported.

Claim: A task-trained CNN is most robust on BloodMNIST.
Evidence: BloodMNIST noise table shows CNN power 0.917 at \(\sigma=1\), compared with 0.515 raw pixels, 0.315 CLIP, and 0.429 DINOv2.
Status: supported.

Claim: NEW-MMMD improves calibration and covariance conditioning more consistently than power.
Evidence: NEW-MMMD table shows lower power at small \(n\) and similar or slightly higher power at larger \(n\); NCT-CRC summaries record much smaller condition numbers after stabilization and pruning.
Status: supported, but the full Type-I table could be added by a later worker for more detail.

## Five-dimension self-review

Contribution: pass for the Yao component. The report adds a representation-level empirical extension rather than only summarizing the reviewed paper. The reserved method/data chapters still need completion.

Writing clarity: pass for the current draft. Terms such as MMD, MMMD, GAUSS5, CLIP, DINOv2, and CNN are introduced before use. The original paper's method section still needs technical detail.

Experimental strength: partial pass. The Yao section has multiple datasets and matched null checks, but several NCT-CRC sweeps use light Monte Carlo settings for compute control.

Evaluation completeness: partial pass. Representation baselines are strong enough for the Yao question. The full report still needs other group experiments and original-paper data review.

Method design soundness: pass for the reported scope. The draft avoids claiming that NEW-MMMD uniformly improves power and states the small-sample tradeoff.

## Humanizer audit

- Removed formulaic overclaiming where possible.
- Avoided em dashes, en dashes, curly quotes, emojis, and title-case section headings.
- Replaced the one negative-parallelism sentence in the future-work paragraph.
- Kept the voice academic and plain because this is a technical course report.
