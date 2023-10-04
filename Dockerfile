FROM python:3.10
# RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
# RUN pip3 install psycopg2-binary

# WORKDIR /app

# COPY ./requirements.txt /app/requirements.txt
# RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt


COPY . .
ENV PYTHONPATH=app/addons

CMD [ "python3", "-m", "http.server", "5000","-d", "public_html"] 