Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/header'

  get 'static_pages/footer'

  get 'static_pages/home'

  get 'static_pages/authors'
  
  get 'static_pages/aboutus'
get 'ages/problems'
get 'ages/formula'
  resources :'ages'
  get 'ages/new'
  resources :'static_pages'
  root 'static_pages#home'

#For Areas Related Problems
get 'areas/problems'
get 'areas/formula'
  resources :'areas'

#For Averages Related Problems
get 'averages/problems'
get 'averages/formula'
  resources :'averages'

#For BankersDiscount Related Problems
get 'bankersdiscounts/problems'
get 'bankersdiscounts/formula'
  resources :'bankersdiscounts'

#For boatsandstreams Related Problems
get 'boatsandstreams/problems'
get 'boatsandstreams/formula'
  resources :'boatsandstreams'  
#For calendars Related Problems
get 'calendars/problems'
get 'calendars/formula'
  resources :'calendars' 
#For chainrules Related Problems
get 'chainrules/problems'
get 'chainrules/formula'
  resources :'chainrules' 
#For clocks Related Problems
get 'clocks/problems'
get 'clocks/formula'
  resources :'clocks' 
#For decimalfractions Related Problems
get 'decimalfractions/problems'
get 'decimalfractions/formula'
  resources :'decimalfractions' 
#For hcfandlcms Related Problems
get 'hcfandlcms/problems'
get 'hcfandlcms/formula'
  resources :'hcfandlcms' 
#For heightanddistances Related Problems
get 'heightanddistances/problems'
get 'heightanddistances/formula'
  resources :'heightanddistances' 
#For logarithms Related Problems
get 'logarithms/problems'
get 'logarithms/formula'
  resources :'logarithms' 
#For mixtureandalligations Related Problems
get 'mixtureandalligations/problems'
get 'mixtureandalligations/formula'
  resources :'mixtureandalligations' 
#For numbers Related Problems
get 'numbers/problems'
get 'numbers/formula'
  resources :'numbers' 
#For partnerships Related Problems
get 'partnerships/problems'
get 'partnerships/formula'
  resources :'partnerships'
#For percentages Related Problems
get 'percentages/problems'
get 'percentages/formula'
  resources :'percentages'
#For permutationandcombinations Related Problems
get 'permutationandcombinations/problems'
get 'permutationandcombinations/formula'
  resources :'permutationandcombinations'
#For pipesandciserns Related Problems
get 'pipesandciserns/problems'
get 'pipesandciserns/formula'
  resources :'pipesandciserns'
#For probabilitys Related Problems
get 'probabilitys/problems'
get 'probabilitys/formula'
  resources :'probabilitys'
#For profitandloss Related Problems
get 'profitandloss/problems'
get 'profitandloss/formula'
  resources :'profitandloss'
#For racesandgames Related Problems
get 'racesandgames/problems'
get 'racesandgames/formula'
  resources :'racesandgames'
#For seriesoddmanouts Related Problems
get 'seriesoddmanouts/problems'
get 'seriesoddmanouts/formula'
  resources :'seriesoddmanouts'
#For seriesfindthemissingnumbers Related Problems
get 'seriesfindthemissingnumbers/problems'
get 'seriesfindthemissingnumbers/formula'
  resources :'seriesfindthemissingnumbers'
#For simpleinterests Related Problems
get 'simpleinterests/problems'
get 'simpleinterests/formula'
  resources :'simpleinterests'
#For compoundinterests Related Problems
get 'compoundinterests/problems'
get 'compoundinterests/formula'
  resources :'compoundinterests'
#For simplifications Related Problems
get 'simplifications/problems'
get 'simplifications/formula'
  resources :'simplifications'
#For squareandcuberoots Related Problems
get 'squareandcuberoots/problems'
get 'squareandcuberoots/formula'
  resources :'squareandcuberoots'
#For stocksandshares Related Problems
get 'stocksandshares/problems'
get 'stocksandshares/formula'
  resources :'stocksandshares'
#For surdsandindices Related Problems
get 'surdsandindices/problems'
get 'surdsandindices/formula'
  resources :'surdsandindices'

#For timeanddistances Related Problems
get 'timeanddistances/problems'
get 'timeanddistances/formula'
  resources :'timeanddistances'
#For timeandworks Related Problems
get 'timeandworks/problems'
get 'timeandworks/formula'
  resources :'timeandworks'
#For train Related Problems
get 'trains/problems'
get 'trains/formula'
  resources :'trains'
 

end
