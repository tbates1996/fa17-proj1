# Q0: Why is this error being thrown?
There is not a controller for pokemon yet so it is being referenced before it has even been created.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Only one random pokemon appears and the common factor is that all their trainer_ids are set to nil.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This is a button that is calling the capture method in the pokemon controller. You pass in the id of the current pokemon so that the capture method can find the pokemon and assign it's trainer id to the current trainer. 

# Question 3: What would you name your own Pokemon?
It would name my own pokemon '- rupi kaur' after my favorite poet.
	
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to trainer_path and passed in the trainer as a parameter, but I just realized that redirect_to @trainer and that would have taken me to the same place.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This puts in the error messages from the validations that dont pass. When you try to save a model the fails the validations the if statement will evaluation to false and this takes the error messages and puts them in the flash hash. Simple form already takes the errors and displays them; however, I put in both because of this question.

# Give us feedback on the project and decal below!
I would change the sign up and edit trainer forms to include name. Also, I would put a button to trainer profile in the navbar. 

# Extra credit: Link your Heroku deployed app
https://whispering-stream-46399.herokuapp.com/

