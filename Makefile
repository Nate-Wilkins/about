all: clean build

clean:
	git clean -X -q -f

build:
	$(MAKE) flair
	latexmk -pdf -outdir=_build resume.tex
	$(MAKE) preview

flair:
	wget -O so-flair.png 'https://stackoverflow.com/users/flair/422312.png?theme=clean'

preview:
	convert -density 300 _build/resume.pdf -quality 90 -resize "50%" -background white -alpha remove _build/resume.png

help:
	@echo 'Makefile build automation                    '
	@echo '                                             '
	@echo 'Usage                                        '
	@echo '   make all        clean, build              '
	@echo '   make clean      clean out temporary files '
	@echo '   make build      compiles LaTeX            '
	@echo '   make flair      retrieve latest flair     '
	@echo '   make preview    generate a image preview  '
	@echo '   make help       displays this help text   '
	@echo '                                             '
	@echo 'DEFAULT:                                     '
	@echo '   make all                                  '
	@echo '                                             '

.PHONY: all clean build flair preview help
