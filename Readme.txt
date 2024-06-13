Test connect git 
# Create a new repository on the command line
echo "# working" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/
git push -u origin main

…or push an existing repository from the command line
git remote add origin https://github.com/
git branch -M main
git push -u origin main