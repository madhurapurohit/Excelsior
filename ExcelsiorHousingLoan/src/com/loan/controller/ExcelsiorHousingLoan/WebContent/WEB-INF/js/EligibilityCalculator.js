function CalculateEligibility(){
    var income=document.getElementById("income").value;
    var calvalue= 60*(0.6*income);   
    document.getElementById("cal").value= calvalue;
}
//document.getElementById("cal").innerHTML= CalculateEligibility();