
What is analytical discovery

How do you make data science decision? How do you communicate it to your stakeholders?

If you work as a data scientist or in a related role, you have probably been in this situation. Having been often in this situation at Microsoft, I defined a framework called "analytical discovery" and in this article I will tell you a bit more about my story. The framework aims to help other data scientists structuring their work.

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

To deliver efficiently, the activities can be divided into

	- Before data analysis
	- Data analysis
	- After data analysis


### Activities before data analysis

Before analysing the data

An example of process  to complete the activity is

	- definition of choices to make
	- data exploration to make the choices
	- presentation of choices and rationale


## Conclusions

As an outcome, the data scientist can justify the analytical choices to the stakeholders and start developing the predictive models. The process could be used as a starting point to smooth out the delivery.



notes

Analytical discovery process

Scoping 
	1. objective definition
	2. assumptions
	3. process
	4. analytical aspects definition
	5. dependencies: data sources, data attributes
	6. scope definition: dependencies, assumptions
	7. risk assessment

Delivering	
	1. Data exploration
	2. Draft code development
	3. Analytical aspects definition
	4. Rationale documentation
	5. Review with the rest of the team



