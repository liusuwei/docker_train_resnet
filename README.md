# pass in docker for windows

# docker build --file Dockerfile . -t train_resnet
# docker run -it --rm --name train_resnet train_resnet

# If you want to use gui in docker for windows
# first you need to install VcXsrv and launch it
# and replace the docker command to 
# docker run -it --rm -e DISPLAY=host.docker.internal:0 --name train_resnet train_resnet

# If you need to access the docker container
# you need to volume it and replace the docker command to 
# docker run -it --rm -v %cd%\volume:/volume --name train_resnet train_resnet