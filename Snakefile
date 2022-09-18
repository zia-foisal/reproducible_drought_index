rule get_all_archive:
    input:"code/get_ghcnd_data.bash"
    output:"data/ghcnd_all.tar.gz"
    params:"ghcnd_all.tar.gz"
    shell:"{input.script},{params.file}"
    ...
rule get_all_filenames:
    input:script = "code/get_ghcnd_all_files.bash", archive="data/ghcnd_all.tar.gz"
    output:"data/ghcnd_all_files.txt"
    shell:"{input.script}"
    ...
rule get_inventory:
    input:"code/get_ghcnd_data.bash"
    output:"data/ghcnd-inventory.txt"
    params:"ghcnd-inventory.txt"
    shell:"{input.script}","{params.file}"
    ...
rule get_stations_data:
    input: script = "code/get_ghcnd_data.bash"
    output:"data/ghcnd-stations.txt"
    params: file = "ghcnd-stations.txt"
    shell:"{input.script}","{params.file}"
    ...