require 'rails_helper'

describe "adding a new task" do 

	it "can add and reorder a task" do
		# always use visit to land on a page
		# here we use the alias of home_page to start
		visit home_path

		# we check that the current path landed on is our home_path
		# note: this rules ...we just mimicked a user actually using our site
		expect(current_path).to eq(home_path)

		# pressing buttons ...this will mock a user clicking our link
		click_link "lists"

		# this verifies that after the link clicked we land on the path we're expecting
		expect(current_path).to eq(lists_path)

		# fill in our forms with real data!
		fill_in "list_name", with: "Some task name"

		# and then click the submit button
		click_button "Create List"

		# verifies there's an element with class 'l-name' that has the text we saved for name. Ie check to see if it really got saved. Looks for list on the actual page
		expect(page).to have_selector('.l-name', text: "Some task name")
	end

end