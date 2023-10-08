FROM python:3.9 
# Or any preferred Python version.

WORKDIR /app
ADD . /app

RUN apt-get update && apt-get -y install --no-install-recommends \
    libfreetype6-dev \
    libportmidi-dev \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt

WORKDIR /app/code

#RUN pip install pygame requests beautifulsoup4 python-dotenv

CMD ["python", "./main.py"] 

# Or enter the name of your unique directory 