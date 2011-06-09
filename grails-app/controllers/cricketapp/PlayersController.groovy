package cricketapp

class PlayersController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [playersInstanceList: Players.list(params), playersInstanceTotal: Players.count()]
    }

    def create = {
        def playersInstance = new Players()
        playersInstance.properties = params
        return [playersInstance: playersInstance]
    }

    def save = {
        def playersInstance = new Players(params)
        if (playersInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'players.label', default: 'Players'), playersInstance.id])}"
            redirect(action: "show", id: playersInstance.id)
        }
        else {
            render(view: "create", model: [playersInstance: playersInstance])
        }
    }

    def show = {
        def playersInstance = Players.get(params.id)
        if (!playersInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])}"
            redirect(action: "list")
        }
        else {
            [playersInstance: playersInstance]
        }
    }

    def edit = {
        def playersInstance = Players.get(params.id)
        if (!playersInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [playersInstance: playersInstance]
        }
    }

    def update = {
        def playersInstance = Players.get(params.id)
        if (playersInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (playersInstance.version > version) {
                    
                    playersInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'players.label', default: 'Players')] as Object[], "Another user has updated this Players while you were editing")
                    render(view: "edit", model: [playersInstance: playersInstance])
                    return
                }
            }
            playersInstance.properties = params
            if (!playersInstance.hasErrors() && playersInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'players.label', default: 'Players'), playersInstance.id])}"
                redirect(action: "show", id: playersInstance.id)
            }
            else {
                render(view: "edit", model: [playersInstance: playersInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def playersInstance = Players.get(params.id)
        if (playersInstance) {
            try {
                playersInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'players.label', default: 'Players'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'players.label', default: 'Players'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])}"
            redirect(action: "list")
        }
    }
}
