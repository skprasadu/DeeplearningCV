FROM spmallick/opencv-docker:opencv

RUN apt-get update -y && apt-get install -y graphviz

WORKDIR /app

RUN /bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh \
	&& workon OpenCV-master-py3 \
	&& pip install --upgrade pip \
    && pip install pillow  opencv-contrib-python numpy==1.16.4 setuptools==41.0.0 tf-nightly keras graphviz pydot jupyter"

#jupyter notebook --ip=0.0.0.0 --no-browser --allow-root