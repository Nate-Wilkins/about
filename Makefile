all: clean build test

clean:
	git clean -X -q

build:
	$(MAKE) flair

flair:
	wget -O so-flair.png 'https://stackoverflow.com/users/flair/422312.png?theme=clean'

help:
	@echo 'Makefile build automation                                              '
	@echo '                                                                       '
	@echo 'Usage                                                                  '
	@echo '   make all        clean, build                                        '
	@echo '   make clean                       clean out temporary files          '
	@echo '   make build      flair            compiles LaTeX                     '
	@echo '   make flair                       retrieve latest flair              '
	@echo '   make help                        displays this help text            '
	@echo '                                                                       '
	@echo 'DEFAULT:                                                               '
	@echo '   make all                                                            '
	@echo '                                                                       '

.PHONY: all clean build flair help
