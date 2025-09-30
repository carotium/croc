FROM hpretl/iic-osic-tools:2025.07

USER 0:0

RUN ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5
