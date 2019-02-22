
# Can a machine learning product be trusted?

Author: Michele Usuelli, Lead Data Scientist, Microsoft Enterprise Services

Machine learning products are trendy. When can we trust them?

Given that the producs recommend to perform an action, trust is crucial. Why would we trust the advices of the machine otherwise? 

This article focuses on predictive models although the same principles are true for other categories of techniques.

Example of use-cases handled by predictive models are

- *Predictive maintenance*: forecast the enginer breakdown of a machine to proactively fix the malfunctioning
- *Credit scoring*: decide which customers are trustworthy enough to receive a loan so that the bank can be covered by a default risk
- *Sales forecast*: predict the sales volume to optimize the inventory

This article focuses on the following aspects

- Explainability: transparency about the logic utilized by the machine leraning techniques
- Interpretability: capability of explaining the rationale behind the machine learning model
- Measurability: assessment of the performance and accuracy of the model
- Actionability: influence on the end use to perform a specific action

Each aspect is covered by the related section.


## Explainability




## Interpretability

In our example, the outcome of the predictive models

Predictive models can foresee the breakdown of an engine, the credit score of a customer or the sales volume of a new product. In either case, how do we know if we can trust the outcome of a model? Also, does it comply to rules and follow ethical principles? 

The starting point is the capability of explaining. Let's start with simple example. We predict that an engine will break down because it's running slower than usual. A bank customer doesn't receive a loan because of a high debit on the credit card. The sales volume will raise because of a commercial promotion. Machine learning often utilizes a wider set of information and utilizes a more advanced logic. Still, we're aiming to explain the rationale behind its outcome.

The starting point of machine learning models are data sources, so we can start tracking all the information being used. In this way, we can easily spot ethical issues and legislation incompliances. The next step is to identify which specific information is being used by the model and what is being discarded. Ultimately, applying the predictive model on the new data, the information being used is a specific subset. 

Depending on the technique, the methodology might be different. It's usually straightforward to explain tree-based models such as the decision forest, as shown by my article. Likewise, linear models can be easily explained. However, some techniques are too  complex to be explained, e.g. neural networks. In this case, even if the model is unexplainable, there are workarounds such as LIME and SHAP, showing what would have changed if the data differred.



## Measurability

Let's assume that a predictive model is already explainable. The thought process to define its outcome is fully transparent and we can track all the information being used. What will happen applying the model in a real-life situation? Will it be able to foresee future events accurately?

If we predict an engine breakdown, we want to know how many breakdowns we can predict and the number of false positives. Same is true for the credit risk. If we are predicting the sales volume, the metric would be the average error, whichever the "average" is defined.

Being able to assess the reliability and accuracy of the outcome of a model is a key. Clearly, it's impossible to know  how a model will perform in the future. However, it's possible to know how the same methodology would have performed in the past.

Predicting something that is already known is trivial. Therefore, a common pitfall it to "cheat", either voluntarily or unvoluntarily. To prevent that, the key is to replicate the real life application. Some important aspects are to

	- separate training and test set entirely
	- take into account the time: in most cases, we are predicting and event in time. A common pitfall is to predict the past utilizing future information

In addition, the outcome of the testing should reflect the broader context. Key aspects are

	- business focus: in addition to measuring the accuracy, are we also translating it into measurable business KPIs?
	- benchmark: if we weren't utilizing a predictive model, by how much would the forecast be worse?

My colleague Ajay published a series of two articles, showing how to measure the performance of classification and regression models.




## Actionability

Last but not least, even if we can explain and measure the outcome of a machine learning product, to have a tangible impact it has to trigger an action.

In the predictive maintenance scenario, the action is to either send an engineer to check the machine or to provide confidence that the machine doesn't need any maintenance. In the loan use-case, the action is to either approve or reject the load. Predicting sales helps optimizing the production volume.

Prior to start experimenting and building the product, having in mind the end action helps define the direction of the project. After having delivered the product, keeping track of the actions and feedback allows to improve the product further.

Actionability applies to both interpretability and measurability:
	- Interpretability: knowing the root causes allows to define an action to fix them. Some root causes are actionable and some others are not. Knowing what can be changed is an enabler to define an action. For instance, in the predictive maintenance scenario, the action is to fix the root cause leading to a failure. If the root cause is having the last maintenance too far back in time, the solution is to send an engineer to maintain the machine
	- Measurability: the estimated error is as important as the prediction. Knowing the actions that can be taken enables the definition of an accuracy metric accordingly. In the sales forecast use-case, the accuracy metric might be related to the way the forecasting will be consumed.

Actionability is the starting point and the end point of most of the data science projects.


## Conclusions

This article covered interpretability, measurability and actionability, key aspects of each data science project. One remark is about other important topics, such as ethics, privacy and compliance, that will be enabled by these.






