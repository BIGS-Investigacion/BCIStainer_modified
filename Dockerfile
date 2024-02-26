# Use the nvidia/cuda base image
FROM nvcr.io/nvidia/pytorch:23.12-py3

# ARG DIR_NAME="/bci-app/"
# ADD ./* {DIR_NAME}
# Install git
RUN apt-get update && apt-get install -y git
# RUN echo $(ls -l .)
# Clone the GitHub repository
# RUN git clone https://github.com/Zan-23/BCIStainer_modified.git /app
RUN pip install -r requirements.txt 
# Set the working directory
WORKDIR ${DIR_NAME}

# Map a volume for results
VOLUME ${DIR_NAME}/

# Set train.py as the entrypoint
ENTRYPOINT ["python", "train.py"]
