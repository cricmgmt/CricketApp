package cricketapp

class HomePageController {

    def homePage = { }
	
	def registrationPage = {
		//populating values from DB table into GSP
		//http://nerdgerl.wordpress.com/2009/08/20/populating-a-select-box-in-grails-with-values-from-database/
		def teams = Teams.executeQuery("select teamName from Teams")	
		[teams:teams]
    }		
	
	def login = {
		def user = Players.findByUsernameAndPassword(
			params.username, params.password.encodeAsSHA())
			if(user){
				session.user = user
				println("Hello ${user.username}!")

			//	flash['players'] = user
				redirect(controller:"homePage",action:"loggedInPage")
			}
			else{
				println("Sorry, ${params.username}. Please try again.")
				redirect(controller:"homePage",action:"homePage")
			}
    }
	
	def createTeam = {
		
	}
	
	def addTeam = {
		println(params)
		def team = new Teams(teamName:params.tname,city:params.tcity,state:params.tstate, dateCreated:params.tdate)
		team.save(flush:true)
		redirect(controller:"homePage",action:"registrationPage")
	}
	
	def save = {	
		
		//saving player details in to DB	
		println(params)
		def a = new Players(firstname:params.fname,lastname:params.lname,city:params.city,state:params.state,category:params.category, email:params.email,username:params.uname,password:params.pwd,address:params.adr,contactNo:params.cno)
		a.save(flush:true)
		
		//collecting team id from team name		
		a.registrations = []
		String name = params.teamnames
		println("team name = "+name)
		def teamid = Teams.findByTeamName(name)
		println("team id = " +teamid) 
		
		//saving team-player relationship into DB-registration table
		a.registrations = []
		a.registrations << new Registration()
		a.registrations.each {it.teams = teamid}
		a.registrations.each{it.players= a }
		
		a.save(flush:true)
		flash['players'] = a
		
		redirect(controller:"homePage",action:"welcome")
		
	}
	
	def welcome = {
		def existingUser = flash['players']
		String fullName = existingUser.firstname +" "+existingUser.lastname
		[fullname:fullName,fname:existingUser.firstname,lname:existingUser.lastname,email:existingUser.email,team:existingUser.registrations.teams.teamName,cat:existingUser.category, ulogin:existingUser.username]
	}
	
	def loggedInPage = {
		def loggedInUser = session.user
		def loggedReg =  Registration.findByPlayers(session.user)
		println("loggedReg is:" + loggedReg)
		println("team name = ${loggedReg.teams.teamName}")
		String fullName = loggedInUser.firstname +" "+loggedInUser.lastname
		[fullname:fullName,fname:loggedInUser.firstname,lname:loggedInUser.lastname,email:loggedInUser.email,team:loggedReg.teams.teamName,cat:loggedInUser.category, ulogin:loggedInUser.username]
	}
}
