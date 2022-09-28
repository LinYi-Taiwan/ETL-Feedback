FROM python:3.7.2-stretch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app 
# ADD：將檔案加到 images 內
ADD . /app

# Install the dependencies
# build 時使用，會執行此命令
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# run the command to start uWSGI
# run container 時要執行的命令

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]


# ENV：環境變數設定

# 以下為 ok 的 ubuntu config
# FROM ubuntu

# RUN apt update
# RUN apt install python3-pip -y
# RUN pip3 install Flask

# WORKDIR /app

# COPY . .

# CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]