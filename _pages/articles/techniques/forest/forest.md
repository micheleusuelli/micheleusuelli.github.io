---
layout: default
title: Demystifying decision forests
---


# Demystifying decision forests

To build and apply a predictive model, a popular technique is called *decision forest*. It popularity is due to its versatility and minimality of data preparation requirements.
This article explains the technique without requiring any technical background. By the end of this article, you will get these takeaways
-	Explanation of the technique
-	Interpretation of the results
-	Analogies with the human problem-solving approach

To demonstrate this, we use as an example a mock use-case based on simulated data. Please be aware that the assumptions behind the example are not necessarily related to reality.

## Example

A bank gives loans to its customer. The goal is to understand what customers are trustworthy enough to receive a loan. The bank can use some information related to the customer such as 
-	**Credit score**: score measuring the “reliability” of the customer, assessed by a third party
-	**House age**: age of the house they’re purchasing
-	**Years of employment**
-	**Credit card debt**: Debt on the credit card
-	**House year**: Year in which they purchased the house

The bank collected historical data about its previous customers. Besides, it traced what customers defaulted via a **default** column. For showing purposes, half of the previous customer defaulted.

## Decision tree explanation

| Credit score | House age | Years of employment | Credit card debt | House year|
|---|---|---|---|---|
708|21|5|4190|2002|0|
649|20|3|2151|2003|0|
725|23|3|3603|2005|0|
785|24|4|5534|2009|0|
649|14|6|5243|2002|0|
734|21|0|3441|2008|0|

The *decision forest* is based on a more simple technique, the *decision tree*.

Via a statistical metric, we can identify the most default-related information, e.g. the credit card debt. Setting a threshold, we can divide the bank customers into two groups. Then, for each of the two groups, we repeat the process of finding the most relevant feature and we split the customers into two sub-groups.

Ultimately, the tree divides the customers into eights groups for which we compute the number of customers and default percentage.
The following chart shows the tree.
 ![tree](https://github.com/micheleusuelli/micheleusuelli.github.io/blob/master/articles-html/forest/tree.png)

Looking into each split of the three, there are
- A number at the top: the propensity of having a default
- A percentage at the bottom: percentage of customers
- Color: the more blue, the more default-propense

The percentage is 100% at the top, having all the cusotmers. At the top, we have 0.49 of propensity which means that half of the customers defaulted. Then, the eight groups of customers are sorted by default propensity.

Having a new customer, the bank assigns it to the related groups at the bottom. Let's have a look at the decision making process, depending on the available customer information

1. In absence of information, the estimated default risk is the average: 50%
2. Knowing that the credit card debt is below $6755, the customer has a risk of 6.6%
3. Knowing that the credit card debt is above $6755, the customer has a risk of 56%
4. Having the complete information about the customer, it gets assigned to one of the 8 groups at the bottom of the tree

## Results interpretation

To interpret the results, let's look further into the decision-making process:

-	if below ccDebt < 6755, the score becomes 6.6%, so it gets decreased by 42.4%
-	if above ccDebt <= 6755, the score becomes 82%, so it gets increased by 33%

Summarising, this is the impact:

-	ccDebt < threshold: -0.424
-	ccDebt <= threshold: +0.33

In the same way, we can measure the impact of being above or below the threshold of any other piece of information. If the same information is being used more than once, we can simply sum up the effects. 

Depending on the customer, the path on the tree is different, so the features being used and their impact changes. To keep track of that, we can sum up the effects separately for each customer and visualise them through a decision-making heatmap:

- A row per customer
- A column per piece of information either above or below a generic threshold
- A blue cell if the information is decreasing the default propensity
- A red cell if the information is increasing the default propensity
- A stronger shade of either red or blue depending on the impact

 ![ heatmap](https://github.com/micheleusuelli/micheleusuelli.github.io/blob/master/articles-html/forest/heatmap.png)

Via the heatmap, the bank can easily show the rational behind each prediction and therefore interpret the results.



## From the tree to the forest

So far, we have seen an explanation of the decision tree and an interpretation of its results. As stated initially, this article focuses on decision forests. As suggested by its name, a decision forest is a combination of decision trees.

Let's imagine that 100 agents access different parts of the customer information
- A different random group of customer
- A different random subset of the information

Asking each agent to build a decision tree, we will have 100 different trees and therefore 100 different outcomes. Combining them, the final result will take account of different perspectives that would be hidden building a single decision tree. This methodology, called “ensembling”, usually increases the performance of the predictive model.

However, the methodology described above still applies. The final default propensity can simply be the average. Simply, we can sum-up the effect of each piece of information across all the trees of the forest and build a similar heatmap. The results will be interpretable in the same way as the decision tree.

## Conclusions

Coming back to the key takeaways:
-	Explanation of the technique: the decision-making process can be visualized and explained
-	Interpretation of the results: the rationale behing the results can be interpreted and visualized
-	Analogies with the human problem-solving approach: the solution if based on a series of yes/no answers, similarly to a human decision tree

Likewise, the same approach is applicable to other contexts.
