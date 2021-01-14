FROM python:3.8

LABEL maintaner="lucascarrias@outlook.com"

ENV PYTHONBUFFERED 1

RUN mkdir -p /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		postgresql-client libpq-dev \
		sqlite3 \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]