import pandas as pd

# Load cleaned dataset
df = pd.read_csv("../financial_sales_cleaned.csv")

# -----------------------------
# Overall Financial Performance
# -----------------------------
total_revenue = df["Total Revenue"].sum()
total_cost = df["Total Cost"].sum()
total_profit = df["Total Profit"].sum()

profit_margin = (total_profit / total_revenue) * 100

print("===== OVERALL FINANCIAL PERFORMANCE =====")
print(f"Total Revenue: ${total_revenue:,.2f}")
print(f"Total Cost: ${total_cost:,.2f}")
print(f"Total Profit: ${total_profit:,.2f}")
print(f"Profit Margin: {profit_margin:.2f}%")

# -----------------------------
# Performance by Region
# -----------------------------
region_analysis = df.groupby("Region").agg(
    Revenue=("Total Revenue", "sum"),
    Cost=("Total Cost", "sum"),
    Profit=("Total Profit", "sum")
).sort_values("Profit", ascending=False)

region_analysis["Profit Margin %"] = (
    region_analysis["Profit"] / region_analysis["Revenue"]
) * 100

print("\n===== PERFORMANCE BY REGION =====")
print(region_analysis)

# -----------------------------
# Performance by Item Type
# -----------------------------
item_analysis = df.groupby("Item Type").agg(
    Revenue=("Total Revenue", "sum"),
    Cost=("Total Cost", "sum"),
    Profit=("Total Profit", "sum"),
    Units_Sold=("Units Sold", "sum")
).sort_values("Profit", ascending=False)

item_analysis["Profit Margin %"] = (
    item_analysis["Profit"] / item_analysis["Revenue"]
) * 100

print("\n===== PERFORMANCE BY ITEM TYPE =====")
print(item_analysis)

# -----------------------------
# Performance by Sales Channel
# -----------------------------
channel_analysis = df.groupby("Sales Channel").agg(
    Revenue=("Total Revenue", "sum"),
    Cost=("Total Cost", "sum"),
    Profit=("Total Profit", "sum")
)

channel_analysis["Profit Margin %"] = (
    channel_analysis["Profit"] / channel_analysis["Revenue"]
) * 100

print("\n===== PERFORMANCE BY SALES CHANNEL =====")
print(channel_analysis)

# -----------------------------
# Top 5 Countries by Profit
# -----------------------------
top_countries = df.groupby("Country")["Total Profit"].sum().sort_values(
    ascending=False
).head(5)

print("\n===== TOP 5 COUNTRIES BY PROFIT =====")
print(top_countries)

# -----------------------------
# Bottom 5 Countries by Profit
# -----------------------------
bottom_countries = df.groupby("Country")["Total Profit"].sum().sort_values(
    ascending=True
).head(5)

print("\n===== BOTTOM 5 COUNTRIES BY PROFIT =====")
print(bottom_countries)

# -----------------------------
# Save analysis files
# -----------------------------
region_analysis.to_csv("../region_financial_analysis.csv")
item_analysis.to_csv("../item_type_financial_analysis.csv")
channel_analysis.to_csv("../sales_channel_analysis.csv")

print("\nEDA analysis files saved successfully!")