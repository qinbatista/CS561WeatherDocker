FROM python:3.8-slim
ADD * ./
RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt
EXPOSE 3000/tcp
WORKDIR /
CMD python3 WeatherAPIMock.py