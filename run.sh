docker build -t deep-subspace:latest -f Dockerfile .
#nvidia-docker run -it --rm deep-multimodal /bin/bash
nvidia-docker run -p 8888:8888 --rm deep-subspace 


