class PeoplesController < ApplicationController
	def index
		@persons = Person.all		
	end

	# maps get request
	def new		
	end

	# maps post request
	def create		
		# get data from params
		name = params[:name]
		age = params[:age]
		address = params[:address]

		# create new Person
		p = Person.new(name: name, age: age, address: address)
		p.save

		redirect_to "/peoples/new"
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		puts "inside update"

		name = params[:name]
		age = params[:age]
		address = params[:address]

		# Editing the Person
		p = Person.find(params[:id])
		p.name = name
		p.age = age
		p.address = address
		p.save

		redirect_to "/peoples/" + p.id.to_s

	end

	def show
		@person = Person.find(params[:id])		
	end

	def destroy
		person = Person.find(params[:id])		
		person.destroy()
		redirect_to "/peoples/new"
	end


	def hello
		@name = params[:name]
		print params
		puts (@name)
		render "say_hello"		
	end
	
end
