.PHONY: cv.pdf docker-cv clean

CC = xelatex
SRC_DIR = sources

EN_CV_DIR = $(SRC_DIR)/en_cv
EN_CV_SRCS = $(shell find $(EN_CV_DIR) -name '*.tex')

FR_CV_DIR = $(SRC_DIR)/fr_cv
FR_CV_SRCS = $(shell find $(FR_CV_DIR) -name '*.tex')

OUTPUT_DIR = outputs
DOCKER_IMAGE = aachraf/latex-cv-docker

docker-cv:
	docker run --rm -v $(PWD):/doc $(DOCKER_IMAGE) make cv-en cv-fr

cv-en: $(EN_CV_DIR)/main.tex $(EN_CV_SRCS)
	mkdir -p $(OUTPUT_DIR)
	TEXINPUTS=$(EN_CV_DIR)//: $(CC) -output-directory=$(OUTPUT_DIR) -jobname=english_cv $<

cv-fr: $(FR_CV_DIR)/main.tex $(FR_CV_SRCS)
	mkdir -p $(OUTPUT_DIR)
	TEXINPUTS=$(FR_CV_DIR)//: $(CC) -output-directory=$(OUTPUT_DIR) -jobname=french_cv $<

clean:
	rm -rf $(OUTPUT_DIR)/
