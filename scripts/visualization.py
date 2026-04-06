import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset
df = pd.read_csv("data/car_prices.csv")

# Clean column names
df.columns = df.columns.str.lower().str.replace(" ", "_")

# Remove duplicates
df = df.drop_duplicates()

# -------- VISUALIZATION 1 --------
plt.figure()
sns.countplot(x='transmission', data=df)
plt.title("Count of Transmission Types")
plt.savefig("output/transmission.png")

# -------- VISUALIZATION 2 --------
plt.figure()
sns.scatterplot(x='odometer', y='sellingprice', data=df)
plt.title("Odometer vs Selling Price")
plt.savefig("output/odometer_vs_price.png")

# -------- VISUALIZATION 3 --------
plt.figure()
sns.barplot(x='year', y='sellingprice', data=df)
plt.xticks(rotation=90)
plt.title("Selling Price by Year")
plt.savefig("output/price_by_year.png")

print("Visualization completed ✅")
