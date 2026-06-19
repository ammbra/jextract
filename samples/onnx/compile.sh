jextract \
  --target-package oracle.code.onnx.foreign \
  --output src \
  "$ORT_GENAI_INCLUDE_DIR/ort_genai_c.h"

javac --release 26 -d . src/oracle/code/onnx/foreign/*.java OnnxGenerator.java
