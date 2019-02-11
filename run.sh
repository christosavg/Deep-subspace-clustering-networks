docker build -t deep-subspace:latest -f Dockerfile .
#nvidia-docker run -it --rm deep-multimodal /bin/bash
#PATH="/home/avgerinos/git/Clones/Deep-subspace-clustering-networks"

nvidia-docker run -v /home/avgerinos/git/Clones/Deep-subspace-clustering-networks:/subspace --rm deep-subspace 
