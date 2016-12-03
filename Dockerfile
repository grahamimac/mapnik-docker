FROM ubuntu:latest

RUN apt-get update -y && \
	apt-get install -y git \
		wget \
		python \
		zlib1g-dev \
		clang \
		make \
		pkg-config \
		curl \
		libboost-dev \
		libboost-filesystem-dev \
		libboost-program-options-dev \
		libboost-python-dev \
		libboost-regex-dev \
		libboost-system-dev \
		libboost-thread-dev \
		libicu-dev \
    	python-dev \
    	libxml2 \
    	libxml2-dev \
    	libfreetype6 \
    	libfreetype6-dev \
    	libjpeg-dev \
    	libpng-dev \
    	libproj-dev \
    	libtiff-dev \
    	libcairo2 \
    	libcairo2-dev \
    	python-cairo \
    	python-cairo-dev \
    	libcairomm-1.0-1v5 \
    	libcairomm-1.0-dev \
    	ttf-unifont \
    	ttf-dejavu \
    	ttf-dejavu-core \
    	ttf-dejavu-extra \
    	build-essential \
    	python-nose \
    	libgdal1-dev \
    	python-gdal \
    	postgresql \
    	postgresql-server-dev-9.5 \
    	postgresql-contrib \
    	postgis \
    	postgresql-9.5-postgis-2.2 \
    	gir1.2-harfbuzz-0.0 \
    	libharfbuzz-bin \
		libharfbuzz-dev \
		libharfbuzz-doc \
		libharfbuzz-gobject0 \
		libharfbuzz-icu0 \
		libharfbuzz0b \
		python-setuptools

RUN git clone https://github.com/mapnik/mapnik mapnik-3.x --depth 10 && \
	cd mapnik-3.x && \
	git submodule update --init && \
	source bootstrap.sh && \
	./configure CUSTOM_CXXFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0" && \
	make && \
	make install

RUN cd ../ && \
	wget https://pypi.python.org/packages/7b/96/12930cefa3048a79ea74c24fdf32def0820335da23a8c4d00ccc5d41e21b/mapnik-0.1-py2.7-linux-x86_64.egg && \
	easy_install mapnik-0.1-py2.7-linux-x86_64.egg && \
	rm mapnik-0.1-py2.7-linux-x86_64.egg



