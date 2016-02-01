# Week 8: Testing
####Day 1: Intro to Testing
TDD, BDD, and Ruby with RSpec
####Day 2: Testing in Rails
Testing models and factories

## TDD Process

1. Write a test to validate a piece of code you are going to write, run it - it should fail

1. Write the minimum amount of code needed for the test to pass

1. Run the test, ensure it passes

1. Go back and refactor your code to make it as efficient as possible for the situation and cover any extra edge cases

1. Make sure your test still passes, modify the test itself or add a new test if a new edge case has been added

### BDD is a subset of TDD

## RSpec 

To install RSpec:

```bash
$ gem install rspec

```  
###RSpec Cheatsheet
1. describe, it
2. before, after
3. :each, :all
4. context
5. expect().to
6. let


1. The most basic RSpec structure is an it block embedded in a describe block. From RSpec's documentation: "Rspec uses the words 'describe' and 'it' so we can express concepts like a conversation". The describe block gives context (maybe a class, a feature, a method), while the it block is the actual test.   
	ex. Testing the new class method (Array.new) and the count instance method (Array.new.count) of the Array class.
	```ruby
	describe Array do
		it ".new should return a blank instance" do
			expect(Array.new).to eq([])
		end
		it "should allow you to #count the items in the instance" do
			expect(Array.new.count).to eq(0)
		end
	end

	```
2. Before and after directives "hook in" before or after each test.
	ex. Create an instance of Array before each test
	```ruby
	describe Array do
		before do
			@array = Array.new
		end

		it ".new should return a blank instance" do
			expect(@array).to eq([])
		end

		it "should allow you to #count the items in the instance" do
			expect(@array.count).to eq(0)
		end

		after do
			puts "Test complete"
		end
	end

	```	
3. before and after blocks can take an :all or :each argument. :each is default. :all argument means the before block is run once.
	ex. Create an instance of Array before all tests are run.
	```ruby
	describe Array do
		before(:all) do
			@array = Array.new
		end

		it ".new should return a blank instance" do
			expect(@array).to eq([])
		end

		it "should allow you to #count the items in the instance" do
			expect(@array.count).to eq(0)
		end

		after do
			puts "Test complete"
		end
	end

	```	
4. Context blocks help organize cases. Think of it as a nested describe block.

5. expect().to 
[RSpec Expectations](http://www.rubydoc.info/gems/rspec-expectations/frames)

6. The let keyword 

## Resources
[RSpec](http://rspec.info/)

[Getting Started](https://www.relishapp.com/rspec/docs/gettingstarted)

[RSpec Core](http://www.rubydoc.info/gems/rspec-core/frames)

[RSpec Expectations](http://www.rubydoc.info/gems/rspec-expectations/frames)

[RSpec Guidelines](http://betterspecs.org/)

[Factory Girl - Rails](https://github.com/thoughtbot/factory_girl_rails)

















