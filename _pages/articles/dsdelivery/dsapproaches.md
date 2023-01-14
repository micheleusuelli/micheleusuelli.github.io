---
layout: default
title: My Page
---

# Data-driven approaches: definition and communication



This article proposed a high-level framework to define a data-driven approach.

**Solving a problem requiring data, what approach would you take? Do you really need Artificial Intelligence (AI)?**

You think that your problem requires data-driven decision making. Does that mean that you need to use any AI? What are the other options? Is an AI approach even feasible?

**Your choice will depend on the problem you are trying to solve and on the people you work with.**

There are different actors around you, including stakeholders, sponsoring the initiative and expecting returns on their investment. They might ask you to articulate the pros and cons of using AI, or more specifically machine learning techniques. How do you explain the advantage? Is an AI solution the best fit?


**A starting point would be a problem-focused mind set.**

The best solution depends on the objectives. A **problem-focused mind set** starts with the problem to solve in mind. The solution choices are just a consequence. Having the problem in mind, you can really empathize with the audience. While the concept is simple, its application is not direct. What if your stakeholders think that AI is the solution? Perhaps they prefer to be consistent with some market trends, seeing AI applications in the same industry. Rather than following their guidance, solving their real problem is more effective, especially if you aim to establish a long trustworthy relationship.

**With that in mind, what situations require machine learning?**

How can you explain it in simple terms? Probably, it is not as simple as it sounds. No matter how well you know your stakeholders, there will always be a gap in how different people perceive the same subject. To mitigate this risk, you could start asking their view of AI. Then, you can walk backwards to your view and try to be as close as you can.

**I tried to prepare a re-usable framework to simplify the choices.**

To choose and explain the approach, I defined a framework and adopted it on different projects at Microsoft. After having acquired some degree of empathy with my audience, I leveraged it to shape the messages into simple explanations.

The following chart summarizes the framework and this article shows each part in more detail.

![alt text](https://raw.githubusercontent.com/micheleusuelli/micheleusuelli.github.io/master/articles-html/dsapproaches/approaches.PNG "Logo Title Text 1")



## Key questions to understand the problem

**To illustrate this example, we can use a sales forecasting problem.**

The objective would be to forecast the daily sales volume based on information available, relevant and relatable to the sales.

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

What happens if it is not clear what affects the sales volume? Let's suppose that there are 3 possible root causes: weekday, time of the year, promotions. Each root cause if captured by historical data. Having 10 years' worth of historical data, it would be hard to understand how to use the information just calculating base statistics. The **machine learning** algorithms identify patterns from the historical data in a way that is defined by the data scientists.

Another perspective is conceptual. How are we learning from the history to predict the future?
- **rule-based**: look at the history and decide how to predict the future. Advisable if the history is simple to understand
- **statistical**: extract information from the history and use it to predict the future. Advisable if you already know what information you need from the history
- **machine learning**: ask an algorithm to learn from the history. Advisable if the other two approached are insufficient

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
