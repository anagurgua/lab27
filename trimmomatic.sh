#!/bin/bash

# NOTAS IMPORTANTES:
## PE es para paired end

## Hay que checar si se cortan los adapatadores analizando nuevamente con fastqc, si no se cortaron hay que especificar la ruta de los adaptadore en el comando ILUMINACLIP, por ejemplo: ILLUMINACLIP:ruta/al/adaptador/trimmomatic/share/trimmomatic-0.39-2/adapters/TruSeq3-PE-2.fa:2:30:7

## Los números que siguen con ":" indican que tan estricto quieres que sea el software, para saber a que significa cada apartado consulte el manual de trimmomatic en su página web 

## MINLEN indica el tamaño minimo de las secuencias 

# Contexto del trabajo

echo ""
echo ""
echo Corriendo fastqc
echo job started at `date +"%T %a %d %b %Y"`
echo ""
echo ""


trimmomatic PE -threads 8 ruta/al/inputR1/Raiz_1_S31_L003_R1_001.fastq.gz ruta/al/inputR2/Raiz_1_S31_L003_R2_001.fastq.gz ruta/al/outputR1paired/Raiz_1_S31_L003_R1_001.trimmed.paired.fastq.gz ruta/al/outputR1unpaired/Raiz_1_S31_L003_R1_001.trimmed.unpaired.fastq.gz ruta/al/outputR2paired/Raiz_1_S31_L003_R2_001.trimmed.paired.fastq.gz ruta/al/outputR2unpaired/Raiz_1_S31_L003_R2_001.trimmed.unpaired.fastq.gz ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:7 MINLEN:35






