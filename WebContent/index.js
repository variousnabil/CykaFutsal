$(window).ready(function(){
  $("#desc1, #desc2, #desc3").hide();
  //home page animation
  $("#hometitle").addClass("animated bounceInUp");
  $("button.homeButton").addClass("animated bounceInUp");
  //slide toggle on TRAINERS
  $("#trainer1").click(function(){
    $("#desc1").slideToggle();
  });
  $("#trainer2").click(function(){
    $("#desc2").slideToggle();
  });
  $("#trainer3").click(function(){
    $("#desc3").slideToggle();
  });

  //smooth scroll anchor
  $("#link1").on("click", function(){
    $path=$("#box1").offset().top-100;
    $("html").animate({scrollTop:$path},1000);
  });
  $("#link2").on("click", function(){
    $path=$("#box2").offset().top-100;
    $("html").animate({scrollTop:$path},1000);
  });
  $("#link3").on("click", function(){
    $path=$("#box3").offset().top-100;
    $("html").animate({scrollTop:$path},1000);
  });
  $("#link4").on("click", function(){
    $path=$("#box4").offset().top-100;
    $("html").animate({scrollTop:$path},1000);
  });
  $("#link5").on("click", function(){
    $path=$("#box5").offset().top-100;
    $("html").animate({scrollTop:$path},1000);
  });
  $("#link6").on("click", function(){
    $path=$("#box7").offset().top-100;
    $("html").animate({scrollTop:$path},1000);
  });
  $("#link7").on("click", function(){
  $path=$("#box5").offset().top-100;
  $("html").animate({scrollTop:$path},1000);
  });
  $("#link8").on("click", function(){
  $path=$("#box6").offset().top-100;
  $("html").animate({scrollTop:$path},1000);
  });

  //menu
  $(window).on("scroll", function(){
    if($(window).scrollTop()){
      $("nav").addClass('black');
    }else {
      $("nav").removeClass('black');
    }
  });
});

//validation for both form (joinclass&bookfield)
function changeColor(val){
  if (val.value=="" || val.value==null) {
    val.style.background="pink";
  } else {
    val.style.background="white";
  }
}

//validate the totalprice in form2
function changetot(){
	alert("the total can't be change!");
	calculateTotal();
}

//validation for form join class
function compareDate(){
  var date = new Date();
  var day = date.getDate();
  var month = date.getMonth()+1;
  var year = date.getFullYear();
  var output = month+"/"+day+"/"+year;
  if (Date.parse(document.form1.bookdate.value)<Date.parse(output)) {
      alert("can't input past date!");
    document.form2.bookdate.value = output;
  }
}

function show(){
  var name = document.form1.usrname.value;
  var email = document.form1.usremail.value;
  var hp = document.form1.usrHP.value;
  var joindate = document.form1.date.value;
  var month = document.form1.usrMonth.value;
  var total = document.form1.totprice1.value;

  var chooseTrainer = document.form1.choosetrainer.value;
  var choosePlan = document.form1.chooseplan.value;
  if ((chooseTrainer=="Select Your Trainers") || (choosePlan=="Select Your Plans")) {
    alert("Please Choose Trainers or Plans!");
    return false;
  } else {
    alert("Registration Successful!\n" +"Here are Your Detail : \n"+
    "\nName : " + name +
    "\nEmail : " + email +
    "\nNo HP : " + hp +
    "\nJoin Date : " + joindate +
    "\nClass Trainer : " + chooseTrainer +
    "\nClass Plan : " + choosePlan +
    "\nFor How many month : " + month + " Month" +
    "\nTotal Price : " + total);
    return true;
  }
}

function totPrice(){
  var totMonth = document.form1.usrMonth.value;
  var totPrice = 100000 * totMonth;
  document.form1.totprice1.value = totPrice;
}

//validation for form book field
function compareDate1(){
  var date = new Date();
  var day = date.getDate();
  var month = date.getMonth()+1;
  var year = date.getFullYear();
  var output = month+"/"+day+"/"+year;
  if (Date.parse(document.form2.date.value)<Date.parse(output)) {
      alert("can't input past date!");
    document.form2.date.value = output;
  }
}

function compareField(){
  if (document.form2.kindfield[0].checked == true) {
    document.getElementById("price").value = 100000;
  } else if (document.form2.kindfield[1].checked == true) {
    document.getElementById("price").value = 80000;
  }
}

function calculateTotal(){
  var hour = document.form2.bookhour.value
  var pricefield = document.getElementById("price").value
  document.form2.totalprice.value = hour * pricefield;
}
function showDetail(){
  var name = document.form2.name.value;
  var email = document.form2.email.value;
  var hp = document.form2.hp.value;
  var bookdate = document.form2.bookdate.value;
  var kindfield = document.form2.kindfield.value;
  var price = document.getElementById("price").value;
  var hour = document.form2.bookhour.value;
  var total = document.form2.totalprice.value;

  if (kindfield=="" || kindfield==null || kindfield==undefined) {
    alert("Please select kind of field you want..");
    return false;
  } else {
    alert("Registration Successful!\n" +"Here are Your Detail : \n"+
    "\nName : " + name +
    "\nEmail : " + email +
    "\nNo HP : " + hp +
    "\nBook Date : " + bookdate +
    "\nKind of Field : " + kindfield +
    "\nPrice : " + price +
    "\nFor How many hour : " + hour + " hour" +
    "\nTotal Price : " + total);
    return true;
  }
}
