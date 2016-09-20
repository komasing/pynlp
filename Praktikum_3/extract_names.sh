if [ $1 == "-h" ]
then
    echo "Usage: extract_names.sh input/path.txt output/names.txt"
    echo "Takes arbitrary text and extracts all the ocurring names."
fi
mkdir -p results
python remove_unwanted_symbols.py $1 results/cleaned.csv
python extract_sentences.py results/sentenced.csv
python extract_names.py $2