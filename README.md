# fMRI_intersubject_varability
This is based on the results of multiple ICA methods, which first perform component matching and then calculate inter-subject variability.
Specific steps: First, extract the SMs and TCs obtained after processing the three methods, and then use the greedy rule to match, the code is shown in the folder matching_Components;
Then the inter-subject variability was calculated, see Intersubject_Components folder.
Finally, features_SMs and features_TCs in Folder classification are used to calculate the features. Finally, SVC.py is used to classify the features.
