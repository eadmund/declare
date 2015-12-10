FILES = init.lua classes.lua clpackage.lua symbol.lua cl-symbols.lua

$(FILES): declare.org
	emacs --batch --no-init-file --load org --find-file declare.org --funcall org-babel-tangle --kill

all: $(FILES)

clean:
	rm $(FILES)

test: $(FILES) test_root.lua
	lua test_root.lua
