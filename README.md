# <p align="center" dir="auto">Cluster Insiders Clients</p>
<div align="center">
<img src="https://user-images.githubusercontent.com/103151311/205626293-ec60be21-af0c-4619-b442-d8717aa77dfc.jpeg" width="700" />
</div>
</p>

 This project aims to agroup clients by their similarities, with the objective of personalizing the services for the most profitable customers

# 1. Business Problem.

This project is based in a Kaggle Challenge wich simulates a business problem. An Ecommerce called All in One Place sell second-line products from various brands at a lower price. After a year of operation, the marketing team realized that some customers buy more frequently and have a high average ticket. Based in this perception, marketing team wants to to release the "Insiders Program". The program consists in segment customers based on their similarities (looking into recency, frequency and gross revenue).

# 2. Business Assumptions.

- Invoice dates are between 2010-01-12 and 2011-12-05;
- Negative values are considered returns;
- Returns are not very expensive for the business;
- A bad user was removed, considered an outlier;
- Some codes in the column 'Stock Code' was removed due to not being able to know what it means.


# 3. Solution Strategy

My strategy to solve this challenge was:

**Step 01. Data Description:** My goal is to use statistics metrics to identify data outside the scope of business.

**Step 02. Data Filtering:** Filter rows and select columns that do not contain information for modeling or that do not match the scope of the business.

**Step 03. Feature Engineering:** Derive new attributes based on the original variables to better describe the phenomenon that will be modeled.

**Step 04. Exploratory Data Analysis:** Explore the data to find insights and better understand the impact of variables on model learning.

**Step 05. Data Preparation:** Prepare the data so that the Machine Learning models can learn the specific behavior.

**Step 06. Feature Selection:** Selection of the most significant attributes for training the model.

**Step 07. Machine Learning Modelling:** Machine Learning model training

**Step 08. Hyperparameter Fine Tunning:** Choose the best values for each of the parameters of the model selected from the previous step.

**Step 09. Convert Model Performance to Business Values:** Convert the performance of the Machine Learning model into a business result.

**Step 10. Deploy Modelo to Production:** Publish the model in a cloud environment so that other people or services can use the results to improve the business decision.

# 4. Clusters Insights

**Cluster Insiders**

- Number of Customers: 881 (15.44%)
- Mean Gross Revenue: $ 5,959.55
- Mean Recency: 6 dias
- Mean Products Bought: 240 produtos
- Frequency of Products Bought: 0.05 products/day
- Mean Returns: 71

## Main Insights

1 - Cluster Insiders customers have gross revenue above 10% of total purchases?
True - The Insiders Cluster has a volume GMV of 51.93%

2 - Cluster Insiders customers have an average number of returns below the average of the total customer base?
False - The Cluster Insiders average returs above the overall average

3 - Cluster Insiders customers have a purchase volume above 10% of total purchases?
True - The Insiders cluster has a product purchase volume of 40.07%


# 5. Machine Learning Model Applied
The GMM (Gaussian Mixture Models) model was applied. Together with the UMAP Dimensionality Reduction technique, we got the best silhouette score to form the clusters

# 6. Machine Learning Model Performance

## <p align="left" dir="auto">Clusters Visualization - UMAP Dimensionality</p>
<div align="left">
<img src="https://user-images.githubusercontent.com/103151311/205644719-8114a56c-759a-4f91-867c-131c1df9126b.png" width="700" />
</div>

## <p align="left" dir="auto">Silhouette Visualization</p>
<div align="left">
<img src="https://user-images.githubusercontent.com/103151311/205650014-488819ed-404c-4dff-b10e-d0cece36e5be.png" width="700" />
</div>


# 7. Business Results

- **Cluster 4: Insiders** - We just have bad quantity of returns and frequency.
- **Cluster 8: Above Average** - As the name already says, it is above average in all aspects but does not stand out in any
- **Cluster 1: Good Average** - Has a good average on all counts.
- **Cluster 2: Need Gross Revenue** - If we could just increase their Gross Revenue, we could group up with Insiders
- **Cluster 7: Below Average** - We can say that this cluster is just below the average expected
- **Cluster 9: Good Freq and Returns** - Has good Frequency and Returns
- **Cluster 5: Lost** - The worst Recency 
- **Cluster 10: Bad Ones** - With really high recency and quantity of Returns
- **Cluster 11: Good Recency** - Stand out for the low number of days without buying
- **Cluster 0: Not Good** - Dont Stand out on any features
- **Cluster 6: Best Frequency** - Has the best frenquency, but need to buy with a high price
- **Cluster 3: Worst Gross revenue** - Besides the worst gross revenue and quantity of products, this cluster has good numbers on other features


# 8. Conclusions

- Insiders are few but great customers. They have a good participation of the company revenue. Now, marketing can make custom actions to each cluster and work on their retention.

# 9. Lessons Learned

- Metrics to avaluate clusters;
- KNN, GMM and HC Models;
- Insights we were able to take after forming the clusters;
- Embedding Technique.

# 10. Next Steps to Improve

- Deployment in production
- Collecting feedback of the users and improve the usability if necessary
- Improve the performance in the next CRISP cycle
