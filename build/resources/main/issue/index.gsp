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
  <header><h1>ISSUE TRACKER</h1></header>
<div class="panel-body">
<article>
  <g:form controller= "Issue" action="saveIssue" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="title">Title:</label>
      <div class="col-sm-10">
        <g:textField name="title" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Description:</label>
      <div class="col-sm-10">
       <!-- <input type="text" class="form-control" id="title" placeholder="Enter Description">-->
	<g:textArea name="description" />
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <g:submitButton name="addIssue" class="btn btn-success" value="Save"/>
      </div>
    </div>
  </g:form>
  <g:form controller= "Issue" action="listIssue" class="form-horizontal">
     <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
          <g:submitButton name="showIssue" class="btn btn-info" value="List Issue"/>
        </div>
      </div>
  </g:form>
</article>
</div>
</div>

</body>
</html>
