FROM jupyter/minimal-notebook:latest
conda install --quiet --yes numpy scikit-image && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
