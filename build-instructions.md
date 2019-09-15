You can build the book with

```
git clone https://github.com/jimmysong/programmingbitcoin
cd programmingbitcoin
apt-get/brew install asciidoctor
asciidoctor all.asciidoc
```

That will create an `all.html` file containing the book.

To run the exercises, use this docker file:

```
FROM jupyter/minimal-notebook

RUN git clone https://github.com/jimmysong/programmingbitcoin
WORKDIR /home/jovyan/programmingbitcoin
RUN pip install -r requirements.txt
CMD start-notebook.sh --NotebookApp.password=sha1:2d99c5e3652a:f26cfea89ae367ac175a84a879a1c5505b21fb98
```

Build with `docker build -t pb .`, run with `docker run -it --rm -p 8888:8888 pb`. Go to `http://localhost:8888`, and log in with `felix the cat`. Click on `code-ch01`, then `Chapter1.ipynb`. Click on a cell in the resulting notebook, and press CTRL-ENTER to run it.

Some of the exercises require you to modify `ecc.py`, which you can reach from the `code-ch01` directory.
