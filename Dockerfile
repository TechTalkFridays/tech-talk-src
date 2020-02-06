FROM python:3.7-alpine AS build-env
COPY . .
RUN pip install pipenv && pipenv install --system --deploy

FROM gcr.io/distroless/python3
WORKDIR /app
COPY --from=build-env /usr/local/lib/python3.7/site-packages /site-packages
COPY dead_simple .
ENV PYTHONPATH=/site-packages
CMD ["hello.py"]
