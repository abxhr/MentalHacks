from fastapi import FastAPI
import tensorflow as tf
import numpy as np
import uvicorn

# To run the server, use the command
# install the uvicorn client and fastapi 
# {pip install fastapi uvicorn} 
# to start the api 
# python3 -m uvicorn api.main:app --reload

app = FastAPI()
model = tf.keras.models.load_model('nlp/saved_model/nlp_model')

def postprocessor(preds):
  predstr_max = 47.53555
  predstr_min = -32.273525
  range = predstr_max - predstr_min
  norm_preds = []
  probab = []
  for i in preds:
    norm_preds.append((i - predstr_min) / range)
    probab.append((i - predstr_min) * 100 / range)
  return np.mean(probab)

@app.get("/")
def index():
    return {'message' : 'Its working'}

    
@app.get("/mental/{text}")
def checkMentalHealth(text: str):
    try:
        list = []
        list.append(text)
        preds = model.predict(list)
        ans = np.int_(postprocessor(preds)).item()
        return {'health' : ans}
    except Exception as e :
        print(e.__class__)
        return {'Error' : 'Something happened'}
