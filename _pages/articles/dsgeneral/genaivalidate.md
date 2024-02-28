


# Evaluating GenAI solutions: science or art?


![alt text](<genaivalidate/science and art.png>)


![alt text](<genaivalidate/science%20and%20art.png>)

![alt text](<./genaivalidate/science%20and%20art.png>)

![alt text](https://github.com/micheleusuelli/micheleusuelli.github.io/blob/master/_pages/articles/dsgeneral/genaivalidate/science%20and%20art.png)

![ScreenShot](https://github.com/micheleusuelli/micheleusuelli.github.io/blob/master/_pages/articles/dsgeneral/genaivalidate/science%20and%20art.png)

![alt text](/_pages/articles/dsgeneral/genaivalidate/science%20and%20art.png "Logo Title Text 1")

![alt text](/_pages/articles/dsgeneral/genaivalidate/science and art.png "Logo Title Text 1")
s


GenAI (Generative Artificial Intelligence) enabled several new use cases through the generation of targeted content.  

 
**Developing a new product involving GenAI, how do we know it effectively addresses its intended use?** 

There are several practices, theories, and perspectives. My approach is to identify the core principles that I believe are the most relevant.


**Art or science?**

Unlike more traditional AI, this novel field involves a high degree of subjectivity. While scientific rigour is still relevant, there are a lot of areas that require creative thinking and management of perspectives, hence the need for a well-rounded approach.


**In this article, I will focus on the "why" and "what", touching on the "how" very briefly.**

In other words, I will share why I believe that some principles are crucial and what I believe that the solution needs to address. About the "how", I have seen these challenges addressed in different ways and I would strongly recommend designing approaches that fit the purpose, accounting for both the use case and the broader environment.

The prioritized aspects are new challenges, back-testing strategy, deployment, and operations. Each section covers an aspect in detail.



 

## New challenges 

![alt text](<genaivalidate/Traditional AI, science, vs generative AI, art.png>)


**What are the key aspects of evaluating a GenAI solution?**

To determine the effectiveness of a solution involving GenAI, the key aspects are not necessarily the same as those for more traditional AI.

Let's start with a concrete example: imagine that you are a real estate app, providing potential buyers with recommendations. To grow your customer base, you would like to improve the experience with a new chatbot that provides valuable details such as energy class, potential upgrades, and suggested locations.

Your solution involves an OpenAI chatbot that includes a RAG (Retrieval Augmented Generation) component. Will it provide the users with the answers they are expecting?

 

**Evaluating GenAI is more challenging than evaluating traditional AI due to its complex, qualitative outputs as opposed to the straightforward numerical predictions from traditional AI.** 


Traditional AI, which produces numerical outcomes like forecasts, can be easily evaluated by comparing the generated numbers with known or expected values. In contrast, GenAI creates new content, such as text or images. The quality of GenAI outputs, being more qualitative and subjective, is harder to assess. It requires understanding the content's purpose, target audience, and broader context, making it a more complex process that goes beyond numerical comparisons and involves human judgement and feedback.

 


## Back-testing strategy 

![alt text](<genaivalidate/Back-testing with the help of GenAI.png>)


**Backtesting involves evaluating the solution within a controlled, simulated environment with pre-defined scenarios and expected outcomes.** 


To test the effectiveness of a solution, the assumption is that the future behaviour will be somehow consistent with a simulated environment. For instance, in our real estate app use case, a simulated environment involves sample queries from end users, either real, generated or simulated.

 
**The final outcome of a GenAI solution has some degree of subjectivity.** 

The final outcome is text, and its effectiveness depends on the satisfaction of the end user. There are different angles to measure it, and it's arguably impossible to have an objective evaluation in a simulated environment due to its complexity. Analytical metrics partially answer the problem and are not necessarily related to the effectiveness of the solution.


 

**A part of the solution can be assessed more quantitatively. Each aspect likely requires separate backtesting.** 

It is possible to break down the solution into smaller steps and objectively measure some aspects. A key aspect in a RAG solution is the capability to retrieve relevant information. In terms of backtesting, the key aspects are:

- Simulated environment: users asking questions, search engine triggered

- Expected outcome: chunks of information to be retrieved

- Pre-defined scenarios: questions asked by the user. If there are 100 possible chunks of information, how do we know if the relevant ones are identified? We probably need 1000s of questions to address this aspect properly, so some automation in the generation of questions might be required.

- Metrics: traditional metrics relatable to precision and recall are probably applicable

This is just an example, related to basic RAG solutions. Depending on the design of the solution, where GenAI might not be the only component, there might be different aspects to test.
 

**Another key aspect is ethical compliance** 

Mitigating potential ethical risks is arguably a prioritized aspect for most companies. An option is to perform automated checks in the simulated environment. For instance, the solution back-testing could check for discrimination, demeaning behaviour and other Responsible AI aspects.

 

**Meta-GenAI can be a powerful tool to generate scenarios and evaluate them.**

In all the steps requiring automated generation of content, GenAI can help. For instance, it can generate sample questions and evaluate different aspects of the answer. I have seen backtesting solutions implemented with the help of Generative AI. This is arguably a strong point in favour of it being an art, where you can get creative in the use of GenAI, without compromising on scientific rigour.
 

## Deployment 


![alt text](<genaivalidate/deployment of generative AI with human reviewing.png>)


**A GenAI solution is dependent on data, which might be subject to change. This change needs to be managed to mitigate future risks.** 

GenAI solutions based on RAG patterns make use of a knowledge base, which might be subject to change. Another moving part could be the core GenAI model, which might be subject to re-training, especially now that the applications are becoming more mature.


**Each aspect can be handled through LMOps.** 

LMOps (Language Models Machine Learning Operations) is a new term, based on the more traditional MLOps (Machine Learning Operations), contextualized to LLM. There are different practices and, in my opinion, the commonality is the need to manage changes in both technology, through more traditional techniques such as CI/CD pipelines, and data. Changes in the data are often managed as part of a more traditional approach, triggering the release of a newer version of the solution if more effective, and providing a domain expert with the option to keep a previous version if appropriate.



**A new aspect to manage is the knowledge base.** 

In traditional machine learning, a change in the data would trigger model re-training. In RAG GenAI projects, the main outcome is often a newer version of the knowledge base. Either way, even if there are no changes in the technology, the solution might behave differently due to the new data, so a newer version should go through similar strategies as more traditional DevOps such as automatically rejecting versions that do not pass basic tests or are not more effective, and by providing a domain expert with the option to prefer a previous version.


 
## Conclusions 

Reflecting on the principles covered in this article, GenAI is a new field with challenges and opportunities. 

These principles are meant to be a non-exhaustive starting point. They highlight the importance of a well-rounded approach, combining scientific rigour with creative thinking.

Like any emerging field, there's always room for further discussion and refinement. Do these principles resonate with your experience in the field? Is there anything fundamental that you think is missing, or that you would approach differently?



