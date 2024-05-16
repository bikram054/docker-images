FROM --platform=linux/arm64 jupyter/minimal-notebook:latest
RUN mamba install -q -y pandas scikit-image seaborn matplotlib && \
    mamba clean -a -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
