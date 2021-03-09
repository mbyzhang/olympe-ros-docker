FROM ros:noetic

ENV DEBIAN_FRONTEND noninteractive

ADD olympe-final /opt/parrot-olympe/

RUN apt update && \
    apt install -y python3 python3-pip && \
    apt install -y --no-install-recommends libgl1-mesa-glx libavahi-client3 && \
    apt clean && \
    pip3 install aenum==2.2.6 colorlog future boltons yapf tzlocal requests websocket_client

ADD olympe-ros-entrypoint.sh /
CMD [ "/olympe-ros-entrypoint.sh", "/bin/bash" ]
