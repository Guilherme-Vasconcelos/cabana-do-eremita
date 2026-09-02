#!/bin/sh
#
# This helper script takes in an image as an input,
# then writes into `blog/assets/images/` a copy of that image
# but without sensitive metadata.

set -eu

root="$(git rev-parse --show-toplevel)"
destpath="$root/blog/assets/images/"

if [ "$#" -ne 2 ]
then
    echo "Usage: $0 <input-filepath> <output-filename>" >&2
    exit 1
fi

input_fpath="$1"
output_fname="$2"
output_fpath="$destpath/$output_fname"

if ! command -v convert >/dev/null 2>&1
then
    echo "Error: ImageMagick 'convert' command not found" >&2
    exit 1
fi

if [ ! -f "$input_fpath" ]
then
    echo "Error: input file does not exist: $input_fpath" >&2
    exit 1
fi

if [ -e "$output_fpath" ]
then
    echo "Error: output file already exists: $output_fpath" >&2
    exit 1
fi

convert -strip "$input_fpath" "$output_fpath"

echo "Created: $output_fpath"
