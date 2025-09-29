$a=Read-Host -prompt "Introduce mensaje"
git add .
git commit -m "$a"
git push --force origin main