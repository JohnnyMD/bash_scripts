#!/usr/bin/env bash
### convert the <ePub> files to <mobi> for kindle: ###

d_flag=''
f_flag=''
files=''
verbose='false'


convert_dir() {
  local source_dir=$1
  local dest_dir=$2
  echo source_dir = $source_dir
  echo dest_dir   = $dest_dir

  # Make the destination directory:
  printf "\n\nCreating the dirctory $dest_dir . . .\n"
  mkdir -p  $dest_dir

  echo      $(pwd)
  cd        $source_dir
  echo      $(pwd)
  
  # Find all <ePub> files from the <source_dir>, convert them to <mobi> and save in the <dest_dir>: 
  find    .   -name '*.epub'  -type f    \
              -exec                       \
                  bash -c                 \
                      'ebook-convert  "$0"  "${dest_dir}""/""${0%.epub}.mobi"  --prefer-author-sort --output-profile=kindle --linearize-tables --smarten-punctuation --enable-heuristics' {} \;
}

print_usage() {
  printf "Usage: ..."
}


printf "\n$0 \t $1 \t $2 \t $3\n\n"

while getopts 'd:f:v' flag; do
  case "${flag}" in
    d) convert_dir $2 $3 ;;
    f) files="${OPTARG}" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done
