
# Agile delivery of data science projects

Author: Michele Usuelli, Principal Data Scientist, Microsoft

## Objectives

When delivering a data science project, some of the common challenges are:
- **lack of clear goals**: a lot of data science experimentation is done in isolation with unclear business value
- **lack of quick results**: progress is not often made in coordinated direction and does not produce results
- **lack of quality**: inconsistencies in the technical quality

If you relate to either of these challenges, this article is for you. It will highlight some lessons learned from my projects at Microsoft on how to tackle this problems.

This article shows a delivery methodology whose objectives are:
- **clarity**: map high-level business requirements to low-level technical capabilities
- **velocity**: deliver the project quickly and in small increments, heading towards a consistent goal
- **quality**: ensure that the product meets the quality standards

The next sections describe the different components of a proposed solution to these problems.



## Personas

Working on a data science project, the starting point is to define the personas involved.

(NOTE: I did some modifs to the paragraph bellow but I'm not really clear on this, needs rewritting)
The key personas are the individuals most affected by a data science project:
- **end user**: the stakeholder whose action that ultimately drives the value
- **product owner**: prioritise work as per the business value 
- **subject-matter experts**: provide data and input to data scientists

In the deliver team, the three key technical roles are:
- **data scientist**: conducts analytical experiments
- **data engineer**: turns the data science experimentation into a tool
- **solution architect**: designs the broader technical infrastructure


## Project set-up

(NOTE: I replaced Discovery by exploration because in my understanding exploration is a process whereas discovery isn't)
The project step can usual be divided into 3 phases:
- **Business exploration**: driving a business outcome, usually triggering an action
- **Analytical exploration**: defining the data required to achieve the goal
- **Technical exploration**: defining the software required to achieve the goal

The outcome of the project set-up is
- A document describing the vision and objecties
- An initial list of data science activities together with an assessment of their complexity


## Project delivery

After the project is set, the delivery process can be based on the [Microsoft TDSP](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/overview) (Team Data Science Process) or on similar methodologies.

![TDSP](https://docs.microsoft.com/en-us/azure/machine-learning/team-data-science-process/media/overview/tdsp-lifecycle2.png)

The TDSP is compatible with the agile delivery methodology.

The agile project delivery consists in user stories to be delivered during a 2-3 weeks' sprint. The key objective of the user stories is to define the:
- **persona**: who is getting benefits?
- **value**: what is the benefit?
- **outcome**: which criteria to consider when deciding if the activity is completed?

Specifically, there are usually three key categories user stories related to data science work
- **data wrangling**: collect the data required.   
  + Persona: data scientist.  
  + Value: having utilisable data.  (NOTE: the value and the outcome are the same really)
  + Outcome: dataset ready to be used.
- **exploratory data analysis**: analyse the data to understand how to use it.  
  + Persona: data scientist.  
  + Value: clarity about what to do with the data.  
  + Outcome: report about analysis outcome and choices. (NOTE: more detail)
- **data modelling**: build a machine learning model.  
  + Persona: data engineer. 
  + Value: have a machine model to be deployed as a tool.
  + Outcome: production level code utilising the predictive model.

Ultimately, the tool automatically runs the machine learning model and advising the end user about the action to take.

To facilitate the delivery, it is worth defining
- a technical quality checklist for each type of user story, to ensure consistency
- actors and a detail delivery process for each type of user story, to speed-up the delivery



## Conclusions

This delivery methodology enabled
- **clarity**: each piece of work has a target persona and value
- **velocity**: each piece of work gets delivered in 2-3 weeks
- **quality**: each piece of work complies with pre-defined quality standards

If you relate with this article, please think about how it can apply to your day-to-day job. If you have any feedback or suggestions, please reach out to me.

