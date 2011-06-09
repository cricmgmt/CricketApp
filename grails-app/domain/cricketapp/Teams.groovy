package cricketapp

class Teams {
	String teamName
	String city
	String state
	Date dateCreated

    static constraints = {
		teamName(blank:false)
		city()
		state()
		dateCreated()
		
    }
	static hasMany = [registrations:Registration]

}
