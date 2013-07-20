JS_SRC = repeatplay.js
COMPILED = compiled.js
TARGET = bookmarklet.js

CLOSURE_COMPILER_DIR = /opt/google/closure-compiler

.PHONY: all
all: $(JS_SRC)
	java -jar $(CLOSURE_COMPILER_DIR)/compiler.jar --compilation_level ADVANCED_OPTIMIZATIONS --js $(JS_SRC) --js_output_file $(COMPILED)
	cat header.js $(COMPILED) footer.js | tr -d '\n' > $(TARGET)
	rm -f $(COMPILED)

.PHONY: clean
clean:
	rm -f $(TARGET) $(COMPILED)
