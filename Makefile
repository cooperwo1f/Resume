# Makefile for building LaTeX files with rubber

# Define the directories
BUILD_DIR := build

# List of LaTeX files to build
TEX_FILES := $(wildcard *.tex) $(wildcard *.cls)

# Default target
.PHONY: all
all: $(TEX_FILES:%.tex=$(BUILD_DIR)/%.pdf)

# Rule for building LaTeX files
$(BUILD_DIR)/%.pdf: %.tex | $(BUILD_DIR)
	cp -f -r -t $(BUILD_DIR)/ $(TEX_FILES)
	cd $(BUILD_DIR) && rubber --pdf $(<F)

# Rule to create the build directory
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Clean the build directory
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
