
all:
	echo hi

push:
	echo "compile_commands*" > .gitignore
	git add .
	git commit --amend --no-edit
	git push --force
