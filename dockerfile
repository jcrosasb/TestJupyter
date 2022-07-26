FROM continuumio/miniconda3:4.10.3p1

WORKDIR /project

RUN conda install jupyterlab
    env create -f env2.yml

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]