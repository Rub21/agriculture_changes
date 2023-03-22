FROM osgeo/gdal:ubuntu-full-3.6.3
ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    wget \
    libxml2 \
    git
RUN apt-get install -y python3
RUN apt-get -y install python3-pip

RUN pip install geopandas
RUN pip install rioxarray
RUN pip install rasterio
RUN pip install earthpy
RUN pip install scikit-learn
RUN pip install jupyterlab_widgets jupyterlab
RUN pip install pystac-client
RUN pip install planetary_computer
RUN pip install geopandas
RUN pip install rich
RUN pip install IPython
RUN pip install rioxarray
RUN pip install 'stackstac[viz]'
RUN pip install contextily
RUN pip install earthpy
RUN pip install --ignore-installed Pillow==9.0.0

CMD ["/bin/bash", "-c", "jupyter lab --allow-root --no-browser --ip 0.0.0.0 --port 8888 --notebook-dir=/mnt"]
