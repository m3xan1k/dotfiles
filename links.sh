for f in $(ls .); do
    if [ -d $f ]; then
        stow -Rv $f
    fi
done
