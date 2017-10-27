JS_SRC = repeatplay.js
COMPILED = compiled.js
TARGET = bookmarklet.js

CLOSURE_COMPILER = /opt/google/compiler/closure-compiler-v20170910.jar


.PHONY: all
all: $(JS_SRC)
	java -jar $(CLOSURE_COMPILER) --compilation_level ADVANCED_OPTIMIZATIONS --js $(JS_SRC) --js_output_file $(COMPILED)
	cat header.js $(COMPILED) footer.js | tr -d '\n' > $(TARGET)
	rm -f $(COMPILED)

.PHONY: clean
clean:
	rm -f $(TARGET) $(COMPILED)
