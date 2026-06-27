LINK="${1:-.}"

if [ ! -d "$LINK/.git" ]; then
    echo "ERROR: '$LINK' is not a valid Git repository."
    exit 1
fi

cd "$LINK" || exit 1

echo "current branch: $(git branch --show-current)"
echo "last 5 commits:"
git log --oneline -5
echo "uncommitted changes: $(git status --short | wc -l)"

echo "Done."
