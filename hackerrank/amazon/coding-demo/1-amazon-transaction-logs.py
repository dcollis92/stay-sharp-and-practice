#
# 1. Amazon Transaction Logs (example question)

# Your Amazonian team is responsible for maintaining a monetary transaction service. The transactions are tracked in a log file.

# A log file is provided as a string array where each entry represents a transaction to service. Each transaction consists of:

# - sender_user_id: Unique identifier for the user that initiatied the transaction. It consists of only digits with at most 9 digits.
# - receptient_user_id: Unique identifier for the user that is receiving the transaction. It consists of only digits with at most 9 digits.
# - amount_of_transaction: The amount of the transaction. It consists of only digits with at most 9 digits.

# The values are seperated by a space. For example:
# "sender_user_id
# recipient_user_id
# amount_of_transaction"

# Users that perform an excessive amount of transactions might be abusing the service so you have been tasked to identify the users that have a number of transactions over a threshold. The list of user ids should be ordered in ascending numeric value.

# Example:
# logs = ["88 99 200", 
#         "88 99 300", 
#         "99 32 100", 
#         "12 12 15"]
# threshold = 2

# The transactions count for each user, regardless of role are:
# ID    Transactions
# --    ------------
# 99    3
# 88    2
# 12    1
# 31    1

# There are two users with at least threshold = 2 transactions: 99 and 88. In ascending order, the reqturn array is ['88', '99'].

# Note: In the last log entry, user 12 was on both sides of the transaction. This counts as only 1 transaction for user 12.

# Function Description:
# Complete the function processLogs in the editor below

# The function has the following parameter(s):
# - string logs[n]: each logs[i] denotes the ith entry in the logs
# - int threshold: the minimum number of transactions that a user must have to be included in the result

# Returns:
# - string[]: an array of user id's as strings, sorted ascending by numeric value

# Constraints:
# - 1 < n < 10**5
# - 1 < threshold < n
# - The sender_user_id, recipient_user_id and amount_of_transaction contain only characters in the range ascii['0'-'9'].
# - The sender_user_id, recipient_user_id and amount_of_transaction start with a non-zero digit.
# - 0 < length of sender_user_id, recipient_user_id, amount_of_transaction < 9.
# - The result will contain at least one element.
#

#
# Complete the 'processLogs' function below.
#
# The function is expected to return a STRING_ARRAY.
# The function accepts following parameters:
#  1. STRING_ARRAY logs
#  2. INTEGER threshold
#

from collections import defaultdict

def processLogs(logs, threshold):
    res = []
    dict = defaultdict(int)
    for each_rows in logs:
        row = ''.join(each_rows)
        temp = row.split()
        if temp[0] != temp[1]:
            dict[temp[1]] += 1
        dict[temp[0]] += 1
    
    for key, val in dict.items():
        if val >= threshold:
            res.append(key)
    return sorted(res)