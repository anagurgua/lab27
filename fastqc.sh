#!/bin/bash

## for loop (bucle) para correr fastqc en los transcriptomas
## NOTA: los transcriptomas deben estar en la misma carpeta 
## El output utiliza el mismo nombre del transcriptoma 

# Contexto del trabajo

echo ""
echo ""
echo Corriendo fastqc
echo job started at `date +"%T %a %d %b %Y"`
echo ""
echo ""


for i in *.fastq.gz;
do
	fastqc ruta/de/los/transcriptomas/$i --outdir=ruta/del/output
done


echo job finished at `date +"%T %a %d %b %Y"`

