# Input is a path to a directory of markdown files
INPUT_DIR=$1
OUTPUT_DIR=output
mkdir -p $OUTPUT_DIR
for INPUT_FILE in `ls $INPUT_DIR/*.md`
do
    OUTPUT_FILE_NAME=$(basename $INPUT_FILE | sed 's/\..*/.html/')
    OUTPUT_FILE=$OUTPUT_DIR/$OUTPUT_FILE_NAME
    echo "Generating output file $OUTPUT_FILE ..."
    pandoc $INPUT_FILE --standalone -f markdown+smart+yaml_metadata_block -t html5 -o $OUTPUT_FILE
done
