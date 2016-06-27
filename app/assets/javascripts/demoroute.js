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
            $scope.pro[activequestion].selected = index;
            
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

.when('/ages/problems', {
  templateUrl: 'app/views/ages/problems.html.erb',
  controller: "demoprobs" });


});


})();













