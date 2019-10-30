

# Agile delivery of data science projects

Author: Michele Usuelli, Principal Data Scientist, Microsoft

## Objectives

Delivering a data science project, common challenges are
- **confusion**: data science experimentation in isolation with unclear business value
- **lack of quick results**: slow progress due to the lack of direction
- **lack of quality**: inconsistency in the technical quality

If you relate to either of these challenges, in this article you will find some lessons learned from my projects.

The objectives of the delivery methodology are
- **clarity**: map high-level business requirements with low-level technical capabilities
- **velocity**: deliver the project quickly and in small increments, heading towards a consistent goal
- **quality**: ensure that the product meets the quality standards

The next sections describe a solution to achieve these objectives.



## Personas

Working on a data science project, the starting point is to define the personas involved.

The key persona affected by the data science project are
- **end user**: take an action that ultimately drives the value
- **product owner**: prioritise work as per the business value
- **subject-matter experts**: provide data and input to data scientists

In the deliver team, the three key technical roles are
- **data scientist**: conduct analytical experiments
- **data engineer**: turn the data science experimentation into a tool
- **solution architect**: design the broader technical infrastructure


## Project set-up

To set-up the project, there are usually three phases
- **Business discovery**: drive a business outcome, usually triggering an action
- **Analytical discovery**: define the data required to achieve the goal
- **Technical discovery**: define the software required to achieve the goal

The outcome of the project set-up is
- A document describing the vision and objecties
- An initial list of data science activity together with an assessment of the complexity


## Project delivery

After the project is set, the delivery process can be based based on the [Microsoft TDSP](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/overview) (Team Data Science Process) or on similar methodologies.

![TDSP](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/media/overview/tdsp-lifecycle2.png)

The agile project delivery consists in user stories which are pieces of work to be delivered during a 2-3 weeks' sprint. The key of the user story is to define
- **persona**: who is getting benefits
- **value**: what is the benefit
- **outcome**: success criteria to consider the user story delivered

Specifically, there are usually three key categories user stories related to data science work
- **data wrangling**: collect the data required. User: data scientist. Value: able to utilise the data. Outcome: dataset ready to be used.
- **exploratory data analysis**: analyse the data to understand how to use it. User: data scientist. Value: clarity about what to do with the data. Outcome: report about analysis outcome and choices.
- **data modelling**: build a machine learning model. User: data engineer. Value: have a machine model to be deployed as a tool. Outcome: code producting and utilising the predictive model.

Ultimately, the tool automatically runs the machine learning model and advising the end user about the action to take.

To facilitate the delivery, it helps to define
- a technical quality checklist for each type of user story, to ensure consistency
- actors and a detail delivery process for each type of user story, to speed-up the delivery



## Conclusions

This delivery methodology enabled
- **clarity**: each piece of work has a target persona and value
- **velocity**: each piece of work gets delivered in 2-3 weeks
- **quality**: each piece of work complies with pre-defined quality standards

If you relate with this article, please think about how it can apply to your day-to-day job. If you have any feedback or suggestions, please reach out to me.

