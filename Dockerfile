FROM python:3.13.13-slim-trixie@sha256:f96eb0214ceab47efc2558b8351888ca01acf6193f4050ee7594c8250516cc8b

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]