#!/usr/env bash
echo "file_name" > data/ghcnd_all_files.txt
# >> append with previous one
tar tf data/ghcnd_all.tar.gz | grep ".dly" >> data/ghcnd_all_files.txt