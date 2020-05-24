for f in (find . -type d -path '*/.git' -prune -o -name '*.pdf' -print0 | xargs -0)
    set target (string replace '.pdf' '.png' $f)
    convert -density 500 "$f"[0] $target
end
