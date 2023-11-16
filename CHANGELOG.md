# Change log

## 1.3 

|Table                           |Field                   |Change notes                                                                                                                                  |
|:-------------------------------|:-----------------------|:---------------------------------------------------------------------------------------------------------------------------------------------|
|genetic_findings                |all                     |table added                                                                                                                                   |
|experiment_pac_bio              |all                     |table added                                                                                                                                   |
|aligned_pac_bio                 |all                     |table added                                                                                                                                   |
|aligned_pac_bio_set             |all                     |table added                                                                                                                                   |
|called_variants_pac_bio         |all                     |table added                                                                                                                                   |
|experiment_atac_short_read      |all                     |table added                                                                                                                                   |
|aligned_atac_short_read         |all                     |table added                                                                                                                                   |
|called_peaks_atac_short_read    |all                     |table added                                                                                                                                   |
|allele_specific_atac_short_read |all                     |table added                                                                                                                                   |
|experiment                      |table_name              |DCC added 'experiment_nanopore, experiment_pac_bio, and experiment_atac_short_read' as valid experiment types - no impact to data submitters. |
|aligned                         |all                     |table added - will be populated by DCC in post-processing - no impact on data submitters.                                                     |
|participant                     |solve_status            |required field added                                                                                                                          |
|participant                     |missing_variant_case    |required field added                                                                                                                          |
|participant                     |missing_variant_details |optional field added                                                                                                                          |


## 1.2 

|Table                          |Field |Change notes                                                                                              |
|:------------------------------|:-----|:---------------------------------------------------------------------------------------------------------|
|experiment_nanopore            |all   |table added                                                                                               |
|aligned_nanopore               |all   |table added                                                                                               |
|aligned_nanopore_set           |all   |table added                                                                                               |
|called_variants_nanopore       |all   |table added                                                                                               |
|aligned_dna_short_read         |all   |DCC added 'Is Unique' column to data model document to support validation - no impact to data submitters. |
|called_variants_dna_short_read |all   |DCC added 'Is Unique' column to data model document to support validation - no impact to data submitters. |
|aligned_rna_short_read         |all   |DCC added 'Is Unique' column to data model document to support validation - no impact to data submitters. |
|aligned_nanopore               |all   |DCC added 'Is Unique' column to data model document to support validation - no impact to data submitters. |
|called_variants_nanopore       |all   |DCC added 'Is Unique' column to data model document to support validation - no impact to data submitters. |


## 1.1 

|Table                     |Field                      |Change notes                                                                                                                                |
|:-------------------------|:--------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------|
|analyte                   |analyte_processing_details |optional field added                                                                                                                        |
|analyte                   |primary_biosample          |added allowable values to ennumeration                                                                                                      |
|analyte                   |quality_flag               |optional field added                                                                                                                        |
|experiment                |all                        |table added                                                                                                                                 |
|aligned_dna_short_read    |mean_coverage              |updated description                                                                                                                         |
|aligned_dna_short_read    |any_qc_issues              |optional field added                                                                                                                        |
|aligned_rna_short_read    |all                        |table added                                                                                                                                 |
|experiment_rna_short_read |all                        |table added                                                                                                                                 |
|all                       |enumerated fields          |required fields cannot have missing values; optional fields can have missing or blank values and do not have 'Unknown' as a separate option |
|participant               |affected_status            |made required                                                                                                                               |


