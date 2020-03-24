
# Can the resources be optimized to hospitalize more patients?

Author: Michele Usuelli, Principal Data Scientist at Microsoft

Due to the Coronavirus outbreak, hospitals are facing shortages in staff and equipment. At Microsoft, I had the luxury to design and deliver several data science projects, and to collect lessons learned from them. In the hope that it can help in any ways, I would like to share my thoughts on facing a part of the problem. Since I lack of a medical background, I can only cover the analytical aspects. Also, I will make some assumptions to simplify the proposed solution. The target audience are people with some analytics background. No deep data science background is required.


## Solution

Oversimplifying, to avoid being overwhelmed, the hospitals should allocate enough staff and equipment to treat patients in intensive care. However, due to the magnitude of the outbreak, the resources are limited. What if the hospital could have an idea of the number of patients in the upcoming days?

The real problem is a shortage of resources and this solution will not solve it. However, it can help allocating the scarce resources more effectively across hospitals.

Since I lack of a medical background, I prefer to avoid advising any concrete actions. Instead, I would like to focus on how to generate the information that could be used to define the actions. In summary, the goal is to provide information about the future number of patients requiring hospitalization.

The number of patients depends on estimating three key aspects:

- Infected people: total number of people infected.
- Intensive care rate: percentage of patients requiring intensive care.
- Time frame: since the day of infection, start date and the number of days of intensive care.

Each section covers each of these aspects in more detail. Due to the urgency, I am proposing both a quick minimum viable product and a full-fledged solution, keeping in mind that some feedback from medical experts is crucial. To know more about the proposed approach, please see [Agile delivery of data science projects](../dsscrum/dsscrum.md) and [How to deliver a data science project](https://blogs.msdn.microsoft.com/data_insights_global_practice/2018/09/04/1055/).


### Infected people

Depending on the geographical location of the infected people, they are allocated to the closest hospital or to another hospital in the neighbourhood if the closest is full. Therefore, the future number of infected people should be estimated by area. To define the areas, a couple of considerations

- The smaller the area, the easier it is to define concrete actions.
- the smaller the area, the harder it is to estimate the patients accurately due to the lack of data. 

Choosing the size of the areas is a trade-off between the two aspects.

To estimate the future number of people infected, what information could be useful? To start small, an approach could be to use base information such as "lockdown" or "non-lockdown" and to assume a mathematical model such as exponential growth. Since the reality is more complex, utilizing more information will likely help. If the information is too complex to be modelled via a simulation, statistical and machine learning techniques could handle more data. To know more about the approach definition, please see my other article: [Data science approaches](../dsapproaches/dsapproaches.md).

Regardless of the approach, it is fundamental to assess the accuracy of the estimations. That can be some via a data science methodology called cross-validation. The methodology consists on using the data up till a few days ago to estimate the hospitalised patient in the last few days, and on assessing the accuracy of the estimate.


### Intensive care rate

The percentage of infected people requiring intensive care could be as simple as an average by geography. However, the data should be handled properly. For example, if it takes between 5 and 10 days to go into intensive care since the contagion date, is it impossible to know if people who got infected less than 10 days ago will go to intensive care. Therefore, the intensive care rate should be based solely on people infected at least 10 days ago. If not possible, it could be estimated on the base of the percentage of people infected less than 10 days ago, or something more advanced such as a statistical distribution.

A more accurate rate might consider the average age of patients  and other useful information instead of geography. Probably, a statistical model based on averages is sufficient, but if the information considers more than 2 or 3 aspects a machine learning technique might be more accurate.


### Time frame

The time frame consists in the range of days requiring intensive care. There are two components

- Start date: it could be initially assumed to be the average and later fine-tuned via statistics and machine learning. Similarly to the intensive care rate, it should be based on patients that got infected at least 10 days ago.
- Number of days: if most of the patients got infected recently, most of them haven't been dismissed from the hospital yet. Therefore, the distribution of the number of days could be purely based on the medical knowledge.

In summary, the related data might not be available. Therefore, they could be based on a mix of assumptions and insights from the scarce available data.


## Conclusions

In the hope that my lessons learned could be of any help fighting the infection, very happy to share more. If you have any feedback or would like to know more, please reach out to me on [LinkedIn](https://uk.linkedin.com/in/michele-usuelli-1b84b460).
