FROM python:3.11-slim 
# First step : Start with linux that has python already installed in it

WORKDIR /app
# Create working location as app

COPY requirements.txt .
#copy the requirements.txt file to current working directory

RUN pip install --no-cache-dir -r requirements.txt
# INstall dependencies from requirements.txt file

COPY . .
# Copy all the files from current directory to working directory (app.py loan_model.py api.py models)

# Now i want to run app.py and api.py

EXPOSE 8501 8000
#CMD ["streamlit", "run", "app.py" ,"--server.address=0.0.0.0", "--server.port=8501"]
#CMD ["uvicorn" , "api:app" , "--host=0.0.0.0", "--port=8000"]
# Problem : inside docker we can not run two diff CMD comands at the same time. So we need to use a process manager like supervisord or we can use a shell script to run both commands in background.


RUN chmod +x start.sh
CMD ["./start.sh"]

# Run is used while creatin f image 
# CMD is used while running the image and creating a container