describe "#main" do 
	it "#says_hello" do
		expect(STDOUT).to receive(:puts).with("Hello World")
		says_hello
	end
end