FROM python:3.9

EXPOSE 8080

ENV INSTANA_SERVICE_NAME=payment

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY  *.py ./

COPY payment.ini .


# CMD [ "python3" , "payment.py" ]

# in production we use uwsgi server
CMD [ "uwsgi" , "--ini", "payment.ini" ]
