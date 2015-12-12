FROM tsutomu7/py3sci

RUN pip install ortoolpy
EXPOSE 8888
VOLUME ["/jupyter"]
WORKDIR /jupyter
COPY standard.tar.gz /root/
CMD ["sh", "-c", "tar xzf /root/standard.tar.gz && jupyter notebook --ip=*"]

