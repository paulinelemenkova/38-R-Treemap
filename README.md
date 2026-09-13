# R Treemap — Mariana Trench Geomorphic Impact Factors

An R script drawing a hierarchical treemap of the factors that influence the
geomorphology of the Mariana Trench, grouped into three top-level classes -
tectonics, bathymetry and geology - each subdivided into individual factors
(tectonic plates, depth statistics, slope angle, aspect, sediment thickness,
igneous volcanic spots, and so on). Rectangle area encodes each factor's weight.

## Related publication

This treemap is a companion visual to the author's R statistical-graphics
analysis of the Mariana Trench geomorphology:

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3447481
- ISSN: 2029-6991 (Scopus)

## Scripts

- treemap_impact_factors_mariana.R: builds a data frame of group / subgroup /
  value and draws a nested treemap with the treemap package (index =
  c("group","subgroup"), vSize = "value", type = "index", Accent palette,
  two-level label sizing and nested borders).
- treemap_impact_factors_illustrator.R: a variant tuned for export and further
  editing in Adobe Illustrator.

## Methods

- Hierarchical (nested) treemap layout: recursive area-proportional tiling of a
  two-level categorical hierarchy.

## Requirements

- R (>= 3.5); package: treemap

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089
Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology
Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.
https://doi.org/10.3846/gac.2019.3785

## License

MIT — see the LICENSE file (Copyright Polina Lemenkova).
