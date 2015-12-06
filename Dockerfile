FROM tsutomu7/py3sci

RUN pip install ortoolpy
EXPOSE 8888
VOLUME ["/jupyter"]
WORKDIR /jupyter
COPY *.ipynb /root/tmp/
COPY data/ /root/tmp/data/
COPY init.sh /root/
CMD ["sh", "/root/init.sh"]
