To run Generative AI models with ONNX runtime, make sure to have downloaded a native [`libonnxruntime`](https://github.com/microsoft/onnxruntime/release) and [`libonnxruntime-genai`](https://github.com/microsoft/onnxruntime-genai/releases).
The compatible `libonnxruntime` library must be present in the same folder as `libonnxruntime-genai` library. 


1. Set `ONNX_LIB_PATH` to the directory containing the built native libraries. The native library extension (`.dylib` or `.so` or `.dll`) is platform specific.

   (e.g. where `libonnxruntime-genai.so` or `.dylib` lives):

    ```bash
    export ONNX_LIB_PATH=/path/.../onnxruntime-genai/lib/
    ```

2. Set `ORT_GENAI_INCLUDE_DIR` to your clone of `onnxruntime-genai` before running `compile.sh`:

    ```bash
    export ORT_GENAI_INCLUDE_DIR=/path/.../onnxruntime-genai/include
    ```

3. Download or prepare a valid ONNX model:

   ```bash
    git clone https://huggingface.co/microsoft/Phi-3-mini-4k-instruct-onnx
    cd Phi-3-mini-4k-instruct-onnx
    export MODEL_PATH=/path/.../Phi-3-mini-4k-instruct-onnx/cpu_and_mobile/cpu-int4-rtn-block-32-acc-level-4/
    ```

4. Run `compile.sh`:

    ```bash
    ./compile.sh
    ```

5. Run the example:

    ```bash
    sh ./run.sh
    ```
