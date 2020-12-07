
# Data science methodologies

Author: Michele Usuelli, Principal Data Scientist, Microsoft

Data-related projects involve some degree of analytics. However, the solution does not necessarily need any machine learning. If this situation sounds familiar, this article could help you define the approach and to communicate your choice to a non-technical audience.

In my personal experience, designing new projects, I have been asked several time to explain the advantages of using machine learning. On the other hand, sometimes there was a request for an "artificial intelligence" or "machine learning" solution when it was unnecessary or even unfeasible. Previously, I simply answered the questions and demistified that to the best of my knowledge. This approach could work, although the approach is solution-focused in the sense that it starts from a popular solution and looks for the problem to solve.

Instead, The key is to have a problem-focus mind set, which implies to have a problem to solve in mind and to keep the options open on the approach. A common pitfall is to follow commercial stakeholders fascinated by the hype of buzzwords such as "artificial intelligence", "machine learning", "data science". Solving their real problem is more effective, especially to have a long trustworthy relationship.

With that in mind, when do we need machine learning? How can we explain it in simple terms?

No matter how well you know your stakeholder, there will always be a gap in the perception of this subject. Still, you can try to mitigate any risks associated with this gap via getting a better understanding of each other's mind. First, you could approach your stakeholder with open questions on the meaning and implications of machine learning and any related topics that you consider relevant.

To choose and explain the approach, I defined a framework and adopted it on several projects at Microsoft. After having acquired some degree of empathy with my audience, I leveraged my framework to shape the messages into simple explanations.

To illustrate this example, let's consider a sales forecasting problem. The objective is to forecast the sales of an item, to keep the example simple.


## Key questions to understand the problem

The assumption is that the problem is analytical in the sense that the solution relies on some information captured into some data. If this sounds too vague, we can structure the input to the solution into two key areas

- **subject-matter expertise**: any human knowledge that can help solving the problem. More important than the knowledge per se, the key question is who are the Subject-Matter Experts (SME) who can provide the required information, and in what part of the solution process are they capable of providing thei input. Examples of inputs is the knowledge of what promotions affect the sales, and the seasonality.
- **live data**: any information that can help provide the answers to solve the problem. Examples of live data are the most recent sales volume and the time of the day and year.
- **historical data**: any information that can help the data scientist understand how to solve the problem. An example is the history of sales and promotions of the last 10 years.

Out of this input, to define the approach, I defined two key concepts

- **data complexity**: how hard is it to analyze the data? Key factors that make the data more complex are the size and complexity in the structure. For example, how many years' worth of history do we have, what is the granularity, what is the complexity of promotion data? A factor that makes the data more simple is the errors in the sense that if the data cannot be trusted there is no point in applying any advanced technique. For example, are there any gaps in the data?
- **domain complexity**: how hard is it to understand what is happening just looking at the data? For example, do we alredy know what promotions are the most impactful and how they will impact the sales?


## Type of solutions

What are the options to solve an analytical problem? There are several options and, to create clarity, I summarized them into three approaches.

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
