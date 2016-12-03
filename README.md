# Mapnik Dockerfile

### Making Mapnik Installation easy

Installing [Mapnik](http://mapnik.org/) is hard. Use this Dockerfile to automate Mapnik installation on the latest Ubuntu system, 16.04. Or, just pull and run the container [directly from Docker](https://hub.docker.com/r/graham3333/mapnik-python/). The container comes with Mapnik installed with python bindings so you don't have to waste your time figuring out how to install it from source. For more detailed information about the installation, see the [Github repository](https://github.com/mapnik). For more information about Docker, see [their website](https://www.docker.com/).

To run the server with Mapnik installed and ready to go, run the following:

```bash
docker run -itd graham3333/mapnik-python
```
