FROM python:3-alpine

ENV app /app

RUN mkdir $app
WORKDIR $app
COPY . $app

RUN pip3 install -r requirements.txt

WORKDIR API/

EXPOSE 8094
ENTRYPOINT ["python3", "./api.py"]
CMD ["tail -f /app/logs/scan.log"]
