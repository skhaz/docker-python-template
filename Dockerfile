FROM python:3.7-alpine as base

FROM base as builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --quiet --no-warn-script-location --prefix=/install --requirement requirements.txt

FROM base
COPY --from=builder /install /usr/local
WORKDIR /app
COPY . .
EXPOSE 8000

CMD ["gunicorn", "--bind", ":8000", "app.main:app"]
