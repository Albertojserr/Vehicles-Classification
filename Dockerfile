FROM bitnami/pytorch:latest
ADD req.txt .
RUN pip install -r req.txt
WORKDIR /media/Almacenamiento/src/predict
ADD Predict.py .
ADD vehicles_model.pth .
CMD ["python", "Predict.py"]
