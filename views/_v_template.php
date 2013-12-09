<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php if(isset($title)) echo $title; ?></title>

	<meta charset="UTF-8">	
	
	<!--Common CSS/JS -->
	<!-- <link rel="stylesheet" href="/css/app.css" type="text/css"> -->
  <link href="/css/bootstrap.css" rel="stylesheet">
      <link href="/css/main.css" rel="stylesheet">

      
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="/js/jquery.js"></script>
      <script src="/js/jqueryUI.js"></script>
      <!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> -->

      <!-- Include all compiled plugins (below), or include individual files as needed -->
      <script src="/js/bootstrap.js"></script>
      <script src="/js/main.js"></script>

	<!-- Controller Specific JS/CSS -->
	<?php if(isset($client_files_head)) echo $client_files_head; ?>
	

</head>


<body>

<!-- Part 1: Wrap all page content here -->
      <div id="wrap">

       

      <?php if($user): ?>

            <div class="navigation"> 
                <div class = "logo">LIST GENERATOR</div>
              
                  <div class = "navigation_links">
                    <li><a href='/users/lists'>LISTS</a></li>
                    <li><a href='/users/logout'>LOGOUT</a></li>
                  </div>
            
            </div>         

   	  <?php endif; ?>	
        
         <!-- Begin page content -->
      
          
          
                      
           <!--  <p class="lead">Add, edit, style, and sort list items to create a working open items list, to-do list, or brief agenda.</p> -->
        <!-- <h1>Drag & Drop List Generator</h1> -->

        <?php if(isset($content)) echo $content; ?>

        <?php if(isset($client_files_body)) echo $client_files_body; ?>

       <!--end of container -->
          
      </div> <!--end of wrap-->

      <!--push-->
      <div id="push"></div>
      
      <!--Footer -->
      <div id="footer">
        
          <h6>CSCI E-15 Dynamic Web Applications</h6>
          <h6>P4</h6>
          <h6>Andy LeRoy</h6>
        
      </div>
                      
	


</body>

</html>