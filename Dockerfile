FROM python:3

WORKDIR /
RUN python -m venv venv
RUN source venv/bin/activate
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN python --version


COPY . .

CMD [ "python", "--version" ]