
# Agile delivery of data science projects

Author: Michele Usuelli

## Objectives

Delivering a data science project, common challenges are
- **confusion**: data science experimentation disconnected from real-world business value
- **lack of quick results**: the experimentation can be slow and not lead to any short-term results, resulting in a lack of stakeholder engagement
- **lack of quality**: the solution doesn't meets some quality standards, especially from a computer science perspective

If you relate to either of these challenges, in this article I am sharing some lessons learned from a few projects I have been working on.

The objectives of the delivery methodology are
- **clarity**: map high-level business requirements with low-level technical capabilities
- **velocity**: deliver the project quickly and in small increments
- **quality**: ensure that the product meets the quality standards

The next sections describe a solution to achieve these objectives.



## Personas and delivery methodology

Working on a data science project, the starting point is to define the personas involved.

To simplify, there are three key actors
- **data scientist**: conduct analytical experiments
- **data engineer**: turn the data science experimentation into a tool
- **solution architect**: design the technical infrastructure

Besides, there are other roles such as
- **product owner**: prioritise work per business value
- **subject-matter experts**: provide data and input to data scientists
- **scrum master**: facilitate the delivery

The delivery process is based on the [Microsoft TDSP](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/overview) (Team Data Science Process).

![TDSP](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/media/overview/tdsp-lifecycle2.png)


## Project set-up

To set-up the project, there are usually three phases
- **Business discovery**: drive a business outcome, usually triggering an action
- **Analytical discovery**: define the data required to achieve the goal
- **Technical discovery**: define the software required to achieve the goal

The outcome of the project set-up is
- A document describing the vision and objecties
- An initial list of data science activity together with an assessment of the complexity

This article focuses on the delivery of each data science activity.


## Project delivery

The agile project delivery consists in user stories which are pieces of work to be delivered during a 2-3 weeks' sprint. The key of the user story is to define
- **persona**: who is getting benefits
- **value**: what is the benefit
- **outcome**: success criteria to consider the user story delivered

Specifically, there are usually three key categories user stories related to data science work
- **data wrangling**: collect the data required. User: data scientist. Value: able to utilise the data. Artifact: dataset ready to be used.
- **exploratory data analysis**: analyse the data to understand how to use it. User: data scientist. Value: clarity about what to do with the data. Artifact: report about analysis outcome and choices.
- **data modelling**: build a machine learning model. User: data engineer. Value: have a machine model to be deployed as a tool. Outcome: Python or R code with the predictive model.

Ultimately, the tool is automatically running the machine learning model and advising the end user about an action to take.

To ensure consistency and avoid communication gaps, a solution is to define a quality checklist for each type of user stories.

To speed-up the delivery process, it is also possible to define how the delivery team works together on each user story and what are the key milestones.

The delivery is modular in the sense that each user story is small enough to be completed within 2-3 weeks. Also, each user story released a full-fledged piece of work with all the required attributes.



## Conclusions

This delivery methodology enabled
- **clarity**: each piece of work has a target persona and value
- **velocity**: each piece of work gets delivered in 2-3 weeks
- **quality**: each piece of work follows pre-defined quality standards

If you relate with this article, please think about how it can apply to your day-to-day job. If you have any feedback or suggestions, please reach out to me.

