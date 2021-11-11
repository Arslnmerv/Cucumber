
Feature:  US1004 ebay sayfasinda kelime arama

  Scenario:  TC08 kullanici ebayde istedigi kelimeyi aratip test eder.
    #Bu test calismaz
    Given  kullanici "ebayUrl" sayfasina gider
    Then  "nutella" icin arama yapar
    And sonucun "nutella" icerdigini test eder
    Then sayfayi kapatir

    # burada tum stepdefinitionlar tanimli gibi gorunse de testimiz calismaz
   #cunku arama yapar ve sonucu test eder stepdefinitionlari amazon sayfasina gore locate edilmisti
  #burada yeniden locate etmemiz gerekirken ayni cumleyi yazdigimiz icin
   #bizden dtepdefinition istemedi
  #bu yuzden gherkin ile yazdigimiz cumlelerin tam tanimlayici olmasi onemlidir.