To run Generative AI models with ONNX runtime, make sure to have downloaded a native [`libonnxruntime`](https://github.com/microsoft/onnxruntime/release) and [`libonnxruntime-genai`](https://github.com/microsoft/onnxruntime-genai/releases).
The compatible `libonnxruntime` library must be present in the same folder as `libonnxruntime-genai` library, like in the tree below.

```text
onnxruntime-genai/
├── include
│ ├── ort_genai.h
│ └── ort_genai_c.h
└── lib
    ├── libonnxruntime-genai.dylib
    └── libonnxruntime.dylib
```


1. Set `ONNX_PATH` to the directory containing the built native libraries. The native library extension (`.dylib` or `.so` or `.dll`) is platform specific.

    ```bash
    export ONNX_PATH=/path/.../onnxruntime-genai/
    ```
2. Run `compile.sh`:

    ```bash
    ./compile.sh
    ```
   
3. Download or prepare a valid ONNX model:

   ```bash
    git clone https://huggingface.co/microsoft/Phi-3-mini-4k-instruct-onnx
    cd Phi-3-mini-4k-instruct-onnx
    export MODEL_PATH=/path/.../Phi-3-mini-4k-instruct-onnx/cpu_and_mobile/cpu-int4-rtn-block-32-acc-level-4/
    ```

4. Run the example:

    ```bash
    sh ./run.sh
    ```
