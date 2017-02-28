FROM jupyter/pyspark-notebook
# FROM jupyter/tensorflow-notebook
# FROM jupyter/minimal-notebook
# FROM jupyter/scipy-notebook

MAINTAINER Marc Guillen <marc.guillen@datsci.farm>

EXPOSE 8888

USER root

# fetch the latest juptyerhub-singleuser entrypoint
RUN wget -q https://raw.githubusercontent.com/jupyterhub/jupyterhub/0.6.1/scripts/jupyterhub-singleuser -O /usr/local/bin/jupyterhub-singleuser && \
    chmod 755 /usr/local/bin/jupyterhub-singleuser

RUN sh /usr/local/bin/start-singleuser.sh -h
CMD ["sh", "/usr/local/bin/start-singleuser.sh"]
