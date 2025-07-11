# Change log

## 1.9 

|Table |Field |Change notes                                                        |
|:-----|:-----|:-------------------------------------------------------------------|
|NA    |NA    |incrementing major version number for next Consortium Upload Cycle. |


## 1.8.3 

|Table       |Field         |Change notes                    |
|:-----------|:-------------|:-------------------------------|
|participant |gregor_center |add enumerated value ILMN-IHOPE |


## 1.8.2 

|Table                     |Field               |Change notes                                                 |
|:-------------------------|:-------------------|:------------------------------------------------------------|
|experiment_rna_short_read |prep_targets_detail |added conditional requirement (library_prep_type = 'custom') |


## 1.8.1 

|Table               |Field              |Change notes                                                                        |
|:-------------------|:------------------|:-----------------------------------------------------------------------------------|
|experiment_pac_bio  |experiment_type    |enumerated value 'fiberseq' replaced with 'fiberseq-genome' and 'fiberseq-targeted' |
|aligned_pac_bio     |methylation_called |updated description                                                                 |
|aligned_pac_bio     |fiberseq_format    |added as optional field                                                             |
|experiment_nanopore |experiment_type    |add enumerated values 'fiberseq-genome' and 'fiberseq-targeted'                     |
|aligned_nanopore    |fiberseq_format    |added as optional field                                                             |


## 1.8 

|Table |Field |Change notes                                                        |
|:-----|:-----|:-------------------------------------------------------------------|
|NA    |NA    |incrementing major version number for next Consortium Upload Cycle. |


## 1.7.1 

|Table                        |Field               |Change notes                                                              |
|:----------------------------|:-------------------|:-------------------------------------------------------------------------|
|experiment_rna_short_read    |depletion_targets   |name changed to prep_targets_detail                                       |
|experiment_rna_short_read    |library_prep_type   |add 'custom' as an allowable value                                        |
|experiment_rna_short_read    |prep_targets_detail |recommended to use if library_prep_type is 'custom'                       |
|experiment_rna_short_read    |percent_rRNA        |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |percent_mRNA        |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |percent_mtRNA       |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |percent_Globin      |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |percent_UMI         |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |5prime3prime_bias   |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |percent_GC          |move to aligned_rna_short_read table                                      |
|experiment_rna_short_read    |percent_chrX_Y      |move to aligned_rna_short_read table                                      |
|aligned_rna_short_read table |percent_rRNA        |added as optional field                                                   |
|aligned_rna_short_read table |percent_mRNA        |added as optional field                                                   |
|aligned_rna_short_read table |percent_mtRNA       |added as optional field                                                   |
|aligned_rna_short_read table |percent_Globin      |added as optional field                                                   |
|aligned_rna_short_read table |percent_UMI         |added as optional field                                                   |
|aligned_rna_short_read table |5prime3prime_bias   |added as optional field                                                   |
|aligned_rna_short_read table |percent_GC          |added as optional field                                                   |
|aligned_rna_short_read table |percent_chrX_Y      |added as optional field                                                   |
|aligned_rna_short_read_set   |all                 |table added                                                               |
|readcounts_rna_short_read    |all                 |table added                                                               |
|aligned_pac_bio              |quality_issues      |added as optional field (for consistency with the aligned_nanopore table) |


## 1.6.1 

|Table                   |Field                       |Change notes                                              |
|:-----------------------|:---------------------------|:---------------------------------------------------------|
|analyte                 |primary_biosample           |removed spaces from UBERON codes                          |
|called_variants_pac_bio |aligned_pac_bio_set_id      |not unique                                                |
|experiment_pac_bio      |seq_library_prep_kit_method |added 'SMRTbell prep kit - Revio 1.0' as enumerated value |


## 1.6 

|Table                           |Field                         |Change notes                                                                                      |
|:-------------------------------|:-----------------------------|:-------------------------------------------------------------------------------------------------|
|called_variants_nanopore        |variant_types                 |added STR as enumerated value                                                                     |
|called_variants_pac_bio         |variant_types                 |added STR as enumerated value                                                                     |
|genetic_findings                |experiment_id                 |added 'see_notes' and 'see_MOD' as example values (this field will be required for validation)    |
|genetic_findings                |variant_type                  |added more specific enumerated values (possibly with delimiter) to match 'called_variants' tables |
|genetic_findings                |pos                           |added note describing that this is .vcf-style coordinates                                         |
|genetic_findings                |pos                           |updated conditional requirement to align with variant_type change                                 |
|genetic_findings                |GREGoR_variant_classification |required if known disease gene                                                                    |
|genetic_findings                |gene_disease_validity_notes   |required if known disease gene                                                                    |
|genetic_findings                |gene_disease_validity_notes   |added; not required                                                                               |
|genetic_findings                |VRS_ID                        |added; not required                                                                               |
|experiment_rna_short_read       |depletion_targets             |added; not required                                                                               |
|called_variants_nanopore        |chrom                         |added; not required                                                                               |
|called_variants_pac_bio         |chrom                         |added; not required                                                                               |
|called_variants_optical_mapping |chrom                         |added; not required                                                                               |
|aligned_nanopore                |num_reads                     |changed data type to float for large number support                                               |
|aligned_nanopore                |num_bases                     |changed data type to float for large number support                                               |
|aligned_nanopore                |num_aligned_reads             |changed data type to float for large number support                                               |
|aligned_nanopore                |num_aligned_bases             |changed data type to float for large number support                                               |
|aligned_nanopore                |read_length_mean              |changed data type to float                                                                        |
|aligned_pac_bio                 |num_reads                     |changed data type to float for large number support                                               |
|aligned_pac_bio                 |num_bases                     |changed data type to float for large number support                                               |
|aligned_pac_bio                 |num_aligned_reads             |changed data type to float for large number support                                               |
|aligned_pac_bio                 |num_aligned_bases             |changed data type to float for large number support                                               |
|aligned_pac_bio                 |read_length_mean              |changed data type to float                                                                        |
|analyte                         |analyte_type                  |added PBMC as enumerated value                                                                    |


## 1.5.2 

|Table                           |Field |Change notes        |
|:-------------------------------|:-----|:-------------------|
|called_variants_dna_short_read  |chrom |added; not required |
|called_variants_nanopore        |chrom |added; not required |
|called_variants_pac_bio         |chrom |added; not required |
|called_variants_optical_mapping |chrom |added; not required |


## 1.5.1 

|Table                             |Field |Change notes |
|:---------------------------------|:-----|:------------|
|experiment_optical_mapping        |all   |table added  |
|molecule_file_optical_mapping     |all   |table added  |
|aligned_molecules_optical_mapping |all   |table added  |
|aligned_assembly_optical_mapping  |all   |table added  |
|optical_mapping_set               |all   |table added  |
|called_variants_optical_mapping   |all   |table added  |


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


