class Startup
    include HTTParty
    base_uri 'https://60bc21de3a39900017b2e337.mockapi.io'
    require_relative '../hooks/startup_hook.rb'
    def initialize(body)
        @options = {:body => body}
        @options2 = {}
    end
    
    def postStartup
        self.class.post("/testes/cadastros", @options)
    end

    def getStartup(id)
        self.class.get("/testes/cadastros/#{id}", @options2)
    end

    def putStartup(id)
        self.class.put("/testes/cadastros/#{id}", @options2)
    end

    def deleteStartup(id)
        self.class.delete("/testes/cadastros/#{id}", @options2)
    end
end