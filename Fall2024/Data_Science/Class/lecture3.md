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

### Logistic Regression 
Predicts whether something is true or false instead of something continuous like size. For example, is Obese. This can only be a true or a false value. Therefore we can use something like the y value to determine this. 0: Y being a false state and 1: Y being a true state. Logistic regression sets an S shape from 0 to 1, which will tell us the probability of a statement being true or false, based on the X axis.

#### Sigmoid Function

$$
g(z) = \frac {1}{1+ e ^ {(-z)}}
$$

#### Hypothesis
$$
h_ \theta (x) = \frac {1} {1 + e^{(- \theta ^ Y x)}}
$$

#### Cost Function

$$
Q = \sum^n_{i=1} (Y_i - (mX_i + b)) ^ 2
$$


<br>
### Train / Test Split

We can use a portion of our data set to test our training results, a common amount used is 80 / 20. Meaning that the model is trained on 80% of the data and tested on the remaining 20%.

**Cross Validation**: using multiple data splits to ensure that the data is correctly being trained. We normally do 10 differing splits.

### Classification

[Bayes Rule](https://en.wikipedia.org/wiki/Bayes'_theorem) gives us a mathematical rule for inverting conditional probabilities which allows us to find of a cause giving its effect. 

<blockquote>
 For example, if the risk of developing health problems is known to increase with age, Bayes' theorem allows the risk to an individual of a known age to be assessed more accurately by conditioning it relative to their age, rather than assuming that the individual is typical of the population as a whole. 
</blockquote>

One Goal: $P(Y | X)$ 
- $P(isEmailSpam | wordsInMessage)$
- $P(articleClicked|title, font, photo)$

$P(C|x_1, x_2, x_3, ...)$
$P(x_n|C)P(C)$

Assume features are independent. 

### Linear, Logistic Regression
**Newtons** method is much faster than gradient descent, however it is impacted by the dimensional and the code bottlenecks caused by these. If our tasks have less than four features it is a good algorithm to use, however if it has more we should use gradient descent or some other method. 

If we want to solve a problem such as if a person has cancer we can use logistic regression. 

### Linear Regression

$$
Y = f(X) + \epsilon
$$

**y** = outcome 
**f** = relationship
**X** = covariate
$\epsilon$ = random noise

This relationship is unlike the slop and intercept relationship, which is deterministic. This relationship is *stochastic relationship*, random. This is understood to be stochastic because it has a $\epsilon$. 

In simple linear regression we have an intercept coefficient and a non intercept coefficient. However with **multiple linear regression** we can have multiple non-intercept covariant.

#### Simple Linear Regression

$$
Y = \beta _0 + \beta _ 1 X + \epsilon _i
$$
#### Multiple Linear Regression

$$
Y = \beta_0 + \sum^p_{k=1} \beta X_k + \epsilon
$$

The graph will be expected to start at $\beta _0$, and vary around it based on the variance in the noise. We can say that $\beta _0$ will vary based on the outcome when the covariate is 0. The next point will then be $\beta _1$ and will be at the y value $\beta _0 + \beta _1 + \epsilon$. Therefore $\beta _1$ is the change in the average outcome associated with a increase in the covariate.

When we shift from a having one covariant to multiple covariant the interpretations mostly remain the same. To isolate a single coefficient we need to have the intercept and the other covariant cancel one another out. However to do this we need to ensure that they are constant. This coefficient is the average change in the outcome, holding the other covariant constant.

The non intercept coefficients are what capture the relationship between X and Y. 

### K Nearest Neighbors
- Simplest ML algorithm
- No assumptions about the form of the classification model
- All work is done at classification time
- Works with tiny amounts of training data

### Deep Learning
- Neural Nets have been around since 80s!
- A standard multiple layer perception theoretically is capable of approximating any function




