package issuetracker

class IssueController {

    def index() { }
	 def saveIssue(){

        //params is recieving the values and saving it to the database now...(updated)

	def saveI = new Issue(params)

         saveI.issueStatus=IssueStatus.UNRESOLVED
        if(saveI.save())
        {
            //if data from the view is being saved to the db then it will  be redirected to the  LIST..(updated)
            // IssuController is not used name of the controller at the time of the creation is being used
            redirect(controller : "Issue" , action: "listIssue")
        }
        else
        {
            redirect(controller : "Issue" , action: "index")
        }


    }

    //successfullly exporting the data from db
    def listIssue(){
        def issueList= Issue.list()
        [issueList:issueList]
    }
}
