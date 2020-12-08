
# Data-driven approaches: definition and communication

Author: Michele Usuelli, Principal Data Scientist, Microsoft

Facing a problem to solve, you are planning to use some data. For instance, you want to forecast the sales of 100s retail stores. What approach do you take? Do you need to use any Artificial Intelligence (AI)? Is an AI approach even feasible?

The problem came from some business stakeholders, looking for guidance to structure the solution. They might ask you to articulate the benefits of using AI, or more specifically machine learning techniques. How do you explain the advantage? Is an AI solution is the best fit?

If you have been in this situation, this article might be for you. 

Previously, I articulated the benefits trying to be as close as possible to a business audience. This approach helped demystify the topic of AI. However, explaining the benefits is reactive and solution-focused, and not necessarily related to the problem to solve. In this article, I am sharing a more effective way.

To really help your stakeholders, the closer you are to their mind, the easier. More specifically, the closer you are to the problem to solve, the better you can design the solution. This approach involves a **problem-focused mind set** which means to start with the problem to solve in mind, keep the options open for the solution. A common pitfall is to follow commercial stakeholders fascinated by the hype of buzzwords such as "artificial intelligence", "machine learning", "data science". Solving their real problem is more effective, especially to have a long trustworthy relationship.

With that in mind, what situations need machine learning? How can we explain it in simple terms?

No matter how well you know your stakeholders, there will always be a gap in the perception of this subject. Still, you can try to mitigate any risks associated with this gap via getting a better understanding of each other's mind. Before designing solution, you could approach your stakeholdesr with open questions on the meaning and implications of machine learning and any other relevant topics. That will ensure to have a shared language and understanding, at least to some extent.

To choose and explain the approach, I defined a framework and adopted it on several projects at Microsoft. After having acquired some degree of empathy with my audience, I leveraged my **framework to shape the messages into simple explanations**.

To illustrate this example, let's use the sales forecasting problem.


## Key questions to understand the problem

The problem is analytical in the sense that the data plays a major role. To solve this problem and similar ones, there are three inputs:

- **Subject-matter expertise**: any human knowledge that can help solve the problem. More important than the knowledge per se, the key question is who are the Subject-Matter Experts (SME) who can provide the required information, and in what part of the solution process are they capable of providing their input. Examples of inputs are the knowledge of what promotions affect the sales, and the seasonality.
- **Live data**: any information that can help provide the answers to solve the problem. Examples of live data are the most recent sales volume and the time of the day and year.
- **Historical data**: any information that can help the data scientist understand how to solve the problem. An example is the history of sales and promotions of the last 10 years.

Out of this input, to define the approach, I defined two key concepts

- **Data complexity**: how hard is it to analyze the data? Key factors that make the data more complex are the size and complexity in the structure. For example, how many years' worth of history do we have, what is the granularity, what is the complexity of promotion data? A factor that makes the data simpler is the errors in the sense that if the data cannot be trusted there is no point in applying any advanced technique. For example, are there any gaps in the data?
- **Domain complexity**: how hard is it to understand what is happening just looking at the data? For example, do we already know what promotions are the most impactful and how they will impact the sales?


## Type of solutions

What are the options to solve an analytical problem? There are several options and, to create clarity, I summarized them into three approaches:

- **Rule-based**: define and apply some rules based purely on live data. For example, "expect to double-up the sales volume with this promotion".
- **Statistical**: define the logic, then utilize the historical data to extract related information. For example, knowing that the sales seasonality is based on the weekday, calculate the average sales by day of the week, then use it to forecast future sales.
- **Machine learning**: starting from pre-processed historical data, utilize machine learning techniques to automatically define how to use them. For example, train a machine learning algorithm on the history of sales and promotions, then use it on the live data to forecast the sales.

Please note that each methodology utilizes both data and domain expertise. The difference is just in the way of utilizing the historical data.


## Identify the most suited approach

To identify the approach, the first question is about whether or not to use historical data. If there is little to no historical data, the only feasible approaches are rule-based. Also, if the historical data is very simple to understand, it is possible to look into it and define rules to apply to the live data. In this case, the approach would be **rule-based**.

The two other approaches are statistical and machine learning. The question is whether the domain knowledge is sufficient to extract the relevant information from the data. From example, let's assume that the only relevant factor affecting the sales is the day of the week. To forecast the sales for next Tuesday, a **statistical** approach is to compute the average sales volume on Tuesdays.

What happens if it is not clear what affects the sales volume? Let's suppose that there are 3 possible root causes: weekday, time of the year, promotions. Each root cause if captured by historical data. Having 10 years' worth of historical data, it would be hard to understand how to use the information just calculating base statistics. 

The distinction is that statistical approaches need a predefined analysis to apply on the historical data so that there is no need for any machine learning algorithms. That is possible when the subject-matter expertise is sufficient to interpret the historical data and it only needs to be accompanied by some statistics to be calculated with the data. To simplify, then there is enough knowledge to interpret a complex domain, a **statistical** approach is probably a good fit. Machine learning techniques can identify patters from the historical data in a way that is defined by the data scientists. Therefore, in this situation, the preferred approach would be **machine learning**. Still, machine learning models are driven by subject-matter expertise. Then, what is the difference between statistical and machine learning techniques? If the distinction still sounds a bit fuzzy, you can think of machine learning as a way to apply advanced statistical techniques that would be inapplicable otherwise.

The following chart summarizes the recommended technique for each situation. 

![alt text](https://raw.githubusercontent.com/micheleusuelli/micheleusuelli.github.io/master/articles-html/dsapproaches/approaches.PNG "Logo Title Text 1")

Please be aware that the chart is over-simplified and is meant to be used with non-technical audiences.


## When to use this framework

The framework described in this article is high-level and oversimplified. Therefore, it is useful to explain the concepts in a simple and direct way to the project stakeholders. Specifically, I utilized this approach in three areas.

The first area is to **design a new project**. Specifically, it is about designing any data-related component of the project. If the approach is defined during the design phase, the component objectives and expectations can be set accordingly. Still, after knowing more, the methodology could change, so it would help have an agile delivery methodology.

After having designed a project, to foster **delivery quality**, this framework can still help. Specifically, the framework can help identify risks, dependencies and assumptions. Some example are:

- Dependency on live data: regardless of the approach, there is a dependency on the live data
- Dependency on subject-matter expertise: depending on the approach, the subject-matter expertise is required in different shapes such as defining rules, defining what data to analyze, reviewing the outcome of a machine learning approach
- Dependency on historical data: depending on the approach, there are different requirements on the historical data, ranging from near-none for rule-based approach to strict requirements for machine learning.
- Risk on the quality and quantity of information: the historical data might not be sufficient for the statistical or machine learning techniques. For instance, the sales volume might be too chaotic to enable any data analysis.
- Risk on data quality: is the data quality is poor, statistical and machine learning techniques might not work. For example, if the sales are always under reported over the weekend, it might be impossible to analyze it to produce a forecast
- Risk on technological blockers: are the algorithms overly computational-intensive? This risk is associated with some machine learning techniques. For example, the target solution could be to forecast the sales across 100s retail stores. Due to this technical blocker, it might be impossible to have the solution scaling out across the retail stores.

The last area is about the **estimates of resources**. The category of techniques can help estimate what is needed to deliver the project in terms of resources, timelines, required skills.


## Conclusions

The framework described in this article is a good fit for high-level conversations. However, being overly simplistic, it should be utilized carefully while diving into the technicalities. In reality, the approach is usually hybrid. For example, a rule-based approach applied to the output of a machine learning technique, or a statistical technique to define the features of a machine learning model.

Another risk is to forget about key aspects other than data and subject-matter expertise. Examples are
- If a statistical solution is performing poorly due to data issues, a rule-based approach might be better suited.
- If a statistical solution is incapable of capturing the whole data complexity, a machine learning approach might work.
- Time-series techniques might be classified as "statistical" or "machine learning", depending on the perspective.

In summary, this explanatory framework is good for as long as the topics of conversation are high-level. For the project delivery, the framework should be adapted to include other key aspects.
