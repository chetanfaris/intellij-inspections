FROM gopalkrishnaps/intellij:2020.3.1

WORKDIR /opt

COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt
COPY analyze_inspections.py /analyze_inspections.py

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

RUN chmod +x /entrypoint.sh && \
    chmod +x /analyze_inspections.py && \
    pip3 install -r /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
