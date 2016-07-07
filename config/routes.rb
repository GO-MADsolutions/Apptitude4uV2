Rails.application.routes.draw do

 
  #namespace :api, :defaults => {:format => :json} do
   # namespace :v1 do

    #  controller :ages, path: '/ages/test' do
     #   match 'post_action', via: [ :post, :options]
     # end
      
    #end
  #end
  
  get 'cors/preflight'

  devise_for :users


  get 'static_pages/header'

  get 'static_pages/footer'

  get 'static_pages/home'

  get 'static_pages/authors'
  get 'static_pages/calculator'
  get 'static_pages/aboutus'
get 'ages/problems'
get 'ages/formula'
get 'ages/test'
get 'ages/getfortest'
get 'ages/demoreq'
  
#match 'ages', to: 'ages#getfortest', via: [:options]

resources :'ages'
get 'ages/new'
match '/ages/test', :to => proc {|env| [200, {'Content-Type' => 'text/plain'}, ["DEMO-->"]] },
             :via => [:get, :post, :put, :delete, :options, :head, :patch]
  resources :'static_pages'
  root 'static_pages#home'

#For Areas Related Problems
get 'areas/problems'
get 'areas/formula'
get 'areas/test'
get 'areas/getfortest'
  resources :'areas'

#For Averages Related Problems
resources :'averages'
get 'averages/problems'
get 'averages/formula'
get 'averages/test'
get 'averages/getfortest'
  

#For BankersDiscount Related Problems
get 'bankersdiscounts/problems'
get 'bankersdiscounts/formula'
get 'bankersdiscounts/test'
get 'bankersdiscounts/getfortest'
  resources :'bankersdiscounts'

#For boatsandstreams Related Problems
get 'boatsandstreams/problems'
get 'boatsandstreams/formula'
get 'boatsandstreams/test'
get 'boatsandstreams/getfortest'
  resources :'boatsandstreams'  
#For calendars Related Problems
get 'calendars/problems'
get 'calendars/formula'
get 'calendars/test'
get 'calendars/getfortest'
  resources :'calendars' 
#For chainrules Related Problems
get 'chainrules/problems'
get 'chainrules/formula'
get 'chainrules/test'
get 'chainrules/getfortest'
  resources :'chainrules' 
#For clocks Related Problems
get 'clocks/problems'
get 'clocks/formula'
get 'clocks/test'
get 'clocks/getfortest'
  resources :'clocks' 
#For decimalfractions Related Problems
get 'decimalfractions/problems'
get 'decimalfractions/formula'
get 'decimalfractions/test'
get 'decimalfractions/getfortest'
  resources :'decimalfractions' 
#For hcfandlcms Related Problems
get 'hcfandlcms/problems'
get 'hcfandlcms/formula'
get 'hcfandlcms/test'
get 'hcfandlcms/getfortest'
  resources :'hcfandlcms' 
#For heightanddistances Related Problems
get 'heightanddistances/problems'
get 'heightanddistances/formula'
get 'heightanddistances/test'
get 'heightanddistances/getfortest'
  resources :'heightanddistances' 
#For logarithms Related Problems
get 'logarithms/problems'
get 'logarithms/formula'
get 'logarithms/test'
get 'logarithms/getfortest'
  resources :'logarithms' 
#For mixtureandalligations Related Problems
get 'mixtureandalligations/problems'
get 'mixtureandalligations/formula'
get 'mixtureandalligations/test'
get 'mixtureandalligations/getfortest'
  resources :'mixtureandalligations' 
#For numbers Related Problems
get 'numbers/problems'
get 'numbers/formula'
get 'numbers/test'
get 'numbers/getfortest'
  resources :'numbers' 
#For partnerships Related Problems
get 'partnerships/problems'
get 'partnerships/formula'
get 'partnerships/test'
get 'partnerships/getfortest'
  resources :'partnerships'
#For percentages Related Problems
get 'percentages/problems'
get 'percentages/formula'
get 'percentages/test'
get 'percentages/getfortest'
  resources :'percentages'
#For permutationandcombinations Related Problems
get 'permutationandcombinations/problems'
get 'permutationandcombinations/formula'
get 'permutationandcombinations/test'
get 'permutationandcombinations/getfortest'
  resources :'permutationandcombinations'
#For pipesandciserns Related Problems
get 'pipesandciserns/problems'
get 'pipesandciserns/formula'
get 'pipesandciserns/test'
get 'pipesandciserns/getfortest'
  resources :'pipesandciserns'
#For probabilitys Related Problems
get 'probabilitys/problems'
get 'probabilitys/formula'
get 'probabilitys/test'
get 'probabilitys/getfortest'
  resources :'probabilitys'
#For profitandloss Related Problems
get 'profitandloss/problems'
get 'profitandloss/formula'
get 'profitandloss/test'
get 'profitandloss/getfortest'
  resources :'profitandloss'
#For racesandgames Related Problems
resources :'racesandgames'
get 'racesandgames/problems'
get 'racesandgames/formula'
get 'racesandgames/test'
get 'racesandgames/getfortest'
  
#For seriesoddmanouts Related Problems
get 'seriesoddmanouts/problems'
get 'seriesoddmanouts/formula'
get 'seriesoddmanouts/test'
get 'seriesoddmanouts/getfortest'
  resources :'seriesoddmanouts'
#For seriesfindthemissingnumbers Related Problems
get 'seriesfindthemissingnumbers/problems'
get 'seriesfindthemissingnumbers/formula'
get 'seriesfindthemissingnumbers/test'
get 'seriesfindthemissingnumbers/getfortest'
  resources :'seriesfindthemissingnumbers'
#For simpleinterests Related Problems
get 'simpleinterests/problems'
get 'simpleinterests/formula'
get 'simpleinterests/test'
get 'simpleinterests/getfortest'
  resources :'simpleinterests'
#For compoundinterests Related Problems
get 'compoundinterests/problems'
get 'compoundinterests/formula'
get 'compoundinterests/test'
get 'compoundinterests/getfortest'
  resources :'compoundinterests'
#For simplifications Related Problems
get 'simplifications/problems'
get 'simplifications/formula'
get 'simplifications/test'
get 'simplifications/getfortest'
  resources :'simplifications'
#For squareandcuberoots Related Problems
get 'squareandcuberoots/problems'
get 'squareandcuberoots/formula'
get 'squareandcuberoots/test'
get 'squareandcuberoots/getfortest'
  resources :'squareandcuberoots'
#For stocksandshares Related Problems
get 'stocksandshares/problems'
get 'stocksandshares/formula'
get 'stocksandshares/test'
get 'stocksandshares/getfortest'
  resources :'stocksandshares'
#For surdsandindices Related Problems
get 'surdsandindices/problems'
get 'surdsandindices/formula'
get 'surdsandindices/test'
get 'surdsandindices/getfortest'
  resources :'surdsandindices'

#For timeanddistances Related Problems
get 'timeanddistances/problems'
get 'timeanddistances/formula'
get 'timeanddistances/test'
get 'timeanddistances/getfortest'
  resources :'timeanddistances'
#For timeandworks Related Problems
get 'timeandworks/problems'
get 'timeandworks/formula'
get 'timeandworks/test'
get 'timeandworks/getfortest'
  resources :'timeandworks'
#For train Related Problems

get 'trains/problems'
get 'trains/formula'
get 'trains/test'
get 'trains/getfortest'
  resources :'trains'

  

end
