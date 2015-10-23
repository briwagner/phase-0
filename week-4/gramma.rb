puts "What's that you say?"

sonnys_reply = gets.chomp

gram_crazytalk = " Well, in my day ..."

def gramma_says(sonnys_reply, gram_crazytalk)
  if sonnys_reply == sonnys_reply.upcase
    puts "I'm tired. Take me home."
    return
  end
    puts sonnys_reply + gram_crazytalk + (rand(75) + 1900).to_s
end

gramma_says(sonnys_reply, gram_crazytalk)