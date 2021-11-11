@Paralel2
Feature: US1003 Kullanici istedigi kelime icin arama yapip sonucu test eder.


  Scenario: TC07 Istenen kelimenin oldugunu test etme
  Given kullanici "amazonUrl" sayfasina gider
  Then "ipod" icin arama yapar
  Then sonucun "ipod" icerdigini test eder
  And sayfayi kapatir

 # parametre olarak yazdigimiz kelimeyi step definitionda String olarak kullanacaksa
 # ne yazdigimiz onemli degil   "ipod" gibi --> dynamic code


  #Ancak eger parametre olarak yazidigimiz kelimeyi configuration.pripertiesden alacaksak
  #burada yazdigimiz parametrenin configuration.propertiesdeki yazim ile ayni olmasi gerekir
  # "amazonUrl" gibi, eger yazim farkli olursa nullPointerException verir

  #buradaki parametre ile configuration.properties deki key ayni olduktan sonra
  #stepdefinitionda parametre adi olarak ne yaazdigiimziin bir onemi yok