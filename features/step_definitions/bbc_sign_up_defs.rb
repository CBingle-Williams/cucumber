Given("I access the registration page") do
    bbc_sign_up.visit_homepage
    bbc_sign_up.click_sign_in_link
    bbc_sign_up.click_sign_up_link
end

When("I click under 13 button") do
    bbc_sign_up.click_under_13_link
end

Then("I get redirected to the parent or guardian page") do
    expect(bbc_sign_up.did_under_13_load?).to eq(true)
end

When("I click over 13 button") do
    bbc_sign_up.click_over_13_link
end

Then("I get redirected to date of birth page") do
    expect(bbc_sign_up.did_date_of_birth_load?).to eq(true)
end

Given("I access the birth date page") do
    bbc_sign_up.visit_homepage
    bbc_sign_up.click_sign_in_link
    bbc_sign_up.click_sign_up_link
    bbc_sign_up.click_over_13_link
end

And("I input day") do
    bbc_sign_up.input_day
end

And("I input month") do
    bbc_sign_up.input_month
end

And("I input year") do
    bbc_sign_up.input_year
end

When("I click on the continue button") do
    bbc_sign_up.click_date_of_birth_submit
end

Then("I get redirected to the register page") do
    expect(bbc_sign_up.did_registration_load?).to eq(true)
end

Given("I access the registration final page") do
    bbc_sign_up.visit_homepage
    bbc_sign_up.click_sign_in_link
    bbc_sign_up.click_sign_up_link
    bbc_sign_up.click_over_13_link
    bbc_sign_up.input_day
    bbc_sign_up.input_month
    bbc_sign_up.input_year
    bbc_sign_up.click_date_of_birth_submit
end

And("I input my email") do
    bbc_sign_up.input_registration_email
end

And("I input my valid password") do
    bbc_sign_up.input_registration_password
end

And("I enter my postcode") do
    bbc_sign_up.input_registration_postcode
end

And("I select my gener from dr  opdown menu") do
    bbc_sign_up.select_gender_input
end

And("I choose if i want to recieve emails") do
    bbc_sign_up.opt_out
end

When("I click on register button") do
    bbc_sign_up.opt_out
end

Then("I get redirected") do
    expect(bbc_sign_up.success?).to eq(true)
end