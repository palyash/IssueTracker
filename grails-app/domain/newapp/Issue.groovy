package newapp

class Issue {

    String title
    String description

    IssueStatus issueStatus

    static constraints = {
        title blank: false
        description blank: false
    }
}

enum IssueStatus {
    RESOLVED(1), UNRESOLVED(2)
    final int id

    IssueStatus(int id) {
        this.id = id;
    }
}
