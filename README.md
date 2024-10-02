
**Descripción del Proyecto**

En este proyecto se predijo el precio del maíz utilizando diversas técnicas de machine learning, incluyendo redes neuronales recurrentes, redes neuronales densas y XGBoost.

El proceso se llevó a cabo en las siguientes etapas:

1. Descomposición de la serie de tiempo: Inicialmente, se descompuso la serie temporal mediante dos métodos:

 * Empirical Mode Decomposition (EMD).
 * Singular Spectrum Analysis (SSA).

2. Entrenamiento de los modelos: Cada uno de los modos resultantes de la descomposición fue utilizado para entrenar los siguientes modelos:

 * Redes neuronales recurrentes (RNN).
 * Redes neuronales densas (DNN).
 * XGBoost.

3. Generación de modelos individuales: Las predicciones de cada modo fueron sumadas para formar un modelo individual.

4. Optimización mediante ensamblaje (ensemble): Finalmente, se utilizó un método de optimización para mejorar el rendimiento del modelo mediante un ensemble de los modelos que obtuvieron los mejores resultados.

**Project Description** 

In this project, we predicted the price of corn using various machine learning techniques, including Recurrent Neural Networks (RNN), Dense Neural Networks (DNN), and XGBoost.

The process was conducted in the following stages:

1. Time Series Decomposition: Initially, the time series was decomposed using two methods:

 * Empirical Mode Decomposition (EMD).
 * Singular Spectrum Analysis (SSA).

2. Model Training: Each mode resulting from the decomposition was used to train the following models:

 * Recurrent Neural Networks (RNN).
 * Dense Neural Networks (DNN).
 * XGBoost.
 * Generation of Individual Models: The predictions from each mode were summed to create an individual model.

4. Optimization with Ensemble: Finally, an optimization method was applied to improve the model by creating an ensemble of the models that provided the best performance.