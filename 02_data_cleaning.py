import pandas as pd

# Load dataset
df = pd.read_csv("../financial_sales.csv")

# Convert date columns
df["Order Date"] = pd.to_datetime(df["Order Date"], errors="coerce")
df["Ship Date"] = pd.to_datetime(df["Ship Date"], errors="coerce")

# Remove duplicate rows
df = df.drop_duplicates()

# Check date conversion
print("Order Date Type:", df["Order Date"].dtype)
print("Ship Date Type:", df["Ship Date"].dtype)

# Check missing values after cleaning
print("\nMissing Values After Cleaning:")
print(df.isnull().sum())

# Save cleaned dataset
df.to_csv("../financial_sales_cleaned.csv", index=False)

print("\nCleaned dataset saved successfully!")
print("Final Shape:", df.shape)