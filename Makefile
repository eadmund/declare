FILES = init.lua classes.lua clpackage.lua symbol.lua cl-symbols.lua test_root.lua

$(FILES): declare.org
	emacs --batch --no-init-file --load org --find-file declare.org --funcall org-babel-tangle --kill

all: $(FILES)

clean:
	rm -f $(FILES)

test: $(FILES)
	lua test_root.lua
