# Step 1: Use the official Anaconda image as the base
FROM continuumio/anaconda3:latest

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: (Optional) Create a new Conda environment (if needed) and install additional packages
# RUN conda create --name myenv python=3.9
# RUN conda install -n myenv <other-libraries>

# Step 5: Activate the environment and run the application
CMD ["python", "hello.py"]

