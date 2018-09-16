FROM alpine:3.7
MAINTAINER rhaun72
RUN apk add --no-cache alpine-sdk util-linux pciutils usbutils binutils findutils grep coreutils python python2-dev py-pip openrc
COPY . ./app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r REQUIREMENTS
ENTRYPOINT ["python"]
CMD ["DoomsDayMain.py"]
