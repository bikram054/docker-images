FROM --platform=linux/arm64 jupyter/minimal-notebook:latest
RUN mamda install -q -y numpy scikit-image && \
    mamba clean -a -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
