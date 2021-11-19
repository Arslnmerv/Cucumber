@gmibank
Feature:  GMIBank Guvenli Sifre

  Background:
    Given  kullanici gmibank sayfasina gider
    Then  gmibank giris butonuna tiklar
    Then  gmibank register butonuna tiklar
    And   gmibank password kutusuna tiklar

  Scenario Outline:  Password Red Test
    Given "<password>" girer
    Then gmibank password strength red gorunur

    Examples:
      | password |
      | 1111         |
      | AAAA        |

  Scenario Outline:  Password Orange Test
    Given "<passwordOrange>" girer
    Then gmibank password strength orange gorunur

    Examples:
      | passwordOrange |
      | 11AA         |
      | AA22        |

  Scenario Outline:  Password Yellow Test
    Given "<passwordYellow>" girer
    Then gmibank password strength yellow gorunur

    Examples:
      | passwordYellow |
      | 11AAaa        |
      | AA22aa       |

  Scenario Outline:  Password LightGreen Test
    Given "<passwordLightGreen>" girer
    Then gmibank password strength lightgreen gorunur

    Examples:
      | passwordLightGreen |
      | 1Aa+|
      | A2a+|

  Scenario Outline:  Password Green Test
    Given "<passwordGreen>" girer
    Then gmibank password strength green gorunur

    Examples:
      | passwordGreen |
      | 1Aa+A!a|
      | A2a+B!b|