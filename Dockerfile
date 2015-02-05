FROM eduard44/vertex:1.0.0
MAINTAINER Benjamin Kovach <bkovach13@gmail.com>

USER root

# Install python/pip/dependencies
RUN \
    sudo apt-get install -y libblas-dev liblapack-dev gfortran python-dev python-setuptools libpng-dev libfreetype6-dev libxft-dev python-virtualenv python-pip; \
    sudo apt-get build-dep python-numpy python-scipy; \
    virtualenv .myenv; \
    source .myenv/bin/activate; \
    pip install -U numpy scipy; \
    wget https://pypi.python.org/packages/source/P/PyQt-Fit/PyQt-Fit-1.3.3.tar.gz; \
    tar -xzf PyQt-Fit-1.3.3.tar.gz; \
    cd PyQt-Fit-1.3.3; \
    python setup.py install;
