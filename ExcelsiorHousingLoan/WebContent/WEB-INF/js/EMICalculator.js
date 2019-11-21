function EMICalculator(){
  
    var loan=document.getElementById("loan_amt").value;
    var tenure= document.getElementById("tenure").value;
    var roi = document.getElementById("roi").value;
    var roim = roi/1200;
    var emi_cal = loan*roim*((Math.pow(1+roim ,tenure))/(Math.pow(1+roim,tenure)-1));
    document.getElementById("emi").value = emi_cal;

}