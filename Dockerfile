FROM python:3.8-slim

WORKDIR /usr/app

COPY main.py ./
COPY templates templates/
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5001

# Run main.py when the container launches forreal
CMD ["python", "main.py"]
