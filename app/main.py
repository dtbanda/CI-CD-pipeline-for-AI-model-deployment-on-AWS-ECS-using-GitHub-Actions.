from fastapi import FastAPI
from pydantic import BaseModel
import random

app = FastAPI()

class TextPrompt(BaseModel):
    prompt: str

@app.get("/")
def health_check():
    return {"status": "ok"}

@app.post("/generate")
def generate_text(prompt: TextPrompt):
    # Simulated model response
    responses = [
        f"{prompt.prompt}... this is a generated completion.",
        f"{prompt.prompt}... here's what I think:",
        f"{prompt.prompt}... based on the model's training:"
    ]
    return {"response": random.choice(responses)}
