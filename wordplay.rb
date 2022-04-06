class WordPlay
    def self.switch_pronouns(text)
        text.gsub(/\b(I am|You are|I|You|Me|Your|My)\b/i) do |pronoun|
            case pronoun.downcase
            when "i"
              "you"
            when "you"
              "me"
            when "me"
                "you"
            when "i am"
              "you are"
            when "you are"
              "i am"
            when "your"
              "my"
            when "my"
              "your"
          end
        end.sub(/^me\b/i, 'i')
    end
end

class String
    def sentences
        gsub(/\n|\r/, ' ').split(/\.\s*/)
    end
    def words
        scan(/\w[\w\'\-]*/)
    end
end

p %q{Hello. This is a test of
basic sentence splitting. It 
even works over multiple lines.}.sentences

p "This is a test of words".words

p %q{Hello. This is a test of
basic sentence splitting. It 
even works over multiple lines.}.sentences[1].words[3]

p WordPlay.switch_pronouns("Your cat is fighting with my cat")
p WordPlay.switch_pronouns("You are my robot")
p WordPlay.switch_pronouns("I gave you hope")
p WordPlay.switch_pronouns("You gave me hope")