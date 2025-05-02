Feature: ورود با شماره تلفن ثبت‌نام شده
As a user
I want to log in using my phone number
So that I can access my account

Scenario: ورود با شماره تلفن ثبت‌نام شده
  Given I am on the login page
  When I enter a registered phone number "09128130622"
  And I enter the correct password "password123"
  Then I should be logged in successfully
  And I should see the user dashboard


Feature: ورود با ایمیل معتبر
As a user
I want to log in using my email
So that I can access my account

Scenario: ورود با ایمیل معتبر
  Given I am on the login page
  When I enter a valid email "alireza.kasiri003@gmail.com"
  And I enter a valid password "password123"
  Then I should be logged in successfully
  And I should see the user dashboard


Feature: افزودن محصول به سبد خرید
As a user
I want to add a product to my shopping cart
So that I can purchase it later

Scenario: افزودن لپ‌تاپ اپل به سبد خرید
  Given I am on the product page for "لپ‌تاپ اپل"
  When I click on "افزودن به سبد خرید"
  Then the product "لپ‌تاپ اپل" should be added to my shopping cart

Feature: جستجوی محصولات
As a user
I want to search for a product by name
So that I can find relevant products

Scenario: جستجوی محصول با نام صحیح
  Given I am on the homepage of the website
  When I search for "لپ‌تاپ اپل"
  Then I should see a list of products related to "لپ‌تاپ اپل"


Feature: پرداخت
As a user
I want to complete the payment for my order
So that I can receive my products

Scenario: پرداخت موفق با کارت اعتباری
  Given I have added products to my shopping cart
  And I have entered my payment details
  When I click on "پرداخت"
  Then the payment should be successful
  And I should see a confirmation page
