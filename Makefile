TITLE=A Few Notes on the Culture
AUTHOR=Iain M. Banks
NAME=$(AUTHOR) - $(TITLE)
BUILD_DIR=build

pdf:
	mkdir -p $(BUILD_DIR)
	md2pdf article.md
	mv article.pdf "$(BUILD_DIR)/$(NAME).pdf"

clean:
	rm -rf $(BUILD_DIR)
