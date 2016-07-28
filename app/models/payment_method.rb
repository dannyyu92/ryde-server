class PaymentMethod < ApplicationRecord

  VISA = "visa"
  AMEX = "amex"
  MASTERCARD = "mastercard"
  DISCOVER = "discover"
  CREDIT_CARDS = [VISA, AMEX, MASTERCARD, DISCOVER]

  PAYPAL = "paypal"
  VIRTUAL_WALLETS = [PAYPAL]

  ALL_TYPES = CREDIT_CARDS + VIRTUAL_WALLETS

end
