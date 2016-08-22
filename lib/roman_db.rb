#Initial attempt at making a OOPlayer

class Player
    def initialize(whois, name, clear="IR")
        @whois = whois
        @name = name
        @clear = clear
    end

    def whoami
        puts "#{@name} is also known as #{@whois}"
        puts "#{@name} is of clearance level #{@clear}"
    end
end
