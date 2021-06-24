<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="datasirpi.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="Style.css" />
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <script src="https://kit.fontawesome.com/224da251cf.js" crossorigin="anonymous"></script>
</head>
<body>
    
    <div class="container ">
    <form id="form1">
    <h1></h1>
    <center><input type="file" class="inputfile" name="your_picture" id="your_picture"  onchange="readURL(this);" data-multiple-caption="{count} files selected" multiple />
                            <label for="your_picture">
     <div class="form-file">
   <input type="file" class="inputfile" name="your_picture" id="File1"  onchange="readURL(this);" data-multiple-caption="{count} files selected" multiple />
     <label for="your_picture">
     <figure>
     <img src="images/your-picture.png" alt="" class="your_picture_image">
      </figure>
      <span1 class="file-button">choose picture</span1>
    </label>
    </div></center>
                            <div class="form1-group">
                            <input type="text" name="first_name" id="first_name" placeholder="Candidate Name" required />
                            </div>
    <div class="form1-group">
    <input type="text"  name="last_name" required id="last_name" placeholder="panelist"  /></div>
    <div class="form1-group">
    <input type="date" name="date" id="date" placeholder="Date of interview" required /></div>
    <div class="btn-box">
    <button type="button" id="next1">Next</button>
    </div>
    </form>
    <form id="form2">
    <h4>select all the skills</h4>
    <br />
    <br />
    <div>
    <label>
    <input type ="checkbox"  name="" />
    <span>Angular</span>
    </label>
    
    <label>
    <input type ="checkbox"  name="" />
    <span>HTML5</span>
    </label>
    <br />
    <br />
    <label>
    <input type ="checkbox"  name="" />
    <span>Javascript</span>
    </label>
    <label>
    <input type ="checkbox"  name="" />
    <span>CSS</span>
    </label>
    </div>
    <div class="btn-box">
    <button type="button" id="pre1">previous</button>
    <button type="button"id="next2">Next</button>
    </div>
    </form>
    <form id="form3">
    <div>Expierence</div>
    <br />
    <div>Beginner<input type="radio" name="beg"/>	
    Intermidate<input type="radio" name="beg" />	
    Expert<input type="radio"  name="beg"/>	</div>
	<div>Leader Ability</div>
    <br />
    <div>Beginner<input type="radio" name="exp"/>	
    Intermidate<input type="radio" name="exp" />	
    Expert<input type="radio"  name="exp"/></div>	
	
    <div class="btn-box">
    <button type="button" id="pre2">previous</button>
    <button type="button" id="sub1">submit</button>
    </div>
    </form>
    
    <div>
    <h1>Evaluation Wizard</h1>
    </div>
    <div class="step-row">
    <div id="progress"></div>
    <div class="step-col"><small>Basic</small></div>
    <div class="step-col"><small>skills</small></div>
    <div class="step-col"><small>Scores</small></div>
    </div>
    </div>
    <script>
        var form1= document.getElementById("form1");
        var form2= document.getElementById("form2");
        var form3 = document.getElementById("form3");
        var next1 = document.getElementById("next1");
        var next2 = document.getElementById("next2");
        var pre1 = document.getElementById("pre1");
        var pre2 = document.getElementById("pre2");
        var progress = document.getElementById("progress");
        next1.onclick = function () {
            form1.style.left = "-450px";
            form2.style.left = "40px";
            progress.style.width = "240px";
        }
        pre1.onclick = function () {
            form1.style.left = "40px";
            form2.style.left = "450px";
            progress.style.width = "120px";
        }
        next2.onclick = function () {
            form2.style.left = "-450px";
            form3.style.left = "40px";
            progress.style.width = "360px";
        }
        pre2.onclick = function () {
            form2.style.left = "40px";
            form3.style.left = "450px";
            progress.style.width = "240px";
        }
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.your_picture_image')
                .attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
</body>
</html>
