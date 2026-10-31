
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {
        "message": "Hello from FastAPI on AWS EC2!"
    }

@app.get("/about")
def about():
    return {
        "application": "FastAPI Demo",
        "version": "1.0"
    }
