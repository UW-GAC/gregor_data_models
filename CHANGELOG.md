# Change log

## 1.5 

|Table                     |Field                    |Change notes                                           |
|:-------------------------|:------------------------|:------------------------------------------------------|
|genetic_findings          |variant_type             |added SV as allowable type                             |
|genetic_findings          |sv_type                  |added; not required                                    |
|genetic_findings          |chrom                    |changed from required to conditional                   |
|genetic_findings          |chrom_end                |added; not required                                    |
|genetic_findings          |pos                      |changed from required to conditional                   |
|genetic_findings          |pos_end                  |added; not required                                    |
|genetic_findings          |ref                      |changed from required to conditional                   |
|genetic_findings          |alt                      |changed from required to conditional                   |
|genetic_findings          |copy_number              |added; not required                                    |
|genetic_findings          |gene_of_interest         |renamed 'gene' field, made conditional, expanded notes |
|genetic_findings          |hgvs                     |added; not required                                    |
|genetic_findings          |zygosity                 |added to list of allowable enumerations                |
|genetic_findings          |gene_disease_validity    |added; not required                                    |
|experiment_dna_short_read |sequencing_event_details |added; not required                                    |


## 1.4.2 

|Table       |Field         |Change notes                 |
|:-----------|:-------------|:----------------------------|
|participant |gregor_center |add UCI to enumerated values |


## 1.4.1 

|Table       |Field        |Change notes                |
|:-----------|:------------|:---------------------------|
|participant |solve_status |change to enumerated values |


## 1.4 

|Table                      |Field                          |Change notes                                                                                       |
|:--------------------------|:------------------------------|:--------------------------------------------------------------------------------------------------|
|experiement_rna_short_read |total_reads                    |change data type to float to accommodate validation for numbers of reads >2^31                     |
|genetic_findings           |hgvsc                          |added; not required                                                                                |
|genetic_findings           |hgvsp                          |added; not required                                                                                |
|genetic_findings           |zygosity                       |added; not required                                                                                |
|genetic_findings           |known_condition_name           |required if gene_known_for_phenotype = Known                                                       |
|genetic_findings           |condition_id                   |required if gene_known_for_phenotype = Known                                                       |
|genetic_findings           |condition_inheritance          |required if gene_known_for_phenotype = Known                                                       |
|genetic_findings           |partial_contribution_explained |required if phenotype_contribution = Partial                                                       |
|phenotype                  |syndromic                      |added; not required                                                                                |
|aligned                    |aligned_file                   |will be populated by DCC in post-processing - no impact on data submitters.                        |
|aligned                    |aligned_file_index             |will be populated by DCC in post-processing - no impact on data submitters.                        |
|experiment_dna_short_read  |experiment_sample_id           |field now required                                                                                 |
|experiment_dna_short_read  |sequencing_event_details       |added; not required                                                                                |
|experiment_rna_short_read  |total_reads                    |changed data type to float for large number support                                                |
|experiment_nanopore        |seq_library_prep_kit_method    |added 'Unknown' ennumeration to allow for external data received where library prep kit is unknown |
|aligned_nanopore           |quality_issues                 |added; not required                                                                                |
|experiment_pac_bio         |size_selection_method          |added; not required                                                                                |
|experiment_pac_bio         |library_size                   |added; not required                                                                                |
|experiment_pac_bio         |smrt_cell_kit                  |added; not required                                                                                |
|experiment_pac_bio         |smrt_cell_id                   |added; not required                                                                                |
|experiment_pac_bio         |movie_name                     |added; not required                                                                                |
|experiment_pac_bio         |polymerase_kit                 |added; not required                                                                                |
|experiment_pac_bio         |sequencing_kit                 |added; not required                                                                                |
|experiment_pac_bio         |movie_length_hours             |added; not required                                                                                |
|experiment_pac_bio         |includes_kinetics              |added; not required                                                                                |
|experiment_pac_bio         |includes_CpG_methylation       |added; not required                                                                                |
|experiment_pac_bio         |by_strand                      |added; not required                                                                                |


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


