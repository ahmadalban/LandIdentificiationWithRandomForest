# LandIdentificiationWithRandomForest
Identification garlic field in Sembalun Indonesia from satellite image Europe Space Agency, using Python, RStudio, SNAP, Qgis

1. download Sembalun map Citra Sentinel-1A from ESA in https://scihub.copernicus.eu/ from 4 diffrent date 13 Juli 2019, 25 Juli 2019, 10 November 2019, 22 November 2019

2. Preprocess the data in SNAP

- Sentinel-1A preprocess using graph builder
<img src="https://user-images.githubusercontent.com/39585151/129009562-d18e6f74-1fb4-49f2-ad01-79af129e3613.png" width="600" height="300">


- Subseting in Sembalun area using graph builder

<img src="https://user-images.githubusercontent.com/39585151/129010175-5db638a2-56f1-457b-93f3-4cf4a77db4e9.png" width="600" height="300">

- Result of preprocess with Qgis

<img src="https://user-images.githubusercontent.com/39585151/129009992-ce4502a6-2ea6-4eb2-bdfb-fa4b495abaaa.png" width="300" height="300">

3. Pin the garlic field in map to definite the garlic (8400 pin) 10% of all data 

<img src="https://user-images.githubusercontent.com/39585151/129010717-1ff32ca1-5a4a-4cd8-9d78-8a3013a89b73.png" width="300" height="300">

![image](https://user-images.githubusercontent.com/39585151/129010854-9e72858c-3cab-4985-83a7-c71775070226.png)


4. Make 2 dataset with excel

- Dataset A = 13 Juli 2019 (4200 pin), 10 November 2019 (4200 pin)

- Dataset B = 25 Juli 2019 (4200 pin), 22 November 2019 (4200 pin)

5. Make 3 skenario with Rstudio

- Skenario 1 = VV-VH

- Skenario 2 = VV, VH, VV-VH

- Skenario 3 = VV, VH, (VV-VH), (VV/VH), (VV+VH)/2

6. Classification with Python, in this process:

- Read file using pd.read_csv
- factorize garlic and non garlic using pd.factorize
- Divide train data and test data (9:1) using train_test_split
- Using validation curve to get good range parameter from sklearn.model_selection
- Do hyperparameter tuning using grid search
- Implement the random forest
- Evaluate the model with 10 Fold Cross Validation

7. Result from precision, recall, F1 Score, ROC-AUC, Accuracy, Kappa in every scenario

![image](https://user-images.githubusercontent.com/39585151/129013383-ea72454d-2130-40df-a96c-10c84f410696.png)

8. Implement the model in whole data with Python

10. Visualize garlic and non garlic with Qgis

![image](https://user-images.githubusercontent.com/39585151/129013590-ed456f5e-fc50-42e3-8b12-31f2c4c639c4.png)

![image](https://user-images.githubusercontent.com/39585151/129013617-2664f79a-1c5a-49ba-ad92-18b201ef8e50.png)

Black means garlic and green means non garlic
