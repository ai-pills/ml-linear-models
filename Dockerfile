# Specify the base image
FROM python:3.8

# Copy the current folder to the container
COPY . /app

# Specify working directory
WORKDIR /app

# Install additional Python packages
RUN pip install --no-cache-dir -r requirements.txt
RUN jupyter contrib nbextension install --system

# Use CMD to specify the starting command
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", \
     "--ip=0.0.0.0", "--allow-root"]
