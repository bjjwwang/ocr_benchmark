if [[ $CUDA == "10.1" ]]; then
  paddle_whl="https://paddle-inference-lib.bj.bcebos.com/2.2.0/python/Linux/GPU/x86-64_gcc8.2_avx_mkl_cuda10.1_cudnn7.6.5_trt6.0.1.5/paddlepaddle_gpu-2.2.0.post101-cp37-cp37m-linux_x86_64.whl"
  serving_whl="paddle-serving-server-gpu==0.7.0.post101"
elif [[ $CUDA == "10.2" ]]; then
  paddle_whl="https://paddle-inference-lib.bj.bcebos.com/2.2.0/python/Linux/GPU/x86-64_gcc8.2_avx_mkl_cuda10.2_cudnn8.1.1_trt7.2.3.4/paddlepaddle_gpu-2.2.0-cp37-cp37m-linux_x86_64.whl"
  serving_whl="paddle-serving-server-gpu==0.7.0.post1028"
fi

pip3.7 install -U $paddle_whl $serving_whl paddle-serving-client==0.7.0 paddle-serving-app==0.7.0 -i https://pypi.tuna.tsinghua.edu.cn/simple
