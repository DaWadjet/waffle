from fastapi import FastAPI
app = FastAPI()
import uvicorn

@app.get("/")
async def buongiorno():
    return {"message": "bonjour"}
