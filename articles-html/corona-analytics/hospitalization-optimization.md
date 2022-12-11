
# Rapid prototyping a data-driven approach to handle pandemics


Author: Michele Usuelli, Principal Data Scientist at Microsoft

This article provides an example to rapidly test an idea to solve a well-known problem: facing a pandemic, hospitals likely face shortages in staff and equipment. How to be more effective in patient hospitalization? 

Looking back into the latest COVID pandemic, the world had a wonderfully-coordinated effort. Still, with all the lessons learned, how could we have handled it better?

The main challenge was time. Arguably, the last large-scale pandemic was the Spanish flu, roughly 100 years earlier. Since then, technology evolved considerably although there was a lack of similar uses, so perhaps it could have been adopted more widely. It's not the first nor the last time that the world will face similar challenges. How could rapidly adopt technology to solve similar problems?

A rapid approach could be base on [Agile delivery of data science projects](../dsscrum/dsscrum.md) and [How to deliver a data science project](https://blogs.msdn.microsoft.com/data_insights_global_practice/2018/09/04/1055/).


## Problem statement

For the sake of clarity and conciseness, the problem is oversimplified. To avoid being overwhelmed, the hospitals should allocate enough staff and equipment to treat patients in intensive care. Knowing the future number of patients, the hospital could have planned accordingly. The COVID outbreak was fast and there were different opinions on its evolution, so the challenge was the lack of predictability of patients. Also, the overall resources were insufficient for an outbreak of that scale, forcing the hospitals to make difficult prioritization choices. How could the hospitals have tuned their approach?


## Solution

The resources required depend on the number of patients and on the duration of their stay. Also, there are different types of treatments, for example wether they require intensive care. So, to simplify, we need to have an idea of the following on a daily bases:

- New infected people: total number of people infected.
- Intensive care rate: percentage of patients requiring intensive care.
- Duration: number of days of hospitalization and intensive care.

Each section covers an aspect in more detail.


### New infected people

Depending on the geographical location of the infected people, they are allocated to the closest hospital or to another hospital in the neighborhood if the closest is full. Therefore, the future number of infected people should be estimated by area. To define the areas, a couple of considerations

- The smaller the area, the easier it is to define concrete actions.
- The smaller the area, the harder it is to estimate the patients accurately due to the lack of data. 

Choosing the size of the areas is a trade-off between the two aspects.

To estimate the future number of people infected, what information could be useful? An initial approach could be based on mathematical models, perhaps based on whether the area was affected by a lockdown. Since there is probably more relevant information such as demography, habits and climate, an alternative could be to make use of it to forecast more accurately. I would propose this framework: [Data science approaches](../dsapproaches/dsapproaches.md).

To choose the most effective approach, there should be a metrics measuring the effectiveness, perhaps based on the use of the application rather than just statistical indices. This metrics can be estimated by testing the approach on the history via cross-validation.


### Intensive care rate

The percentage of infected people requiring intensive care could be as simple as an average by geography. However, the data should be handled properly. For example, if it takes between 5 and 10 days to go into intensive care since the contagion date, is it impossible to know if people who got infected less than 10 days ago will go to intensive care. Therefore, the intensive care rate should be based solely on people infected at least 10 days ago. If not possible, it could be estimated on the base of the percentage of people infected less than 10 days ago, or something more advanced such as a statistical distribution.

A more accurate rate might consider the average age of patients  and other useful information instead of geography. Probably, a statistical model based on averages is sufficient, but if the information considers more than 2 or 3 aspects a machine learning technique might be more accurate.


### Time frame

The time frame consists in the range of days requiring intensive care. There are two components

- Start date: it could be initially assumed to be the average and later fine-tuned via statistics and machine learning. Similarly to the intensive care rate, it should be based on patients that got infected at least 10 days ago.
- Number of days: if most of the patients got infected recently, most of them haven't been dismissed from the hospital yet. Therefore, the distribution of the number of days could be purely based on the medical knowledge.

In summary, the related data might not be available. Therefore, they could be based on a mix of assumptions and insights from the scarce available data.


## Conclusions

This article provided a possible approach to quickly prototype to adopt the technology. Besides, common sense would probably be the most appropriate, facing a similar emergency.

