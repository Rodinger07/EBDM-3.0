FROM ghcr.io/fenics/dolfinx/dolfinx:v0.8.0

USER root
RUN apt-get update && apt-get install -y \
    python3-pip git hdf5-tools && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir \
    numpy scipy matplotlib h5py mpmath pyyaml \
    jupyterlab ipykernel \
    classylss  # para CLASS Python interface

COPY . /app
WORKDIR /app

RUN chmod +x run_pipeline.sh

CMD ["bash"]
