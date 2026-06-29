java \
  --enable-native-access=ALL-UNNAMED \
  -Djava.library.path="$ONNX_PATH/lib/" \
  OnnxGenerator \
  "$MODEL_PATH"
