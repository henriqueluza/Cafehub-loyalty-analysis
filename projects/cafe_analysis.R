
    install.packages(c("readxl", "jsonlite", "dplyr"))
    library(readxl)
    library(jsonlite)
    library(dplyr)

    customer_data <- read.csv("customer_data.csv")
    loyalty_data <- read.csv("loyalty_data.csv")

    customer_data$Purchase.Date <- as.Date(customer_data$Purchase.Date)
    customer_data$Age <- as.numeric(customer_data$Age)
    loyalty_data$LoyaltyPoints <- as.numeric(loyalty_data$LoyaltyPoints)

    customer_data <- na.omit(customer_data)
    loyalty_data <- na.omit(loyalty_data)

    print(head(customer_data))
    print(head(loyalty_data))

    Above_30 <- customer_data %>% filter(Age > 30)
    print(head(Above_30))

    df_filtered <- customer_data %>% filter(Product == "Smoothie"& Gender == "Female")
    print(head(df_filtered))

    df_selected <- df_filtered %>% select(Age, Product)
    print(head(df_selected))

    loyalty_data <- loyalty_data %>% mutate(Tier = case_when(
        LoyaltyPoints >= 500 ~ "Gold",
        LoyaltyPoints >= 200 ~ "Silver",
        TRUE ~ "Bronze"
    ))

    print(head(loyalty_data))

    write.csv(df_selected, file = "revised_customer_data.csv", row.names = FALSE)
    write.csv(loyalty_data, file = "revised_loyalty_data.csv", row.names = FALSE)

    merged_data <- merge(customer_data, loyalty_data, by = "CustomerID")
    write.csv(merged_data, file = "merged_data.csv", row.names = FALSE)


