package cricketapp

class Registration {
		

    static constraints = {
    }
	
	static belongsTo = [teams:Teams, players:Players]
}
