FROM python:3.11.5-slim
WORKDIR /Users/bharatkhanna/Library/CloudStorage/OneDrive-Personal/Scaler/Modules/Module_14/flask/DOCKER

COPY requirements.txt ./
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "-m", "flask", "--app", "predictions.py", "run", "--host=0.0.0.0" ]