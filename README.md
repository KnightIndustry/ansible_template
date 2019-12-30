create new repo

echo "# ansible_template" >> README.md

git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:KnightIndustry/ansible_template.git
git push -u origin master

push existing repo

git remote add origin git@github.com:KnightIndustry/ansible_template.git
git push -u origin master
