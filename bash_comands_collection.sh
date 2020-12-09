### FIND ###

# (1) convert the <ePub> files to <mobi> for kindle: #
find    .   -name '*.epub'  -type f     \
            -exec                       \
                bash -c                 \
                    'ebook-convert              \\
                        "$0"                    \\
                        "this_files_mobi/${0%.epub}.mobi"   \\ --prefer-author-sort    \\
                        --output-profile=kindle \\ 
                        --linearize-tables      \\
                        --smarten-punctuation   \\
                        --enable-heuristics'    \
            {} \;
