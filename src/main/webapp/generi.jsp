<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="it.generationitaly.musicator.entity.Genere"%>
<!DOCTYPE html>
<html lang="it">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Musicator -  Generi</title>
		 <!-- Bootstrap css -->
 		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
      	 integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
		 <!-- Bs Icons -->
	     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		 <!-- css locali -->
    	 <link rel="stylesheet" href="style2.css">
		<!-- Import Font Awesome -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
				
		<!-- Font -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

		
	    <!-- Swiper css -->
	    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

   <style>
   .button-spacing {
    padding: 10px 20px;
    background-color: #C2185B;
      }
        
        .btn-custom {
       .genre-list li {
    
    margin-bottom: 20px;
    font-size: 20px;
    background-color: #C2185B;
    border-radius: 5px;
    color: #FFFFFF;
}
     
       
        
    </style>
</head>


</head>
<body>

	<%@ include file="nav.jsp"%>
	
	    <!-- ELEMENTI FIXED -->
    <%@ include file="goTop.jsp" %>
	
	
	<!--  <div class="container min-vh-10 d-flex  justify-content-center mt-5">
		
			 <!-- Barra di Ricerca 
			<div class="input-group mb-3">
			<form action="ricerche_specifiche" method="get" class="input-group mb-3">
			  <input type="text" class="form-control" name="artisti" style="border-radius:30px" placeholder="Cerca il tuo artista preferito" aria-label="Recipient's username" aria-describedby="button-addon2">
			 <!--   <button class="btn btn-outline-secondary" type="button" id="button-addon2">Cerca</button>
			 </form>
			</div>
			<!-- Fine Barra di Ricerca 	
		</div>-->
			
			<!-- pulsante per tornare indietro -->
    		<a href="<%=request.getHeader("referer") %>" class="btn-custom"><i class="fas fa-arrow-left"></i></a>
			
			<div class="container">
	
	<%
	// Recupero della lista dei generi musicali 
	List<Genere> generi = (List<Genere>) request.getAttribute("generi");
	%>
	 
	<h1 class="text-center" style="color: #E3F2FD;">Elenco Generi Musicali</h1>
	<div class="row row-cols-1 row-cols-md-3 g-4">
	
		<form action="generi" method="get">
			<div id="genereButtons" class="d-grid gap-2 col-6 mx-auto"></div>
		</form>
		</div>
	<div class="container ">
	 <br>
	<div class="row row-cols-1 row-cols-md-3 g-4">  
		<%
		// Verifica se la lista di generi se non null
		if (generi != null && !generi.isEmpty()) {

			for (Genere genere : generi) {
		%>
		<div class="col-md-4">
		
    <a type="button" class="btn btn-secondary btn-lg w-100 button-spacing" href="genere?id=<%= genere.getId() %>">
        <%= genere.getNome() %>
      <!--  <%= genere.getId() %>-->
        </a>

    
</div>

	<!--  
<button type="button" class="btn btn-secondary btn-lg">
		<a href="genere"?id=<%=genere.getId()%> " class="btn btn-custom">
			<%=genere.getNome()%>
			</a>
		</button>
		-->
		<% }  %>
		</div>
		
		} else {
		%>
		<p class="text-center"></p>
		<% } %>
	</div>
</div>
	<!-- Footer -->
	<%@ include file="footer.jsp"%>


	<script type="text/javascript"
		src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <!-- Swiper JS library -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <!-- headroom JS library -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/headroom/0.12.0/headroom.min.js" integrity="sha512-9UsrKTYzS9smDm2E58MLs0ACtOki+UC4bBq4iK5wi7lJycwqcaiHxr1bdEsIVoK0l5STEzLUdYyDdFQ5OEjczw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- AOS JS library-->
    <!-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/3.0.0-beta.6/aos.js" integrity="sha512-tnNM6PPNOVfZ5sGPw6hThCrcUBeqt2mVEk3EAj8tCtuMHqbuVm5/HsZagrr8W2aaFE+6rKIByGwQbEnmodrYVg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- Script locali -->
    <script src="bs5.js"></script>
	<!-- Bootstrap Js -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
