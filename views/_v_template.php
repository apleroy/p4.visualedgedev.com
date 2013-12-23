<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php if(isset($title)) echo $title; ?></title>

	<meta charset="UTF-8">	
	
	<!--Common CSS/JS -->
	
  <link href="/css/bootstrap.css" rel="stylesheet">
  <link href="/css/main.css" rel="stylesheet">

      
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
      <script src="/js/jquery.js"></script>
      <script src="/js/jqueryUI.js"></script>
     
      <!-- <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"> -->

      <!-- Include all compiled plugins (below), or include individual files as needed -->
      
      

	<!-- Controller Specific JS/CSS -->
	<?php if(isset($client_files_head)) echo $client_files_head; ?>
	

</head>


<body>

<!-- Part 1: Wrap all page content here -->
      

    <div id="wrap">

      <?php if($user): ?>
     
                    <div class="navbar navbar-inverse" role="navigation" id="my_nav">
                        <div class="container">
                          <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                              <span class="sr-only">Toggle navigation</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="/">Task Master</a>
                          </div>
                          <div class="navbar-collapse collapse">
                            

                           
                         
                          <ul class="nav navbar-nav navbar-right">
                            <li><a href='/users/lists'>Lists</a></li>
                            <li><a href='/users/logout'>Logout</a></li>
                            
                          </ul>

                          </div><!--/.navbar-collapse -->
                        </div>
                      </div>
           

   	  <?php else: ?>

                    <div class="navbar navbar-inverse" role="navigation" id="my_nav">
                        <div class="container">
                          <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                              <span class="sr-only">Toggle navigation</span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="/">Task Master</a>
                          </div>
                          <div class="navbar-collapse collapse navbar-right" id="nav_login">

                            <form class="nav navbar-form navbar-right" role="form" method='POST' action='/users/p_login'>
                              <div class="form-group">
                                <input type="text" placeholder="Email" class="form-control" name='email'>
                              </div>
                              <div class="form-group">
                                <input type="password" placeholder="Password" class="form-control" name='password'>
                              </div>
                              <button type="submit" class="btn btn-success">Sign in</button>

                              
                            </form>

                          </div><!--/.navbar-collapse -->
                        </div>
                      </div>

         <?php endif; ?>  
                    
         <!-- Begin page content -->
       
          
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
                      
	
      <script src="/js/bootstrap.js"></script>
      <script src="/js/main.js"></script>
      <script src="/js/signup_validation.js"></script>
      <script src="/js/item.js"></script>
</body>
      
      
</html>