sed -E -i '' 's/\\section{([^}]*)}/# \1/g' "$1"
sed -E -i '' 's/\\begin{solution}/{\::nomarkdown}\
<label for="{{ include.id }}"><\/label>\
<input type="checkbox" class="solution" id="{{ include.id }}">\
{:\/}\
<div>/g' "$1"
sed -E -i '' 's/\\end{solution}/<\/div>/g' "$1"
sed -E -i '' 's/\\end{([^}]*)}//g' "$1"
sed -E -i '' 's/\\begin{([^}]*)}//g' "$1"
sed -E -i '' 's/\\newline//g' "$1"
sed -E -i '' 's/\\subsubsection\*{([^}]*)}/### \1/g' "$1"
sed -E -i '' 's/\\subsection\*{([^}]*)}/### \1/g' "$1"
sed -E -i '' 's/\$/ $$ /g' "$1"
sed -E -i '' 's/\\item/*/g' "$1"
sed -E -i '' 's/``/"/g' "$1"
sed -E -i '' "s/''/\"/g" "$1"