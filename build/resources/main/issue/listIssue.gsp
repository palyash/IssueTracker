<!DOCTYPE html>
<html lang="en">
<head>
  <title>Issue Tracker</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body{ background-color:rgb(255, 255, 204);}
header{

    padding: 1em;
    color: white;
    background-color: rgb(102, 51, 0);
    clear: left;
    text-align: center;

}
article{
    margin-left: 170px;

    padding: 1em;
    overflow: hidden;
}
</style>

</head>
<body>
<div class="container">
  <header><h2 ><center>Issue List</center></h2></header>
  <article>
<g:form class="form-horizontal">
  <table class="table">
  <thead class="thead-inverse">
  <tr>
    <th>#</th>
     <th>
        TITLE
     </th>
     <th>
        DESCRIPTION
     </th>
     <th>
         STATUS
     </th>
  </tr>
  </thead>
<tbody>

<g:each in="${issueList}" var="il" status="i">

   <tr>
        <td>
        <p>${i+1}</p>
        </td>
        <td>
            <p>${il.title}</p>
        </td>
        <td>
            <p>${il.description}</p>
        </td>
        <td>
            <p>${il.issueStatus}</p>
         </td>
   </tr>

</g:each>
</tbody>
</table>
</g:form>
<a href="http://localhost:8080/issue/index"><button type="button" class="btn btn-success">Back To Home Page</button></a>
</article>
</div>
</body>
</html>
