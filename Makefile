FILES = init.lua classes.lua clpackage.lua symbol.lua cl-symbols.lua test_root.lua

$(FILES): declare.org
	emacs --batch --no-init-file --load org --find-file declare.org --funcall org-babel-tangle --kill

all: $(FILES) doc

clean:
	rm -f $(FILES)

test: $(FILES)
	lua test_root.lua

html: declare.org
	emacs --batch --no-init-file --load org --find-file declare.org --funcall org-html-export-to-html --kill

pdf: declare.org
	emacs --batch --no-init-file --load org --find-file declare.org --funcall org-latex-export-to-pdf --kill

doc: html pdf
