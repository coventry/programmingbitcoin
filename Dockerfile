FROM jupyter/minimal-notebook

RUN git clone https://github.com/jimmysong/programmingbitcoin
WORKDIR /home/jovyan/programmingbitcoin
RUN pip install -r requirements.txt
CMD start-notebook.sh --NotebookApp.password=sha1:2d99c5e3652a:f26cfea89ae367ac175a84a879a1c5505b21fb98
