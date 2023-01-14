---
layout: default
title: My Page
---

## Analytical discovery

When you make data science decision, how do you communicate it to your stakeholders? How do you document it?

In data science projects, there is sometimes a disconnection between the experimentation work and the benefits, especially in fast-paced agile projects. If you work as a data scientist or in a related role, you have probably been in this situation. 

In this article I will show you a solution that worked for me, during my projects at Microsoft. I defined a framework called "analytical discovery" and in this article I will tell you a bit more about my story. The framework aims to help other data scientists structuring their work.

In the context of the agile delivery methodology, it can be used to define the "analytical discovery" user stories. In this way, there is a time-boxed analytical experimentation that would otherwise carry on for a long time.

The objective of analytical discovery is to define and communicate analytical choices before building a new version of the predictive models.


## Activity definition

To start an analytical discovery activity, you need 

- an analytical objective such as a target to forecast
- the related data, such as the history of the target and of the predictive information, ready to be used
- a list of target choices such as the level of granularity, the predictive information, the category of machine learning techniques

The target outcome is
- a list of choices together with a data-driven explanation
- the list of outstanding aspects to assess
- visibility on dependencies, assumptions, risks

We have the requirements and target outcomes. To write a user story, we could use a description such as "As a stakeholder, I need to know what decisions that data scientist made so that I can trust the solution" or "As a data scientist, I need a set of decisions so that I can build my predictive models".


## Delivery process

Now that we have an objective, let's see how we can get there. Although The process to deliver a user story is personal, I hope that this list of high-level steps helps shaping the work.

To deliver efficiently, the activities can be divided into three groups

- Before data analysis
- Data analysis
- After data analysis

To communicate efficiently, ideally the activities should be completed in this order. Then, the following analytical discovery activity will follow the same process again.


## Conclusions

As an outcome, the data scientist can justify the analytical choices to the stakeholders and start developing the predictive models. The process could be used as a starting point to smooth out the delivery.





