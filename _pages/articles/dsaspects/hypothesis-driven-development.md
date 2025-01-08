### Hypothesis-Driven Development in Generative AI and Traditional Machine Learning

**Hypothesis-driven development** is a **structured approach** that can significantly enhance the success and efficiency of both generative AI and traditional machine learning projects. The purpose of this article is to share **core principles** of hypothesis-driven development and demonstrate how they are applicable to projects of different nature, whether it's **Generative AI (GenAI)** or more traditional machine learning. I have chosen the aspects that, in my opinion, are most relevant, also taking into account my **project experience**.

This method involves **formulating hypotheses** based on initial observations and **iteratively testing** them through experiments. Here, we explore the **key attributes** of hypothesis-driven development and contextualise them with two examples: **micro-climate forecasting for wind farm operations** and a **customer chatbot**. A data scientist should define these hypotheses by getting inputs from different people such as, ideally, the **end user** for the experience, a **stakeholder** for the KPIs, a **data admin** for data availability, and other relevant team members like **project managers**, **domain experts**, **solution architects** and **software engineers**. 

Please note that the views expressed in this article are my own and do not necessarily reflect those of Microsoft, my employer.


#### Key Attributes of Hypothesis-Driven Development

1. **Targeted Towards OKRs, Defining More Tactical KPIs**
   Hypotheses should align with broader **Objectives and Key Results (OKRs)**, which are a goal-setting framework used to define and track objectives and their outcomes. **Objectives** represent the desired goals, while **Key Results** are specific, measurable actions that help achieve these goals. At the same time, more tactical **Key Performance Indicators (KPIs)** should be defined to measure specific outcomes. This alignment ensures that each experiment contributes to the overall strategic objectives. Additionally, OKRs should consider the **user experience**, ensuring that the solutions developed are user-friendly and meet the needs of the end-users.

2. **Accuracy Metrics Relatable to the OKRs**
   The accuracy metrics used to evaluate the hypotheses should be directly relatable to the OKRs. This alignment ensures that the performance of the models is measured in a way that reflects their impact on the broader objectives and user experience.

3. **Data Dependencies Identified, with a Plan to Onboard Them**
   Identifying data dependencies and having a clear plan to onboard the necessary data is crucial. This ensures that the experiments are based on high-quality and relevant data, which is essential for obtaining reliable results.

4. **Backtesting Strategy Articulated**
   A well-defined backtesting strategy, including what data is used for training and which one for validation, is essential. This helps in assessing the robustness and generalisability of the models.

#### Example 1: Micro-Climate Forecasting for Wind Farm Operations

Micro-climate forecasting involves predicting weather conditions on a very localised scale, often focusing on specific areas such as wind farms. By using a combination of broader weather data and data from local weather stations, micro-climate forecasts can provide highly accurate and detailed predictions that are crucial for operations like wind farm management.

**Hypothesis:** "Using a combination of weather data and local weather station data will improve the accuracy of micro-climate forecasts for wind farm operations."

- **Targeted Towards OKRs:** The broader OKR is to enhance wind farm efficiency and reduce maintenance costs. The tactical KPI is the accuracy of micro-climate forecasts. The user experience aspect involves providing timely and accurate forecasts to the operations team, for example, to schedule maintenance jobs that impact production the least or to prevent hazards.
- **Accuracy Metrics:** Metrics such as **Mean Absolute Error (MAE)** and **Root Mean Squared Error (RMSE)** are used to evaluate the forecast accuracy, directly impacting the OKR of operational efficiency and user satisfaction.
- **Data Dependencies:** Weather data and local weather station data are identified as key dependencies. A plan is in place to onboard this data through APIs and data partnerships.
- **Backtesting Strategy:** Historical weather data is used for training, while recent data is reserved for validation. This ensures that the model's performance is evaluated on unseen data, reflecting its real-world applicability.

#### Example 2: Customer Chatbot

**Hypothesis:** "A transformer-based model to be tested on a golden dataset of pre-defined questions and information chunks will improve the chatbot's ability to address customer queries accurately."

- **Targeted Towards OKRs:** The broader OKR is to enhance customer satisfaction and reduce support costs. The tactical KPI is the accuracy of the chatbot's responses. The user experience aspect involves ensuring that the chatbot provides accurate and helpful responses to customer queries.
- **Accuracy Metrics:** Metrics such as **statistical measures** (e.g., **ROUGE**, **BLEU**), **embedding similarity**, and **user feedback** are used to evaluate the chatbot's performance, directly impacting the **OKR of customer satisfaction**.
- **Data Dependencies:** A **knowledge base** containing the information to formulate key answers. Also, the **golden dataset** consisting of pre-defined questions and information chunks is identified as a key dependency. A plan is in place to curate and maintain this dataset.
- **Backtesting Strategy:** The golden dataset is used as a validation set. The training set consists of the knowledge base and is used to either retrieve information, e.g., through RAG, or to fine-tune the model, while the validation set is used to assess its performance on unseen queries.

#### Conclusion

**Hypothesis-driven development** provides a **clear framework for experimentation and decision-making** in both generative AI and traditional machine learning projects. By **aligning hypotheses with OKRs**, **defining tactical KPIs**, **identifying data dependencies**, and **articulating a backtesting strategy**, data scientists can build more **reliable, efficient, and impactful AI solutions**. These examples illustrate how this approach can be applied to **real-world scenarios**, ensuring **continuous improvement and adaptation to new insights** while accounting for **user experience**.
