TITLE=A Few Notes on the Culture
AUTHOR=Iain M. Banks
NAME=$(AUTHOR) - $(TITLE)
BUILD_DIR=build

YELLOW=\033[1m\033[93m
CYAN=\033[1m\033[96m
CLEAR=\033[0m

all: clean pdf epub

help:
	@echo "$(CYAN)help$(CLEAR)    Print this help page"
	@echo "$(CYAN)clean$(CLEAR)   Clean generated files"
	@echo "$(CYAN)pdf$(CLEAR)     Generate pdf format"
	@echo "$(CYAN)epub$(CLEAR)    Generate epub format"
	@echo "$(CYAN)all$(CLEAR)     Generate all formats"
	@echo "$(CYAN)release$(CLEAR) Release project"

pdf:
	@echo "$(YELLOW)Generating pdf format$(CLEAR)"
	mkdir -p $(BUILD_DIR)
	md2pdf -o "$(BUILD_DIR)/$(NAME).pdf" article.md

epub:
	@echo "$(YELLOW)Generating epub format$(CLEAR)"
	mkdir -p $(BUILD_DIR)
	pandoc -o "$(BUILD_DIR)/$(NAME).epub" article.md

clean:
	@echo "$(YELLOW)Cleaning generated files$(CLEAR)"
	rm -rf $(BUILD_DIR)

release:
	@echo "$(YELLOW)Releasing project$(CLEAR)"
	release
