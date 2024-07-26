# pull python base image
FROM python:3.10

# specific working directory
WORKDIR /bikeshare_model_api

# Copy application files into the container at /bikeshare_model_api
COPY bikeshare_model_api/ /bikeshare_model_api/

# update pip
RUN pip install --upgrade pip

# install dependencies
RUN pip install -r requirements.txt

# expose port for application
EXPOSE 8001

# start fastapi application
CMD ["python", "app/main.py"]