(function()
{
var demoApp = angular.module("demo", ['ngRoute', 'ngResource', 'ngSanitize']);

demoApp.controller("tester", function($scope, $resource, $http, $sce, $rootScope, $location)
    {
   
    $rootScope.location = $location.absUrl();
    
    var url = $rootScope.location.slice(0,-11).concat("getfortest");
    // alert(url);
     var getpost = getpost;
    
    
     
    
    
   
   var posts = $http.get(url);
    posts.then(function(result)
{
      
  $scope.poster=result.data;
  $scope.demo = result.data;
  
$scope.questionAnswered = questionAnswered;
$scope.pro = [];
$scope.setActiveQuestion = setActiveQuestion;
$scope.possibilities = [];
var correctAnswers= [];
$scope.selectAnswer = selectAnswer;
$scope.result = [];
$scope.activequestion = 0;
var numQuestionAnswered=0;
$scope.error = false;
$scope.finalise = false;
$scope.questionpart = true;       
$scope.showCorrected = false;
$scope.score =0;
$scope.finaliseAnswer = finaliseAnswer;
        
        
        for(i=0;i<$scope.demo.length;i++){
         $scope.possibilities.push({
        "answera": $sce.trustAsHtml($scope.demo[i].optionA),
        "answerb": $sce.trustAsHtml($scope.demo[i].optionB),
        "answerc": $sce.trustAsHtml($scope.demo[i].optionC),
        "answerd": $sce.trustAsHtml($scope.demo[i].optionD) 
            
    });
        }
        
       
       for(i=0;i<$scope.demo.length;i++)
            {
                if($scope.demo[i].answer === "A")
                    {
                        correctAnswers.push(1);
                    }
                else if($scope.demo[i].answer === "B")
                    {
                        correctAnswers.push(2);
                    }
                else if($scope.demo[i].answer === "C")
                    {
                        correctAnswers.push(3);
                    }
                else if($scope.demo[i].answer === "D")
                    {
                        correctAnswers.push(4);
                    }
            }
        
      
        
  for(i= 0; i<$scope.demo.length;i++)
{
    
  $scope.pro.push({
"question": $sce.trustAsHtml($scope.demo[i].question),

"possibilities": $scope.possibilities,
 

"answer": $sce.trustAsHtml($scope.demo[i].answer),
"solution": $sce.trustAsHtml($scope.demo[i].solution),
"selected": null,
"correctoption":null,
"selectedoption":null,
"correct": null
      
});
   

}
        //Defining selectAnswer
        function selectAnswer(index,activequestion)
        {
            $scope.pro[$scope.activequestion].selected = index;
            
        }
        
        //Defining setActiveQuestion
        
        function setActiveQuestion(index){
            if(index === undefined)
                {
            var breakOut = false;
            var quizLength = $scope.pro.length-1;
           
            while(!breakOut)
                {
                    
                 $scope.activequestion =  $scope.activequestion < quizLength ? ++($scope.activequestion):0;
                    if($scope.activequestion === 0)
                        {
                            $scope.error = true;
                        }
                if($scope.pro[$scope.activequestion].selected===null)
                        {
                            breakOut = true;
                        }
                }
                    
                }
            else{
                    $scope.activequestion = index;
                }
            
        }
        
        //Definging finaliseAnswer
        
       function finaliseAnswer()
        {
            
            for(i=0; i<$scope.demo.length;i++)
                {
                   
                    if($scope.pro[i].selected === correctAnswers[i])
                        {
                            $scope.pro[i].correct = "correct";
                            $scope.pro[i].correctoption = correctAnswers[i];
                            $scope.pro[i].selectedoption = "rightselected";
                            $scope.score++;
                        }
                    else{
                        $scope.pro[i].correct = "wrong";
                        $scope.pro[i].selectedoption = $scope.pro[i].selected;
                        $scope.pro[i].correctoption = correctAnswers[i];
                    }
                }
            $scope.showCorrected = true;
            $scope.finalise = false;
            $scope.questionpart = false;
            $scope.activequestion = 0;
        }
        
        
        //Defining questionAnswered
        function questionAnswered()
        {
            var quizLength = $scope.pro.length;
            
            if($scope.pro[$scope.activequestion].selected !== null)
                {
                    numQuestionAnswered++;
                    if(numQuestionAnswered >= quizLength)
                        {
                           for(var i=0; i< quizLength; i++)
                               {
                                   if($scope.pro[i].selected === null)
                                       {
                                           $scope.setActiveQuestion(i);
                                           return;
                                       }
                               }
                            $scope.error = false;
                            $scope.finalise = true;
                            return;
                        }
                }
            $scope.setActiveQuestion();
        }
 
});
    
});

// END OF AGES TEST


demoApp.config(function($routeProvider){
   // $httpProvider.defaults.useXDomain = true;
   //     delete $httpProvider.defaults.headers.common['X-Requested-With'];

 $routeProvider
  
.when('/ages/test', {
  templateUrl: 'app/views/ages/test.html.erb',
  controller: "tester" })
 .when('/areas/test', {
  templateUrl: 'app/views/areas/test.html.erb',
  controller: "tester" })
.when('/averages/test', {
  templateUrl: 'app/views/averages/test.html.erb',
  controller: "tester" })
.when('/bankersdiscounts/test', {
  templateUrl: 'app/views/bankersdiscount/test.html.erb',
  controller: "tester" })
.when('/boatsandstreams/test', {
  templateUrl: 'app/views/boatsandstreams/test.html.erb',
  controller: "tester" })
.when('/calendars/test', {
  templateUrl: 'app/views/calendars/test.html.erb',
  controller: "tester" })
.when('/chainrules/test', {
  templateUrl: 'app/views/chainrules/test.html.erb',
  controller: "tester" })
.when('/clocks/test', {
  templateUrl: 'app/views/clocks/test.html.erb',
  controller: "tester" })
.when('/compoundinterests/test', {
  templateUrl: 'app/views/compoundinterests/test.html.erb',
  controller: "tester" })
.when('/cors/test', {
  templateUrl: 'app/views/cors/test.html.erb',
  controller: "tester" })
.when('/decimalfractions/test', {
  templateUrl: 'app/views/decimalfractions/test.html.erb',
  controller: "tester" })
.when('/hcfandlcms/test', {
  templateUrl: 'app/views/hcfandlcms/test.html.erb',
  controller: "tester" })
.when('/heightanddistances/test', {
  templateUrl: 'app/views/heightanddistances/test.html.erb',
  controller: "tester" })
.when('/logarithms/test', {
  templateUrl: 'app/views/logarithms/test.html.erb',
  controller: "tester" })
.when('/mixtureandalligation/test', {
  templateUrl: 'app/views/mixtureandalligation/test.html.erb',
  controller: "tester" })
.when('/numbers/test', {
  templateUrl: 'app/views/numbers/test.html.erb',
  controller: "tester" })
.when('/partnerships/test', {
  templateUrl: 'app/views/partnerships/test.html.erb',
  controller: "tester" })
.when('/percentages/test', {
  templateUrl: 'app/views/percentages/test.html.erb',
  controller: "tester" })
.when('/permutationandcombinations/test', {
  templateUrl: 'app/views/permutationandcombinations/test.html.erb',
  controller: "tester" })
.when('/pipesandcisterns/test', {
  templateUrl: 'app/views/pipesandcisterns/test.html.erb',
  controller: "tester" })
.when('/probabilitys/test', {
  templateUrl: 'app/views/probabilitys/test.html.erb',
  controller: "tester" })
.when('/profitandloss/test', {
  templateUrl: 'app/views/profitandloss/test.html.erb',
  controller: "tester" })
.when('/racesandgames/test', {
  templateUrl: 'app/views/racesandgames/test.html.erb',
  controller: "tester" })
.when('/seriesfindmissingnumbers/test', {
  templateUrl: 'app/views/seriesfindmissingnumbers/test.html.erb',
  controller: "tester" })
.when('/seriesoddmanouts/test', {
  templateUrl: 'app/views/seriesoddmanouts/test.html.erb',
  controller: "tester" })
.when('/simpleinterests/test', {
  templateUrl: 'app/views/simpleinterests/test.html.erb',
  controller: "tester" })
.when('/simplifications/test', {
  templateUrl: 'app/views/simplifications/test.html.erb',
  controller: "tester" })
.when('/squareandcuberoots/test', {
  templateUrl: 'app/views/squareandcuberoots/test.html.erb',
  controller: "tester" })
.when('/stocksandshares/test', {
  templateUrl: 'app/views/stocksandshares/test.html.erb',
  controller: "tester" })
.when('/surdsandindices/test', {
  templateUrl: 'app/views/surdsandindices/test.html.erb',
  controller: "tester" })
.when('/timeanddistances/test', {
  templateUrl: 'app/views/timeanddistances/test.html.erb',
  controller: "tester" })
.when('/timeandworks/test', {
  templateUrl: 'app/views/timeandworks/test.html.erb',
  controller: "tester" })
.when('/trains/test', {
  templateUrl: 'app/views/trains/test.html.erb',
  controller: "tester" })


.when('/ages/problems', {
  templateUrl: 'app/views/ages/problems.html.erb',
  controller: "demoprobs" });


});


})();













