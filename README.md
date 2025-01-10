# Bias factorized, base-resolution deep learning models of chromatin accessibility reveal cis-regulatory sequence syntax, transcription factor footprints and regulatory variants

This repository contains code to make figures for  the paper "Bias factorized, base-resolution deep learning models of chromatin accessibility reveal cis-regulatory sequence syntax, transcription factor footprints and regulatory variants" by Pampari et al. Please refer to the details below for finding the path to the relevant analysis.

To download corresponding models, contribution scores and modisco objects for each of the analysis, refer to the synpase repository - https://www.synapse.org/Synapse:syn59449898/files/

**We will be improving the documentation and cleaning up this repository through the following weeks. If you have any questions please reach out to anusri@stanford.edu**


# Figure 4

## A. Locus Plot
 * Get contribution scores from synapse directory for the subsampled models
 * Run [4a_locus_plot.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig4/4a_locus_plot.ipynb) to generate figures

## B. JSD plots
 * Get observed bigwigs and contribution scores from synpase for the subsampled models
 * Generate predictions for the subsampled models on peaks generated for the 572M chromBPNet model, use `chrombpnet pred_bw`
 * Use [4b_comparing_deepshap_subsample.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig4/4b_comparing_deepshap_subsample.ipynb) and [4b_comparing_oberved_versus_predicted_subsample.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig4/4b_comparing_oberved_versus_predicted_subsample.ipynb) to generate figures

## C. Balloon plot with recalls

* Run FiNeMO using 572M modisco object on all the contribution scores from subsampled models - [scripts](https://github.com/kundajelab/chrombpnet-figures/tree/main/src/figures_factory/Fig4/scripts/finemo)
* First run [4c_comparing_hit_calls_finemo_profile.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig4/4c_comparing_hit_calls_finemo_profile.ipynb) followed by [4c_balloon_plot_for_recall_finemo_profile.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig4/4c_balloon_plot_for_recall_finemo_profile.ipynb) to get balloo plot


## D. Marginal Footprints

* Run scripts in src/figures_factory/Fig4/scripts/marginal_footprinting/ to get marginal footprints
* Run [4d_marginal_footprinting_motifs.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig4/4d_marginal_footprinting_motifs.ipynb) to get marginal footprinting plots


# Figure 5

## A. Modisco figure


  * Download TF-MODISCO objects for each celltype from ENCODE portal
  * Generate PWM matrices using [make_pwm_matrix.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/make_pwm_matrix.ipynb)
  * Use PWM matrices to generate grid of motids [5a_motif_grid_ATAC.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/5a_motif_grid_ATAC.ipynb)

## B. Marginal footprinting
  * Download 5 fold models from ENCODE portal for each celltype
  * Use scripts in src/figures_factory/Fig5/scripts/marginal_footprinting/ to generate marginal footprints. Input models in TSV format.
  * Run [5b_marginal_footprinting_motifs_atac.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/5b_marginal_footprinting_motifs_atac.ipynb)  to generate plots

## C. Marginal footprinting  (IMR90 AP1-TEAD heterodimer)
  * Download IMR90 models from ENCODE portal and corresponding TF MODISCO object
  * Use TF MODISCO object and generate PWM matrices using [make_pwm_matrix.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/make_pwm_matrix.ipynb) Run [5c_heterodimer_modisco_motif_make.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/5c_heterodimer_modisco_motif_make.ipynb) on TF MODISCO object to get heterodimer figure.
  * [5c_heterodimers_coordinated_effect_atac-ap1-tead.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/5c_heterodimers_coordinated_effect_atac-ap1-tead.ipynb) and [5c_heterodimers_syntax_ap1_tead_all_spacing_atac.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/5c_heterodimers_syntax_ap1_tead_all_spacing_atac.ipynb) to get marginal footprints for heterdimer motif and simulate various spacing between AP1 and TEAD heterodimer. 

## D. Locus plot
  * Download relevant files from ENCODE portal - predictions and contribution scores for HEPG2 ATAC-seq ChromBPNet and corresponding ChIP-seq models
  * Use [5d_locus_plots_main_atac.ipynb](https://github.com/kundajelab/chrombpnet-figures/blob/main/src/figures_factory/Fig5/5d_locus_plots_main_atac.ipynb) to generate locus plot

## E. and F. CTCF TF ChIP BPNet versus ChromBPNet contribution scores

TODO

## G. TF ChIP BPNet versus ChromBPNet contribution scores

TODO

# Figure 6 and 7

## Generating Figures

* Download TSV files from https://www.synapse.org/Synapse:syn64126763 (We will be releasing the CAGI TSV files ones we receive permissions from the original authors)
* Run notebooks in src/figures_factory/Fig6/ to generate the figures

## Generating TSV files 

### DsQTLs 
   
* Run src/figures_factory/Fig6/preprocessing/format_dsqtls.ipynb with the following inputs
  * Download Supplementary Table 1 from the deltaSVM study (Lee et al. 2015), available at https://staticcontent.springer.com/esm/art%3A10.1038%2Fng.3331/MediaObjects/41588_2015_BFng3331_MOESM26_ESM.xlsx 
  * Obtain the actual effect sizes from https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE31388 (file: GSE31388_dsQtlTable.txt.gz).
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models
  * Obtain Enformer (reported) scores from https://console.cloud.google.com/storage/browser/dm-enformer/variant-scores/1000-genomes/enformer;tab=objects?prefix=&forceOnObjectsSortingFiltering=false
  * TODO: script to recompute Enformer scores

### European CaQTLs

* Run src/figures_factory/Fig6/preprocessing/format_kumsaka_caqtls.ipynb with the following inputs
  * Download summary stats and QTLs available at https://zenodo.org/records/13848268 (file: QTD100018.all.tsv.gz) and corresponding peaks at [QTD100018_peak_metadata.tsv.gz](https://zenodo.org/records/13848268/files/QTD100018_peak_metadata.tsv.gz?download=1)
  * Obtain broad peaks called across individuals (correspondence: Kaur Alasoo), expand to ±100 bp of the summit for the top 50K peaks for each individual
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models
  * Obtain Enformer (reported) scores from https://console.cloud.google.com/storage/browser/dm-enformer/variant-scores/1000-genomes/enformer;tab=objects?prefix=&forceOnObjectsSortingFiltering=false
  * TODO: script to recompute Enformer scores

### African CaQTLs

* Run src/figures_factory/Fig6/preprocessing/format_af_caqtls.ipynb and src/figures_factory/Fig6/preprocessing/format_af_caqtls_asb.ipynb with the following inputs.
  * Obtain effect sizes from original source paper https://pmc.ncbi.nlm.nih.gov/articles/PMC10659267/ (correspondence: Soumya kundu)
  * Obtain broad peaks called across individuals (correspondence: Kaur Alasoo), expand to ±100 bp of the summit for the top 50K peaks for each individual
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models
  * OObtain Enformer (reported) scores from https://console.cloud.google.com/storage/browser/dm-enformer/variant-scores/1000-genomes/enformer;tab=objects?prefix=&forceOnObjectsSortingFiltering=false
  * TODO: script to recompute Enformer scores

### SMC CaQTLs

* Run src/figures_factory/Fig6/preprocessing/format_smc_caqtls.ipynb with the following inputs
  * We extracted 1,984 significant caQTLs, along with their RASQUAL effect sizes, from Smooth Muscle Cells (SMCs) as reported by (Turner et al. 2022). This data was sourced from Supplementary Data 6, available at https://static-content.springer.com/esm/art%3A10.1038%2Fs41588-022-01069-0/MediaObjects/41588_2022_1069_MOESM10_ESM.xlsx. 
  * Filter it to peaks provided here https://www.synapse.org/Synapse:syn59479965
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models

### Microglia CaQTLs

* Run src/figures_factory/Fig6/preprocessing/format_microglia_caqtls.ipynb with the following inputs
  * Dwnloaded SNPs from https://www.synapse.org/#!Synapse:syn30863713 and obtained effect sizes by merging "PeakID" and "TopSNPperPeak" columns with the microgliamacrophagemeta-caQTLsummaryresult (https://www.synapse.org/#!Synapse:syn30308248) based on "Peak" and "Variant" columns respectively. This resulted in 4,978 caQTL effects, including effects of single variants on multiple peaks. We then retrieved caQTL positions using rsid attributes as queries on dbSNP or by splitting attributes to obtain chromosome and position. 
  * Obtain microglia peaks provided at https://www.synapse.org/#!Synapse:syn269491355, yielding 956 caQTL effect sizes. 
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models

### SPI1 binding QTLs

* Run src/figures_factory/Fig6/preprocessing/format_spi1_bqtls.ipynb with the following inputs
  * Get SPI1 binding QTLs from https://www.sciencedirect.com/science/article/pii/S0092867416303397?via%3Dihub (Get effect sizes from DragonNN, Ashley correspondence)
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models
  * Obtain Enformer (reported) scores from https://console.cloud.google.com/storage/browser/dm-enformer/variant-scores/1000-genomes/enformer;tab=objects?prefix=&forceOnObjectsSortingFiltering=false
  * TODO: script to recompute Enformer scores

### GWAS Blood traits

* Run src/figures_factory/Fig6/preprocessing/format_blood_traits.ipynb with the following inputs
  * Fine mapped blood traits (Rosa Ma from Jesse Engreitz lab)
  * Backgrounds : For our control set, we collated common background variants from
https://alkesgroup.broadinstitute.org/LDSCORE/baseline_v1.1_hg38_annots/. We annotated the
genome into different regions using GENCODEv29, retaining only variants that were neither
coding, nor in transcription start sites (TSS), nor in splice sites. To identify alleles based on rsids,
we used the database available at
https://ftp.ncbi.nih.gov/snp/organisms/human_9606_b151_GRCh38p7/VCF/00-
common_all.vcf.gz, filtering out variants without allele information. We separated entries with
multiple alternate alleles, resulting in 11,903,173 control variants.
  * Obtain chrombpnet predictions using https://github.com/kundajelab/variant-scorer/ for the corresponding models

 
