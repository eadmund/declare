%.lua: README.org
	emacs --batch --no-init-file --load org --find-file README.org --funcall org-babel-tangle --kill

all: init.lua classes.lua clpackage.lua symbol.lua

test: all
	lua test_root.lua
