# Interview Questions

# Given a credit card number, find the issuer of the credit card based on the following rules:

# CC number starts with
# '4026', '417500', '4405', '4508', '4844',
# '4913', '4917'
# CC len: 16
# Issuer: VISAELECTRON

# CC number starts with: '4'
# CC len: 16
# Issuer: VISA

# CC number starts with: '34', '37'
# CC len: 15
# Issuer: AMEX

# CC number starts with: '36'
# CC len: 14
# Issuer: Diners Club (DC)

def find_issuer(card_number):
	VISA_E = ['4026', '4405', '4508', '4844', '4913', '4917']
	AMEX = ['34', '37']
	length = len(card_number)
	if length not in range(14, 17):
		return 'UNAVAILABLE'
	if (card_number[:4] in VISA_E or card_number[:6] == '417500') and length == 16:
		return 'VISAELECTRON'
	elif card_number[0] == '4' and length == 16:
		return 'VISA'
	elif card_number[:2] in AMEX and length == 15:
		return 'AMEX'
	elif card_number[:2] == '36' and length == 14:
		return 'DC'
	else:
		return 'UNAVAILABLE'

# TestCases:
print(find_issuer('4175004175004172') == 'VISAELECTRON')
print(find_issuer('4917491749174917') == 'VISAELECTRON')
print(find_issuer('346416800707698') == 'AMEX')
print(find_issuer('376416800707698') == 'AMEX')
print(find_issuer('37641680070769832112') == 'UNAVAILABLE')
print(find_issuer('36641680070769') == 'DC')
print(find_issuer('54545641680070769') == 'UNAVAILABLE')
print(find_issuer('4111111111111111') == 'VISA')
