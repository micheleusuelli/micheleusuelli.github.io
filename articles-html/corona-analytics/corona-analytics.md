Due to the Corona virus outbreak, hospitals are facing shortages in staff and equipment. At Microsoft, I had the luxury to design and deliver several data science projects, and to collect lessons learned from them. In the hope that it can help in any ways, I would like to share my thoughts on facing a part of the problem. Since I lack of a medical background, I can only cover the analytical aspects. Also, I will make some assumptions to simplify the proposed solution. The target audience are people with some analytics background. No deep data science background is required.


## Solution

Oversimplifying, to avoid being overwhelmed, the hospital should allocate enough staff and equipment to treat the patients in intensive care. However, due to the magnitude of the outbreak, the resources are limited. What is the hospital could have an idea of the number of patients in the upcoming days?

Since I lack of a medical background, I prefer to avoid advising any concrete actions. Instead, I would like to focus on how to generate the information that could be used to defined the actions. In summary, the goal is to provide information about the future number of patients requiring hospitalization.

The number of patients depends on estimating three key aspects:

	- Infected people: total number of people infected.
	- Intensive care rate: percentage of patients requiring intensive care.
	- Time frame: since the day of infection, start date and number of days of intensive care.

Each section covers each of these aspects in more detail.


### Infected people

Depending on the geographical location of the infected people, they are allocated to the closest hospital or to another hospital in the neighbourhood if the closest is full. Therefore, the number of infected people should be estimated by area. Also, the smaller the area, the more precise the information. On the other hand, the smaller the area, the harder it would be to predict it. Choosing the geography is a trade-off between the two aspects.

To estimate the future number of people infected, what information could be useful? Starting small, with simple information such as "lockdown" or "non-lockdown" and assumed exponential growth, is the key. Since the reality is more complex, utilizing more information will likely help. If the information is too complex to be modelled via a simulation, statistical and machine learning techniques could handle more data.


### Intensive care rate

The percentage of infected people requiring intensive care could be as simple as an average by geography. However, the data should be handled properly. For example, if it takes between 5 and 10 days to go into intensive care since the contagion date, is it impossible to know if people who got infected less than 10 days ago will go to intensive care. Therefore, the intensive care rate should be based solely on people infected at least 10 days ago. If not possible, it could be estimated on the base of percentage of people infected less than 10 days ago, or something more advanced such as a statistical distribution.

A more accurate rate might consider the average age of patients  and other useful information instead of geography. Probably, a statistical model based on averages is sufficient, but if the information considers more than 2 or 3 aspects a machine learning technique might be more accurate.


### Time frame

The time frame consists in the range of days requiring intensive care. There are two components

	- start date: it could be initially assumed to be the average and later fine-tuned via statistics and machine learning. Similarly to the intensive care rate, it should be based on patients that got infected at least 10 days ago
	- number of days: if most of the patients got infected recently, most of them haven't been dismissed from the hospital yet. Therefore, the distribution of the number of days could be purely based on the medical knowledge


## Conclusions

In the hope that my lessons learned could be of any help fighting the infection, I would be more than happy to share more. Please reach out to me on LinkedIn.
