#!/bin/bash

source activate my_main_py3_env
python download_files.py 1_downloaded_pdfs/
source deactivate

source activate my_py2_pdfminer_env
python extract_text_from_pdf.py 1_downloaded_pdfs/ 2_extracted_texts/
source deactivate

source activate my_main_py3_env
python prepocess_texts.py 2_extracted_texts/ 3_preprocessed_texts/