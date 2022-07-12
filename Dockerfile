FROM python:3.10
WORKDIR /app
COPY . .

RUN pip install -r requirements.txt && python build_model.py 

EXPOSE 8501
ENTRYPOINT ["streamlit", "run"]
CMD ["model_dashboard.py"]
