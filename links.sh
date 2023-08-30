if [ -f ~/.gitignore ]; then
    rm ~/.gitignore
fi

for f in $(ls .); do
    if [ -d $f ]; then
        stow -Rv $f
    fi
done

ln -s ~/dotfiles/home/.gitignore ~/.gitignore
