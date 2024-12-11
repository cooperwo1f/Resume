# Makefile for building LaTeX files with Rubber

# Define the directories
BUILD_DIR := build

# List of LaTeX files to build
TEX_FILES := $(wildcard *.tex) $(wildcard *.cls)
SUB_DIRS := $(shell find . -maxdepth 1 -type d ! -path "./.git*" ! -path ".")
SUB_DIRS := $(filter-out ./$(BUILD_DIR), $(SUB_DIRS))

# Default target
.PHONY: all
all: $(TEX_FILES:%.tex=$(BUILD_DIR)/%.pdf)

# Rule for building LaTeX files
$(BUILD_DIR)/%.pdf: %.tex $(SUB_DIRS) | $(BUILD_DIR)
	@echo "copying tex files into build directory"
	@cp -f -r $(TEX_FILES) $(BUILD_DIR)
	@cp -f -r $(SUB_DIRS) $(BUILD_DIR)

	@cd $(BUILD_DIR) && rubber --pdf $(<F)

# Rule to create the build directory
$(BUILD_DIR):
	@echo "creating build directory"
	@mkdir -p $(BUILD_DIR)

# Clean the build directory
.PHONY: clean
clean:
	@echo "removing build directory"
	@rm -rf $(BUILD_DIR)

.PHONY: rebuild
rebuild: clean all
