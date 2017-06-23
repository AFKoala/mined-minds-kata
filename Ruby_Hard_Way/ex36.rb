# Let's play some Dark Souls!

def start
	puts "You awaken in a morgue with nothing but the clothes on your back."
	puts "There is a door on the far side of the room. What do you do?"

	puts "1. Open the door."
	puts "2. Curl into a ball and cry."

	print "> "

	choice = $stdin.gets.chomp

	if choice == "1"
		beast_room
	elsif choice == "2"
		puts "The overwhelming pressure of whatever lies beyond that door is too much for you."
		puts "You spend the rest of your life in a dark corner of the room sobbing to your self."
		dead
	else
		puts "Unsure of what to do, you spend far too long until eventually a gigantic spider crawls down from the ceiling and eats you."
		dead
	end
end

def beast_room
	puts "You swing open the door into the next room."
	puts "You are greeted by a hulking creature covered in blood with a human leg hanging from its mouth."
	puts "There are two doors on either side of the room."
	puts "What do you do?"

	puts "1. Fight the monster with your bare hands."
	puts "2. Run for the eastern door."
	puts "3. Run for the western door."

	print "> "

	choice = $stdin.gets.chomp

	if choice == "1"
		puts "Against all reason, you charge the monster in a valiant effort to fight for your life!"
		puts "Unfortunately, the creature is far too powerful for you. Your head is swiftly removed form your body."
		dead
	elsif choice == "2"
		puts "You rush for the eastern door!"
		puts "As you reach the door, you can hear the monster running up behind you."
		if lock == 1
			puts "Thankfully, the door is unlocked and you make it through before the beast can reach you."
			safe_room
		else
			puts "The door is stuck! The monster reaches you and rips you limb from limb!"
			dead	
		end
	elsif choice == "3"
		puts "The beast hasn't noticed you yet, and taking advantage of that, you make your way to the western door. It's unlocked and you can slip through quietly."
		abyss_room
	else
		puts "You're not making a choice with a MONSTER in front of you? You deserve whatever happens to you in here."
		dead
	end
end

def dead
	print "YOU DIED"
	exit(0)
end

def lock
	1 == [1,2].sample
end

def live
	print "YOU LIVED"
end

def safe_room
	puts "The room is empty aside from a fireplace on the far wall and a very comfy looking chair in front of it."
	puts "It's not much, but it's a lot better than whatever that monster was. Hurray!"
	live
end

def abyss_room
	puts "Riding the high of escaping that monster, you didn't realize that the floor of this room has sunken into a dark abyss."
	puts "You begin to fall and never feel yourself hit the bottom."
	dead
end

start