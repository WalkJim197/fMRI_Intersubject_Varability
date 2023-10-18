# fMRI_intersubject_varability
This is based on the results of multiple ICA methods, which first perform component matching and then calculate inter-subject variability.
Specific steps: First, extract the SMs and TCs obtained after processing the three methods, and then use the greedy rule to match, the code is shown in the folder matching_Components;
Then the inter-subject variability was calculated, see Intersubject_Components folder.
Finally, features_SMs and features_TCs in Folder classification are used to calculate the features. Finally, SVC.py is used to classify the features.
——————————
这是在基于多个ICA方法结果上，首先进行组件匹配，然后计算被试间变异性。 具体步骤：首先将三种方法处理后得到的SMs和TCs进行提取，然后利用贪婪规则去匹配，代码见matching_components文件夹； 然后计算被试间变异性，见intersubject_components文件夹； 最后利用文件夹classification里的features_SMs和features_TCs计算特征，最后用svc.py进行分类。
