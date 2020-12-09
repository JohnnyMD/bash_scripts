#!/usr/bin/env bash
###  ###

a_flag=''
files=''
verbose='false'

print_usage() {
  printf "Usage: ..."
}

while getopts 'af:v' flag; do
  case "${flag}" in
    a) a_flag='true' ;;
    f) files="${OPTARG}" ;;
    v) verbose='true' ;;
    *) print_usage
       exit 1 ;;
  esac
done
