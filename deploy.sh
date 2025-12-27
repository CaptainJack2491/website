#!/usr/bin/env bash

# 1. Clear the old garbage
rm -rf public/

# 2. Render the whole website (HTML)
# This creates the directories and index.html files correctly
quarto render --to html

# 3. Render the Plain Text versions manually to ensure mirroring
# We find every .qmd, and render it to a .txt in the corresponding public/ folder
find . -name "*.qmd" -not -path "./.*" -not -path "./public/*" | while read -r file; do
    # Get the directory structure (e.g., ./projects/index.qmd -> projects)
    rel_dir=$(dirname "${file#./}")
    # Get the filename without extension (e.g., index)
    base_name=$(basename "$file" .qmd)
    
    # Render to plain text directly into the correct public sub-directory
    quarto render "$file" --to plain --output "${base_name}.txt" --output-dir "public/$rel_dir"
done
