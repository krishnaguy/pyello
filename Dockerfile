FROM python:3

WORKDIR /
ENV VIRTUAL_ENV=/venv
RUN python3 -m venv venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN python --version


COPY . .

CMD [ "flask", "run" ]