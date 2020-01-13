
# Data science methodologies

Author: Michele Usuelli, Principal Data Scientist, Microsoft

Working on data science projects, do you know when you need a machine learning solution? How do you explain your choice to a non-technical audience?

As a data scientist, designing new projects, I often explained the advantages of using machine learning. On the other hand, sometimes there was a request for an "artificial intelligence" or "machine learning" solution when it was unnecessary or even unfeasible.

If you encountered these situations, this article is probably for you. To understand it, you just need some familiarity with basic data science projects.

To start, what is an analytical problem? Data science is broad and is usually based on

- subject-matter expertise, driven by people with some domain knowledge
- historical data, capturing what happened in the past

To choose and explain the approach, I defined a framework and adopted it on several projects at Microsoft. This article describes this framework to choose the approach.


## Classify the approaches

When machine learning is not the best option, what are the alternatives?

 I usually categorize the approaches into three categories

- rule-based: define and apply some rules, not requiring any automated analysis of historical data. Examples are  if-else logic
- statistical: define the logic, then utilize the data to extract related information. An example is a historical average
- machine learning: starting from pre-processed historical data, utilize machine learning techniques to automatically define how to use them. Examples are tree-based algorithms, regressions, deep learning

Please note that each methodology utilizes both data and domain expertise. The difference is the way of utilizing the historical data.



## Identify the most suited approach

To easily identify and explain the most appropriate approach, there are two key aspects:

- data complexity: how large and/or complex is the related data
- domain complexity: how much domain knowledge is available to interpret the data

The following chart summarises the best technique to utilize in each situation. Please be aware that the chart is over-simplified.

![approaches](https://github.com/micheleusuelli/micheleusuelli.github.io/tree/master/articles-html/dsapproaches/approaches.PNG)

![alt text](https://raw.githubusercontent.com/micheleusuelli/micheleusuelli.github.io/master/articles-html/dsapproaches/approaches.PNG "Logo Title Text 1")


Statistical and machine learning approaches are based on data. Therefore, if there is little to no data, the only feasible approaches are rule-based. Also, if the data is very simple to interpret, it is possible to look into it and define rules to apply, without the need of any analysis techniques.

As the data grows, if the domain complexity and knowledge is sufficient to interpret the data, statistical techniques are usually sufficient.

On the other hand, if the data is so large and complex that it is hard to define how to use it, machine learning techniques automatically make the most out of the data. 

Still, machine learning models are driven by subject-matter expertise. Then, what is the difference between statistical and machine learning techniques? If the distinction still sounds a bit fuzzy, you can think of machine learning as a way to apply advanced statistical techniques that would be inapplicable otherwise.


## When to use this framework

This framework is high-level and simplified. Therefore, it is useful to explain the concepts in a simple and direct way to the project stakeholders. Specifically, I utilised this approach in three areas.

The first area is to scope a new project. The objectives can be defined on the base of the approach. If there is not enough information, the approach assessment is part of the project objectives.

Having defined the objectives, the second area is the definition of the scope boundaries using the RAID (Risks, Assumptions, Issues, Dependencies) framework. Some examples are

- Rule-based: dependency on having the rules defined by subject-matter; dependency on the data to apply the rules on; risk of making the wrong choice as it is not data-driven
- Statistical: dependency on having statistically significant historical data; risk of not capturing complex patterns
- Machine learning: dependency on having historical data; risk of overfitting; risk of high computational time

The last area is about budgetary and timeline estimates. Depending on the category of techniques, the key aspects affecting the budget and timeline are different. Also, the required skill set is different.


## When not to use this framework

The framework described in this article is well-suited for high-level conversations. However, being overly simplistic, it should be utilized carefully while diving into the technicalities. 

First, the approach is usually hybrid. For example, a rule-based approach applied to the output of a machine learning technique, or a statistical technique to define the features for a machine learning model.

Most importantly, there are other key aspects besides data and subject-matter expertise. Examples are
- if a statistical solution is performing poorly due to data issues, a rule-based approach might be better suited
- if a statistical solution is incapable of capturing the whole data complexity, a machine learning approach might work
- time-series techniques might be classified as "statistical" or "machine learning", depending on the perspective

In summary, the reality is more complicated, so the framework should be used as a starting point.

## Conclusions

In summary, this explanatory framework is good for as long as the topics of conversation are high-level. For the project delivery, the framework should be adapted to include other key aspects.

If you want to share some feedback or exchange ideas, please reach out to me.
