require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

###  WRITE YOUR TEST CODE HERE ###
jack = Role.first
mary = Role.second
joker = Role.third
bruce = Role.fourth
jon = Role.last

depp = Audition.first
ana = Audition.second
ledger = Audition.third
ben = Audition.fourth
kit = Audition.last

### DO NOT REMOVE THIS
binding.pry

0
