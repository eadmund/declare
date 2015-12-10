%.lua: declare.org
	emacs --batch --no-init-file --load org --find-file declare.org --funcall org-babel-tangle --kill

all: init.lua classes.lua clpackage.lua symbol.lua

test: all
	lua test_root.lua
