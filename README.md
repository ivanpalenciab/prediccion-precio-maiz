
se hizo la prediccion del precio del maiz utilizando diferentes tecnicas de machine learning como redes neuronales recurrentes, redes neuronales densas y XGBOOST.

en primer lugar se hizo una descompocision de la serie de tiempo utilizando el metodo emprical mode decompocition (EMD)

posteriormente se utilizo cada uno de los modos para entrenar los modelos antes mencionados. la predicciones de cada uno de estos modos se sumo para generar un modelo individual. 

posterior a esto se usara un metodo de optimizacion para mejorar el modelo al hacer un ensemble de los modelos que nos proporcionaron mejor rendimiento. 
