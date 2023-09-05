# -*- coding: utf-8 -*-
"""
Created on Tue Jul 12 15:39:57 2022

@author: to139
"""
import sklearn
from sklearn import metrics
import numpy as np
from sklearn.model_selection import LeaveOneOut,GridSearchCV
from sklearn.svm import SVC
from scipy.stats import pearsonr
import matplotlib.pyplot as plt
import seaborn as sns
plt.style.use('ggplot')
import scipy.io as io
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA
import pandas as pd


data1 = io.loadmat('E:/IVA_results/scripts/svr/tc_features_GIG_IVA/ALL_GIG_features.mat');
data2 = io.loadmat('E:/IVA_results/scripts/svr/tc_features_GIG_IVA/ALL_GIG_features.mat');
X1_1 = data1['ALL_GIG_features']
X2_1 = data2['ALL_GIG_features']
x1 = np.delete(X1_1,np.s_[100:190],0)
x2 = np.delete(X2_1,np.s_[100:190],0)
# x1 = np.delete(X1_1,np.s_[190:243],0)
# x2 = np.delete(X2_1,np.s_[190:243],0)
# index = [l for l in range(len(x1.T))]
# np.random.shuffle(index)
# x1 = x1[:,index]
flag = []
p=[]
t=[]
accurancy=[]
for i in np.arange(0.1,1,0.05):
    Sc = StandardScaler()
    x1 = Sc.fit_transform(x1,(0,1))
    # pc = PCA(n_components = i)
    # X = pc.fit_transform(x1) 
    x2 = Sc.fit_transform(x2,(0,1))
    X = np.concatenate([x1,x2],axis=1)
    pc = PCA(n_components = i)
    X = pc.fit_transform(X)
    np.random.seed(1)
    X = X + np.random.normal(loc=0, scale=1, size=X.shape)
    y = np.concatenate([np.ones((100,1)),2*(np.ones((53,1)))]).ravel();
    loo = LeaveOneOut()
    loo.get_n_splits(X)
    pred=[]
    target=[]
    count_right_label = 0
    count = 0 
    pred_y_d=[]
    for train_index, test_index in loo.split(X):
        print(train_index, test_index)
        X_train, X_test = X[train_index], X[test_index]
        y_train, y_test = y[train_index], y[test_index]
        model = SVC(class_weight='balanced')
        model.fit(X_train, y_train)
        
        expected_y  = y_test.reshape(1,)
        predicted_y = model.predict(X_test)
        predicted_y_d = model.decision_function(X_test)
        if expected_y == predicted_y:
            count_right_label += 1
        count += 1
        print('The {}th cycle'.format(count))
        pred. append(predicted_y[0])
        target. append(expected_y[0])
        pred_y_d. append(predicted_y_d)
#kappa = cohen_kappa_score(pred,target,weights='quadratic')
    accurancy.append(count_right_label / len(y))
    flag.append(i)
    p.append(pred)
    t.append(target)

print('accuracy is：%.2f%%' % (max(accurancy) * 100))
print('vaule of pca is：%.2f' % (flag[accurancy.index(max(accurancy))]))
pred = p[accurancy.index(max(accurancy))]
target = t[accurancy.index(max(accurancy))]
from matplotlib import rcParams
from sklearn.metrics import confusion_matrix, ConfusionMatrixDisplay, classification_report

fpr, tpr, thresholds = metrics.roc_curve(target, pred_y_d, pos_label=2)
roc_auc = metrics.auc(fpr, tpr)  #auc为Roc曲线下的面积
maxindex = (tpr - fpr).tolist().index(max(tpr - fpr))
print('auc area is：%.2f%%' % (roc_auc * 100))
confusion = confusion_matrix(target, pred)
print(classification_report(target, pred,target_names=["HC","MCI"],digits=2))
classes = ['HC','MCI']
confusion_matrix = confusion
proportion=[]
for i in confusion_matrix:
    for j in i:
        temp=j/(np.sum(i))
        proportion.append(temp)

pshow=[]
for i in proportion:
    pt="%.2f%%" % (i * 100)
    pshow.append(pt)
proportion=np.array(proportion).reshape(2,2)  # reshape(列的长度，行的长度)
pshow=np.array(pshow).reshape(2,2)
#print(pshow)
config = {
    "font.family":'Times New Roman',  # 设置字体类型
}
rcParams.update(config)
plt.imshow(proportion, interpolation='nearest', cmap=plt.cm.Blues)  #按照像素显示出矩阵
            # (改变颜色：'Greys', 'Purples', 'Blues', 'Greens', 'Oranges', 'Reds','YlOrBr', 'YlOrRd',
            # 'OrRd', 'PuRd', 'RdPu', 'BuPu','GnBu', 'PuBu', 'YlGnBu', 'PuBuGn', 'BuGn', 'YlGn')
plt.title('Confusion Matrix')
plt.colorbar()
tick_marks = np.arange(len(classes))
plt.xticks(tick_marks, classes,fontsize=12)
plt.yticks(tick_marks, classes,fontsize=12)
 
thresh = confusion_matrix.max() / 2.
iters = np.reshape([[[i,j] for j in range(2)] for i in range(2)],(confusion_matrix.size,2))
for i, j in iters:
    if(i==j):
        plt.text(j, i - 0.12, format(confusion_matrix[i, j]), va='center', ha='center', fontsize=12,color='white',weight=5)  # 显示对应的数字
        plt.text(j, i + 0.12, pshow[i, j], va='center', ha='center', fontsize=12,color='white')
    else:
        plt.text(j, i-0.12, format(confusion_matrix[i, j]),va='center',ha='center',fontsize=12)   #显示对应的数字
        plt.text(j, i+0.12, pshow[i, j], va='center', ha='center', fontsize=12)
 
plt.ylabel('True label',fontsize=16)
plt.xlabel('Predict label',fontsize=16)
plt.tight_layout()

plt.grid()
plt.show()
plt.plot(fpr, tpr, 'r',label='AUC = %0.2f'% roc_auc)
plt.plot([0,1],[0,1],color='black',linestyle='--')
plt.scatter(fpr[maxindex],tpr[maxindex],c='black',s=30)
plt.xlim([-0.05,1.05])
plt.ylim([-0.05,1.05])
plt.grid()
plt.legend(loc='lower right')
# plt.plot([0, 1], [0, 1], 'r--')
plt.xlabel('False Positive Rate') #横坐标是fpr
plt.ylabel('True Positive Rate')  #纵坐标是tpr
plt.title('ROC curve')
plt.show()


