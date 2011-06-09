package cricketapp

class TeamsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [teamsInstanceList: Teams.list(params), teamsInstanceTotal: Teams.count()]
    }

    def create = {
        def teamsInstance = new Teams()
        teamsInstance.properties = params
        return [teamsInstance: teamsInstance]
    }

    def save = {
        def teamsInstance = new Teams(params)
        if (teamsInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'teams.label', default: 'Teams'), teamsInstance.id])}"
            redirect(action: "show", id: teamsInstance.id)
        }
        else {
            render(view: "create", model: [teamsInstance: teamsInstance])
        }
    }

    def show = {
        def teamsInstance = Teams.get(params.id)
        if (!teamsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'teams.label', default: 'Teams'), params.id])}"
            redirect(action: "list")
        }
        else {
            [teamsInstance: teamsInstance]
        }
    }

    def edit = {
        def teamsInstance = Teams.get(params.id)
        if (!teamsInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'teams.label', default: 'Teams'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [teamsInstance: teamsInstance]
        }
    }

    def update = {
        def teamsInstance = Teams.get(params.id)
        if (teamsInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (teamsInstance.version > version) {
                    
                    teamsInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'teams.label', default: 'Teams')] as Object[], "Another user has updated this Teams while you were editing")
                    render(view: "edit", model: [teamsInstance: teamsInstance])
                    return
                }
            }
            teamsInstance.properties = params
            if (!teamsInstance.hasErrors() && teamsInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'teams.label', default: 'Teams'), teamsInstance.id])}"
                redirect(action: "show", id: teamsInstance.id)
            }
            else {
                render(view: "edit", model: [teamsInstance: teamsInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'teams.label', default: 'Teams'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def teamsInstance = Teams.get(params.id)
        if (teamsInstance) {
            try {
                teamsInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'teams.label', default: 'Teams'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'teams.label', default: 'Teams'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'teams.label', default: 'Teams'), params.id])}"
            redirect(action: "list")
        }
    }
}
