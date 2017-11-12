OUTPUT_DIR=output
FILE_NAME=$(basename $1 | sed 's/\..*//')
OUTPUT_FILE=$OUTPUT_DIR/$FILE_NAME.html
echo "Generating output file $OUTPUT_FILE..."
pandoc $1 --standalone -f markdown+smart+yaml_metadata_block -t html5 -o $OUTPUT_FILE
