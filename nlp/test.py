import tensorflow as tf
import numpy as np

text = []
text.append('I am very happy')
print(text)

model = tf.keras.models.load_model('nlp/saved_model/nlp_model')
preds = model.predict(text)

# def postprocessor(preds):
#   range = predstr.max()-predstr.min()
#   norm_preds = []
#   probab = []
#   for i in preds:
#     norm_preds.append((i - predstr.min()) / range)
#     probab.append((i - predstr.min()) * 100 / range)
#   return np.mean(probab)

print(preds)