    <nav class="navbar navbar-expand-lg navbar-dark">

        <a href="http://localhost:8080/miniapp/" class="navbar-brand">Mini Project</a>
        <button class="navbar-toggler" type="button" data-target="#navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse">
        <ul class="navbar-nav">

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navdrop" role="button" data-toggle="dropdown"
        data-hover="dropdown">Customer</a>
        <div class="dropdown-menu" aria-labelledby="navdrop">

        <a href="http://localhost:8080/miniapp/costumer/list" class="dropdown-item">Costumer List</a>
        <a href="http://localhost:8080/miniapp/costumer/form_add" class="dropdown-item">Add Costumer</a>

        </div>
        </li>

        <li class="nav-item">
        <a href="http://localhost:8080/miniapp/account/list" class="nav-link">Account Lists</a>
        </li>

        <li class="nav-item">
        <a href="http://localhost:8080/miniapp/history/list" class="nav-link">History</a>
        </li>
        </ul>

        <img class="mx-auto" src="<c:url value="/jsp/meme_logo.png"/>" alt="9gag" width="45" align="center"/>

        <ul class="navbar-nav ml-auto">

        <li class="nav-item">
        <a class="nav-link" href="<c:url value="/logout" />" title="Logout ;)">Log Out</a>
        </li>

        </ul>

        </div>
        </nav>

