package cricketapp

class Players {
	String firstname
	String lastname
	String city
	String state
	String category
	String email
	String username
	String password
	String address
	String	contactNo	

    static constraints = {
		firstname(blank:false)
		lastname(blank:false)
		city()
		state(inList:["IA", "IL", "WI", "MO"])
		category()
		email(blank:false)
		username(blank:false)
		password(blank:false)
		address()
		contactNo()
    }
	
	def beforeInsert = {
		password = password.encodeAsSHA()
		}
	
	static hasMany = [registrations:Registration]	
	
}
