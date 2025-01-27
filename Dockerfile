FROM python:buster

RUN pip install selenium
RUN git clone https://github.com/Bruuuuuuce/PKUAutoSubmit.git /PKUAutoSubmit

COPY entrypoint.sh /entrypoint.sh
COPY entrypoint.py /PKUAutoSubmit/entrypoint.py
COPY phantomjs-linux /PKUAutoSubmit/phantomjs/bin/phantomjs-linux

ENTRYPOINT [ "/entrypoint.sh" ]
