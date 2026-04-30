## 1. Introduction / The Real-World Problem
Insurance companies don’t charge everyone the same. A 20-year-old biker and a 50-year-old driver have different risks.
Someone with 5 claims is riskier than someone with 0 claims.
Manual calculation = slow + mistakes.
So we thought: “Let’s automate this with Python so premium is calculated instantly and fairly.”

## 2. Planning the LogicWe broke the problem into rules, just like an insurance company:
RuleLogicBase
Premiumhealth = ₹8000, vehicle = ₹12000, life = ₹10000
Age Riskage < 25 → +20% risk,age > 45 → +15% risk
Claim Historyclaims > 2 → +25% penalty, claims = 0 → 10% discount
Invalid InputIf policy type is wrong → show error
All this goes inside one function calculate_premium() for clean code.

## 3. How the Code Works 
— Step by StepLet’s run it with example: Butti Sruthi, age 26, life policy, 5 claims
## 1.Input Stage
Program asks 4 things → name, age, policy_type, claims.
We enter: Butti Sruthi, 26, life, 5
## 2.Function Call
calculate_premium(26, "life", 5) starts.
## 3.Base Premium Check
Policy = "life" → base = ₹10000. Valid policy, so continue.
## 4.Age Adjustment
Age 26 → Not < 25, Not > 45 → No change. Premium still ₹10000.
## 5.Claims Adjustment
Claims = 5 → Greater than 2 → +25% penalty.₹10000 + 25% of 10000 = ₹10000 + ₹2500 = ₹12500
## 6.Return Value
Function returns 12500. 
Since it’s not a string, it’s a valid premium.Final 

## Outputjavascript   
Customer Name: Butti Sruthi
Policy Type: life
Final Premium: ₹ 12500
