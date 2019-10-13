#   Here are the Australian 2017–18 tax rates.
#
#   INCOME              TAX ON INCOME
#   0 – $18,200         Nil
#   $18,201 – $37,000   19c for each $1 over $18,200
#   $37,001 – $87,000   $3,572 plus 32.5c for each $1 over $37,000
#   $87,001 – $180,000  $19,822 plus 37c for each $1 over $87,000
#   $180,001 and over   $54,232 plus 45c for each $1 over $180,000
#
#   Complete the calculate_tax method, it should return a
#   hash containing: income, tax, income_after_tax
#
#   Test your code:
#   ruby tests/18_income_tax_test.rb
#

def calculate_income_tax (income)
  tax_details = {income: income, tax: 0, income_after_tax: income}
  case income 
  when income < 18_200
    tax_details
  when income > 18_201 && income < 37_000
    tax_details[:tax] = (3_572 + (0.3250 * (income - 37_00)))
    tax_details[:income_after_tax] = income - tax_details[:tax]
    tax_details
  end
end
