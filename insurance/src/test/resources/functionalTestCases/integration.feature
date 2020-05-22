Feature: As a Business customer
  I want to put in my business trade 
  so I can obtain quotes for insurance

  @TestInsuranceHairdresserCategoryG
  Scenario Outline: Hairdresser Hapy Path Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Now we'll show you some risks that your business might need cover for."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-allergies"
    When User click Yes to A customer has an allergic reaction caused by something in your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/tools"
    And User click Yes to Your equipment gets stolen or damaged?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/equipment-fire"
    And User click Yes to Your equipment is damaged in a fire?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-injuries"
    And User click Yes to A member of staff injures a customer?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/burglary"
    And User click Yes to Your computer and electrical equipment gets stolen in a burglary?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/employee-fall"
    And User click Yes to A member of staff trips and injures themselves inside your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/staff-allergies"
    And User click Yes to A member of staff has an allergic reaction whilst carrying out their work?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/flood"
    And User click Yes to A flood causes damage to your building
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/property-damage"
    And User click Yes to Someone vandalises your building
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/public-liability"
    When User click £1 million button
    And User click next button on the public liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/employers-liability"
    When User click next button on employers liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/contents-cover"
    When User select £50000 for contents cover
    And User click next button on contents cover page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/building-cover"
    When User click next button on building cover page
    And User click next button on summary model pop up
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/chat"
    When User click Yes I hhave an existing policy
    And User click next button for policy start date
    And User click call me now button
    And User enter "<BusinessName>" in business name field
    And User enter "<FullName>" in full name field
    And User enter "<PhoneNumber>" in phone number field
    And User enter "<Email>" in email field
    And User enter call me button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/confirmation"

    Examples: 
      | PostCode | Address    | BusinessType | BusinessName | FullName     | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Hairdresser  | Swiss T      | Swiss Cheese | 07547583921 | swisscheese@zh.com |

  @TestInsuranceClothingRetailingCategoryG
  Scenario Outline: Clothing Retailing Happy Path Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Now we'll show you some risks that your business might need cover for."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-allergies"
    When User click Yes to A customer has an allergic reaction caused by something in your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/tools"
    And User click Yes to Your equipment gets stolen or damaged?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/equipment-fire"
    And User click Yes to Your equipment is damaged in a fire?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-injuries"
    And User click Yes to A member of staff injures a customer?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/burglary"
    And User click Yes to Your computer and electrical equipment gets stolen in a burglary?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/employee-fall"
    And User click Yes to A member of staff trips and injures themselves inside your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/staff-allergies"
    And User click Yes to A member of staff has an allergic reaction whilst carrying out their work?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/flood"
    And User click Yes to A flood causes damage to your building
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/property-damage"
    And User click Yes to Someone vandalises your building
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/public-liability"
    When User click £1 million button
    And User click next button on the public liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/employers-liability"
    When User click next button on employers liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/contents-cover"
    When User select £50000 for contents cover
    And User click next button on contents cover page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/building-cover"
    When User click next button on building cover page
    And User click next button on summary model pop up
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/chat"
    When User click Yes I hhave an existing policy
    And User click next button for policy start date
    And User click call me now button
    And User enter "<BusinessName>" in business name field
    And User enter "<FullName>" in full name field
    And User enter "<PhoneNumber>" in phone number field
    And User enter "<Email>" in email field
    And User enter call me button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/confirmation"

    Examples: 
      | PostCode | Address    | BusinessType       | BusinessName | FullName     | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Clothing Retailing | Swiss T      | Swiss Cheese | 07547583921 | swisscheese@zh.com |

  @TestInsuranceOfficeFurnitureRetailingCategoryG
  Scenario Outline: Furniture Retailing Happy Path Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Now we'll show you some risks that your business might need cover for."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-allergies"
    When User click Yes to A customer has an allergic reaction caused by something in your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/tools"
    And User click Yes to Your equipment gets stolen or damaged?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/equipment-fire"
    And User click Yes to Your equipment is damaged in a fire?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-injuries"
    And User click Yes to A member of staff injures a customer?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/burglary"
    And User click Yes to Your computer and electrical equipment gets stolen in a burglary?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/employee-fall"
    And User click Yes to A member of staff trips and injures themselves inside your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/staff-allergies"
    And User click Yes to A member of staff has an allergic reaction whilst carrying out their work?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/flood"
    And User click Yes to A flood causes damage to your building
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/property-damage"
    And User click Yes to Someone vandalises your building
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/public-liability"
    When User click £1 million button
    And User click next button on the public liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/employers-liability"
    When User click next button on employers liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/contents-cover"
    When User select £50000 for contents cover
    And User click next button on contents cover page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/building-cover"
    When User click next button on building cover page
    And User click next button on summary model pop up
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/chat"
    When User click Yes I hhave an existing policy
    And User click next button for policy start date
    And User click call me now button
    And User enter "<BusinessName>" in business name field
    And User enter "<FullName>" in full name field
    And User enter "<PhoneNumber>" in phone number field
    And User enter "<Email>" in email field
    And User enter call me button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/confirmation"

    Examples: 
      | PostCode | Address    | BusinessType               | BusinessName | FullName     | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Office Furniture Retailing | Swiss T      | Swiss Cheese | 07547583921 | swisscheese@zh.com |

  @TestInsuranceChemistCategoryG
  Scenario Outline: Chemist Happy Path Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Now we'll show you some risks that your business might need cover for."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-allergies"
    When User click Yes to A customer has an allergic reaction caused by something in your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/tools"
    And User click Yes to Your equipment gets stolen or damaged?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/equipment-fire"
    And User click Yes to Your equipment is damaged in a fire?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-injuries"
    And User click Yes to A member of staff injures a customer?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/burglary"
    And User click Yes to Your computer and electrical equipment gets stolen in a burglary?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/employee-fall"
    And User click Yes to A member of staff trips and injures themselves inside your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/staff-allergies"
    And User click Yes to A member of staff has an allergic reaction whilst carrying out their work?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/flood"
    And User click Yes to A flood causes damage to your building
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/property-damage"
    And User click Yes to Someone vandalises your building
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/public-liability"
    When User click £1 million button
    And User click next button on the public liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/employers-liability"
    When User click next button on employers liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/contents-cover"
    When User select £50000 for contents cover
    And User click next button on contents cover page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/building-cover"
    When User click next button on building cover page
    And User click next button on summary model pop up
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/chat"
    When User click Yes I hhave an existing policy
    And User click next button for policy start date
    And User click call me now button
    And User enter "<BusinessName>" in business name field
    And User enter "<FullName>" in full name field
    And User enter "<PhoneNumber>" in phone number field
    And User enter "<Email>" in email field
    And User enter call me button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/confirmation"

    Examples: 
      | PostCode | Address    | BusinessType | BusinessName | FullName     | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Chemist      | Swiss T      | Swiss Cheese | 07547583921 | swisscheese@zh.com |

  @TestInsuranceFloristsCategoryG
  Scenario Outline: Florists Happy Path Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Now we'll show you some risks that your business might need cover for."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-allergies"
    When User click Yes to A customer has an allergic reaction caused by something in your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/tools"
    And User click Yes to Your equipment gets stolen or damaged?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/equipment-fire"
    And User click Yes to Your equipment is damaged in a fire?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/customer-injuries"
    And User click Yes to A member of staff injures a customer?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/burglary"
    And User click Yes to Your computer and electrical equipment gets stolen in a burglary?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/employee-fall"
    And User click Yes to A member of staff trips and injures themselves inside your business?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/staff-allergies"
    And User click Yes to A member of staff has an allergic reaction whilst carrying out their work?
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/flood"
    And User click Yes to A flood causes damage to your building
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/risk/property-damage"
    And User click Yes to Someone vandalises your building
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/public-liability"
    When User click £1 million button
    And User click next button on the public liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/employers-liability"
    When User click next button on employers liability page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/contents-cover"
    When User select £50000 for contents cover
    And User click next button on contents cover page
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/cover/building-cover"
    When User click next button on building cover page
    And User click next button on summary model pop up
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/chat"
    When User click Yes I hhave an existing policy
    And User click next button for policy start date
    And User click call me now button
    And User enter "<BusinessName>" in business name field
    And User enter "<FullName>" in full name field
    And User enter "<PhoneNumber>" in phone number field
    And User enter "<Email>" in email field
    And User enter call me button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/confirmation"

    Examples: 
      | PostCode | Address    | BusinessType | BusinessName | FullName     | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Florist  | Swiss T      | Swiss Cheese | 07547583921 | swisscheese@zh.com |

  @TestInsuranceRestaurantLicensedCategoryF
  Scenario Outline: Restaurant Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType | FullName     | BusinessName   | PhoneNumber | Email                               |
      | KT6 4DU  | Fredericks | Restaurant   | Bugzy Malone | B.Inspired Ltd | 02084443829 | bugzymalonebinspire@sinsdoi.crefios |

  @TestInsuranceCafeCategoryF
  Scenario Outline: Cafe Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType | FullName        | BusinessName    | PhoneNumber | Email                           |
      | KT6 4DU  | Fredericks | Cafe         | Taiwan Williams | Routine JSK Ltd | 07934322222 | stepssilvergrabs@hitthenis.oele |

  @TestInsuranceHousingDevelopersCategoryE
  Scenario Outline: Housing Developers Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType       | FullName      | BusinessName  | PhoneNumber | Email                   |
      | KT6 4DU  | Fredericks | Housing developers | Payable Right | Law Firmative | 02029384758 | turkeinsdd@nusisoo.cosk |

  @TestInsurancePropertyOwnerCategoryE
  Scenario Outline: Insurance Property Owner Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType   | FullName     | BusinessName   | PhoneNumber | Email                    |
      | KT6 4DU  | Fredericks | Property owner | Chip Dailest | GT Matte Black | 07830000005 | jdzmediasnis@colhgds.ppp |

  @TestInsuranceAccountancyCategoryD
  Scenario Outline: Accountancy Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType | FullName   | BusinessName  | PhoneNumber | Email                |
      | KT6 4DU  | Fredericks | Accountancy  | Jeff Billi | Amason Primed | 02024238459 | teetousise@drasn.iud |

  @TestInsuranceAdoptionSocietyCategoryD
  Scenario Outline: Adoption Society Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType     | FullName     | BusinessName       | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Adoption society | Oyster North | Hurlingham Beckens | 07893847563 | huithcuh@usesa.opd |

  @TestInsuranceHostelCategoryC
  Scenario Outline: Insurance Hostel Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType | FullName     | BusinessName | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Hostel       | Dumur Bluchi | Jest Plan XT | 02093847586 | eugene@bossed.mond |

  @TestInsuranceSelfCateringAccommodationCategoryC
  Scenario Outline: Self Catering Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType                | FullName      | BusinessName | PhoneNumber | Email              |
      | KT6 4DU  | Fredericks | Self-catering accommodation | Enrico Tacito | Chess Made   | 07895741111 | simalone@popeye.ks |

  @TestInsuranceSelfConveyancingCategoryB
  Scenario Outline: Self Conveyancing Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType | FullName        | BusinessName      | PhoneNumber | Email                   |
      | KT6 4DU  | Fredericks | Conveyancing | Craig Donaldson | Ambushed Traidwar | 02003948888 | grimebeaton@radio93.plc |

  @TestInsuranceCraneHiringCategoryB
  Scenario Outline: Crane Hiring Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType | FullName     | BusinessName     | PhoneNumber | Email                  |
      | KT6 4DU  | Fredericks | Crane hiring | Mason Discik | Scott Disick Ltd | 07922320240 | uuiosd328932@isdo.xmdc |

  @TestInsuranceDomiciliaryCareProviderCategoryA
  Scenario Outline: Domiciliary Care Provider Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType              | FullName      | BusinessName | PhoneNumber | Email                       |
      | KT6 4DU  | Fredericks | Domiciliary care provider | Dexter Bryant | NSA Avante   | 02081182377 | rumbleeeaaston@dmdi0we9.moa |

  @TestInsuranceFestivalOrganiserCategoryA
  Scenario Outline: Fesitival Organiser Referred Call Now
    Given User is on homepage "https://smart-insurance-qa.makeitcheaper.com/"
    And Copy content "Get a tailored insurance policy for your business" is present as heading level one at the top of the page
    And Copy content "Your business insurance sorted with help from our tech-enabled consultants." is present as heading level two at the top of the page
    And Copy content "We work with top UK business insurers" is present as heading level two in business insurers section
    And Copy content "How it works" is present as heading level one in how it works section
    And Copy content "Kickstart your Make It Cheaper journey now by tailoring your business insurance policy for your specific needs. No more. No less." is present as heading level two in how it works section
    And Copy content "About Make It Cheaper" is present as heading level two in about section
    And Copy content "We work with top UK insurers" is present as heading level two in insurers providers section
    When User enter "<PostCode>" into postcode search textbox
    And User click find business button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/question/postcode"
    And Copy content "What is your business address?" is present at top of whats your business address page
    And Copy content "We need a bit of information to get started." sub header is present at top of whats your business address page
    When User enter "<Address>" into address search field textbox
    And User click on found address fredericks
    Then current is "https://smart-insurance-qa.makeitcheaper.com/question/trade"
    And Copy content "What does your business do?" is present at top of whats does your business do page
    And Copy content "This helps us understand the cover we can offer you." sub header is present at top of whats does your business do page
    When User enter "<BusinessType>" into business type text field
    And User click on the business type found
    And copy content at bottom of page should be "Great. Let's find the best way to tailor your policy."
    And User click next button
    Then current url is "https://smart-insurance-qa.makeitcheaper.com/speak-to-us"
    When User click the call me now button on speak to us page
    And User enter full name "<FullName>" on speak to us page
    And User enter business name "<BusinessName>" on speak to us page
    And User enter phone number "<PhoneNumber>" on speak to us page
    And User enter email "<Email>" on speak to us page
    And User click enter button on speak to us page

    Examples: 
      | PostCode | Address    | BusinessType       | FullName         | BusinessName  | PhoneNumber | Email               |
      | KT6 4DU  | Fredericks | Festival organiser | Huxley Ventdetta | Charin Srinsd | 07777777777 | apthsks@pathdm.coss |
