import tensorflow as tf
import numpy as np

text = []
text.append('I am very sad')
print(text)

model = tf.keras.models.load_model('nlp/saved_model/nlp_model')
preds = model.predict(text)

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

ans = np.int_(postprocessor(preds))
print(type(ans.item()))
print(ans.item())




