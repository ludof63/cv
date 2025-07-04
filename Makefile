ENV_FOLDER=.venv
SOURCE="Ludovico_Capiaghi_CV.yaml"
OUTPUT_FOLDER=output 

cv:
	mkdir -p $(OUTPUT_FOLDER)
	rendercv render $(SOURCE) --output-folder-name $(OUTPUT_FOLDER) -nopng

all: cv

clean-env:
	rm -rf $(ENV_FOLDER)

clean-out:
	rm -rf $(OUTPUT_FOLDER)

clean: clean-out clean-env