SELECT *
    ,AVG(totalSpent) OVER (partition by  rewardsReceiptStatus) AS [Spent by Status]
    ,COUNT() OVER (partition by  rewardsReceiptStatus) AS [Items Purchased by Status]
FROM receipts R
    LEFT JOIN users U
        ON R.userId = U._id