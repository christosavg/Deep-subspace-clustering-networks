FROM tensorflow/tensorflow:latest-gpu 


RUN mkdir -p /subspace/
RUN mkdir -p /subspace/Data/
RUN mkdir -p /subspace/pretrain-model-COIL20/
RUN mkdir -p /subspace/pretrain-model-COIL100/
RUN mkdir -p /subspace/pretrain-model-EYaleB/
RUN mkdir -p /subspace/pretrain-model-ORL/


RUN pip install munkres 

COPY ./Data /subspace/Data/
COPY *.py /subspace/
COPY ./pretrain-model-COIL20 /subspace/pretrain-model-COIL20/
COPY ./pretrain-model-COIL100 /subspace/pretrain-model-COIL100/
COPY ./pretrain-model-EYaleB/ /subspace/pretrain-model-EYaleB/
COPY ./pretrain-model-ORL/ /subspace/pretrain-model-ORL/


WORKDIR /subspace/
CMD ["sh", "-c", "python DSC-Net-L2-EYaleB.py  && /bin/bash"] 


