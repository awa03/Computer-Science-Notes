# Web Search & Linear Regression

Web documents are just text documents, therefore we can always retrieve some data from this. 

For indexing we need to convert web pages into an index in order to match like terms that maybe relevant. Applying this to a search will further optimize its performance. Consider a graph $P$ if we want to search the graph for the term $P_x$ we can traverse from $P_1 ...$ following the matching path until $P_x$ is located. We will invert the index in order to find the most common term.

We must handle collections of documents not just one. 

****
## Index

- Must handle multiple documents
	- Split index into two parts (files : main memory, and hash table)
- Must minimize disk seeks & read (because they're slow)
- Lexicon
	- Hash table on disk (one read)
	- Main memory 
	- List of terms with links to these terms
	- The more we can fit in main memory the faster 
	- Order by matches for better searching
- Occurrence List
	- Simple Data Structure
	- On Disk (maybe fit on memory, but often not)
- Distributed File System

The issue with using a hash table is it may just end up becoming a linear search. 


****

## Machine Learning 

1. Data
2. Model
3. Goal / Task

If we have 2 classes (EX. True, False), then it is a binary classification model. To train a model we need to have data. 

Deep learning does not work any differently than most machine learning model. They may have more layers, however, they are still machine learning models. Humans learn in a similar way, we process information, then we learn to perform better in a certain task from this (*experience*). They must be trained or nothing will be learned. 

<blockquote>This is a pencil, this is not a pencil...</blockquote>

In other words both children and machine learning need some supervision. Supervision can be understood as feedback, not necessarily a physical entity. We must extract features from our dataset in order for the model to learn more efficiently.   

A dataset will contain information as well as a flag for us to identify what data is what. We have to create feature vectors to hold all the values for all of the features. We have to have a lot of features extracted in order to create a well trained model. Our training set needs to be large, just as a child will not instantly recognize a pencil if they are only seen it one, a model needs to be trained on a variety of data. 

### Regression

If our error value is 0 then we will have a perfectly linear line. Errors will be the distance between line and the point. We can fix some of these through adjusting the path of our linear line.  

$$
Q = \sum^i_{i=1}(Y_i - (mX_i + b)) ^ 2
$$

We can find the minimum value through taking the derivative of the function and setting it equal to 0. 

**Intercept at Minimum**
$$
\frac{\delta Q }{\delta m} = \sum^n_{i=0} -2(Y_i - mX_i - b) = 0
$$

**Slope At Minimum**
$$
\frac{\delta Q }{\delta m} = \sum^n_{i=0} -2X_i(Y_i - b - mX_i) = 0
$$

We need both to be 0 so our error is minimized. We need to find the optimal function in order to minimize the error values. 

**Example:**

$$
colesterol = m (eucalyptus) + b + m
$$

Gradient descent is one of the most popular methods, mathematical algorithm that finds the lowest values of a function by iteratively adjusting its parameters

Review the slides for more precise definitions.
<br>
<br>
### Train / Test Split

We can use a portion of our data set to test our training results, a common amount used is 80 / 20. Meaning that the model is trained on 80% of the data and tested on the remaining 20%.

**Cross Validation**: using multiple data splits to ensure that the data is correctly being trained. We normally do 10 differing splits.