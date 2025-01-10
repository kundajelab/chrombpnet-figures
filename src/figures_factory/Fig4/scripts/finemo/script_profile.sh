peaks=/mnt/lab_data2/anusri/chrombpnet/results/chrombpnet/ATAC_PE/GM12878/nautilus_runs/GM12878_03.01.2022_bias_128_4_1234_0.4_fold_0/chrombpnet_model/filtered.peaks.bed
fasta=/mnt/lab_data2/anusri/chrombpnet/reference/hg38.genome.fa
bigwigs=/mnt/lab_data2/anusri/chrombpnet/results/chrombpnet/ATAC_PE/GM12878/nautilus_runs/GM12878_03.01.2022_bias_128_4_1234_0.4_fold_0/interpret/merged.GM12878.profile.bw
output=output_profile/572M/
modisco=/oak/stanford/groups/akundaje/projects/chromatin-atlas-2022/chrombpnet/folds/ATAC/GM12878/merge_folds_new_may_05_24/counts/modisco_counts.h5

outputp=$output/gm.atac.572M.extracts
outputd=$output

#finemo extract-regions-bw  -p $peaks -f $fasta -b $bigwigs -o $outputp -w 1000

outoutp=$output/gm.atac.572M.extracts.npz

#CUDA_VISIBLE_DEVICES=MIG-166d7783-762d-5f61-b31c-549eb4e0fba0 finemo call-hits -r $outoutp -m $modisco -o $outputd -p $peaks

#finemo report -r $outoutp -H $outputd/hits_unique.tsv -p $peaks -m $modisco -o $outputd

bigwigs=/oak/stanford/groups/akundaje/projects/chromatin-atlas-2022/chrombpnet/folds/ATAC/GM12878_250M/GM12878_250M_07.19.2022_bias_transfer_1234_fold_0_data_type_ATAC_PE/
depth=250M

bigwigs=$bigwigs"/chrombpnet_model/interpret/full_GM12878_"$depth".profile.bigwig"

output=output_profile/$depth/

mkdir $output

outputp=$output/gm.atac.$depth.extracts
outputd=$output

#finemo extract-regions-bw  -p $peaks -f $fasta -b $bigwigs -o $outputp -w 1000

outoutp=$output/gm.atac.$depth.extracts.npz

#CUDA_VISIBLE_DEVICES=MIG-166d7783-762d-5f61-b31c-549eb4e0fba0 finemo call-hits -r $outoutp -m $modisco -o $outputd -p $peaks


#finemo report -r $outoutp -H $outputd/hits_unique.tsv -p $peaks -m $modisco -o $outputd

bigwigs=/oak/stanford/groups/akundaje/projects/chromatin-atlas-2022/chrombpnet/folds/ATAC/GM12878_100M/GM12878_100M_07.19.2022_bias_transfer_1234_fold_0_data_type_ATAC_PE
depth=100M
bigwigs=$bigwigs"/chrombpnet_model/interpret/full_GM12878_"$depth".profile.bigwig"

output=output_profile/$depth/

mkdir $output

outputp=$output/gm.atac.$depth.extracts
outputd=$output

finemo extract-regions-bw  -p $peaks -f $fasta -b $bigwigs -o $outputp -w 1000

outoutp=$output/gm.atac.$depth.extracts.npz

CUDA_VISIBLE_DEVICES=MIG-166d7783-762d-5f61-b31c-549eb4e0fba0 finemo call-hits -r $outoutp -m $modisco -o $outputd -p $peaks

finemo report -r $outoutp -H $outputd/hits_unique.tsv -p $peaks -m $modisco -o $outputd

bigwigs=/oak/stanford/groups/akundaje/projects/chromatin-atlas-2022/chrombpnet/folds/ATAC/GM12878_50M/GM12878_50M_07.18.2022_bias_transfer_1234_fold_0_data_type_ATAC_PE/
depth=50M
bigwigs=$bigwigs"/chrombpnet_model/interpret/full_GM12878_"$depth".profile.bigwig"

output=output_profile/$depth/

mkdir $output

outputp=$output/gm.atac.$depth.extracts
outputd=$output

#finemo extract-regions-bw  -p $peaks -f $fasta -b $bigwigs -o $outputp -w 1000

outoutp=$output/gm.atac.$depth.extracts.npz

#CUDA_VISIBLE_DEVICES=MIG-166d7783-762d-5f61-b31c-549eb4e0fba0 finemo call-hits -r $outoutp -m $modisco -o $outputd -p $peaks

#finemo report -r $outoutp -H $outputd/hits_unique.tsv -p $peaks -m $modisco -o $outputd


bigwigs=/oak/stanford/groups/akundaje/projects/chromatin-atlas-2022/chrombpnet/folds/ATAC/GM12878_25M/GM12878_25M_07.18.2022_bias_transfer_1234_fold_0_data_type_ATAC_PE
depth=25M
bigwigs=$bigwigs"/chrombpnet_model/interpret/full_GM12878_"$depth".profile.bigwig"

output=output_profile/$depth/

mkdir $output

outputp=$output/gm.atac.$depth.extracts
outputd=$output

#finemo extract-regions-bw  -p $peaks -f $fasta -b $bigwigs -o $outputp -w 1000

outoutp=$output/gm.atac.$depth.extracts.npz

#CUDA_VISIBLE_DEVICES=MIG-166d7783-762d-5f61-b31c-549eb4e0fba0 finemo call-hits -r $outoutp -m $modisco -o $outputd -p $peaks

#finemo report -r $outoutp -H $outputd/hits_unique.tsv -p $peaks -m $modisco -o $outputd



bigwigs=/oak/stanford/groups/akundaje/projects/chromatin-atlas-2022/chrombpnet/folds/ATAC/GM12878_5M/GM12878_5M_07.18.2022_bias_transfer_1234_fold_0_data_type_ATAC_PE
depth=5M
bigwigs=$bigwigs"/chrombpnet_model/interpret/full_GM12878_"$depth".profile.bigwig"

output=output_profile/$depth/

mkdir $output

outputp=$output/gm.atac.$depth.extracts
outputd=$output

#finemo extract-regions-bw  -p $peaks -f $fasta -b $bigwigs -o $outputp -w 1000

outoutp=$output/gm.atac.$depth.extracts.npz

#CUDA_VISIBLE_DEVICES=MIG-166d7783-762d-5f61-b31c-549eb4e0fba0 finemo call-hits -r $outoutp -m $modisco -o $outputd -p $peaks

#finemo report -r $outoutp -H $outputd/hits_unique.tsv -p $peaks -m $modisco -o $outputd



