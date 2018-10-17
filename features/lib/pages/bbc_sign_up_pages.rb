class BBCSignUpPage
    include Capybara::DSL

    HOMEPAGE_URL = "https://www.bbc.co.uk/"
    SIGN_IN_LINK_ID = "#idcta-link"
    SIGN_UP_LINK_CLASS = ".link.link--primary"
    SIGN_UP_FIRST_PAGE_CLASS = ".text.u-padding-top-hepta--tablet"
    UNDER_13_ARIAL_LABEL = '[aria-label="Under 13"]'
    OVER_13_ARIAL_LABEL = '[aria-label="13 or over"]'
    SUBMIT_BUTTON_ID = '#submit-button'
    DATE_OF_BIRTH_ID = '#dateOfBirthField'
    DAY_INPUT_ID = 'day-input'
    MONTH_INPUT_ID = 'month-input'
    YEAR_INPUT_ID = 'year-input'
    REGISTRATION_EMAIL_ID = 'user-identifier-input'
    REGISTRATION_PASSWORD_ID = 'password-input'
    REGISTRATION_POSTCODE_ID = 'postcode-input'
    GENDER_INPUT_ID = '#gender-input'

    def visit_homepage
        visit(HOMEPAGE_URL)
    end

    def get_sign_in_link
        find(SIGN_IN_LINK_ID)
    end

    def get_sign_up_link
        find(SIGN_UP_LINK_CLASS)
    end

    def submit_button_id
        find(SUBMIT_BUTTON_ID)
    end

    def get_under_13_link
        find(UNDER_13_ARIAL_LABEL)
    end

    def get_over_13_link
        find(OVER_13_ARIAL_LABEL)
    end

    def get_date_of_birth_div
        find(DATE_OF_BIRTH_ID)
    end

    def click_sign_in_link
        get_sign_in_link.click
    end

    def click_sign_up_link
        get_sign_up_link.click
    end

    def click_under_13_link
        get_under_13_link.click
    end

    def did_under_13_load?
        return submit_button_id.visible?
    end

    def click_over_13_link
        get_over_13_link.click
    end

    def did_date_of_birth_load?
        return get_date_of_birth_div.visible?
    end

    def input_day
        fill_in(DAY_INPUT_ID, with: '26')
    end

    def input_month
        fill_in(MONTH_INPUT_ID, with: '01')
    end

    def input_year
        fill_in(YEAR_INPUT_ID, with: '1998')
    end

    def click_date_of_birth_submit
        submit_button_id.click
    end

    def did_registration_load?
        submit_button_id.visible?
    end

    def input_registration_email
        fill_in(REGISTRATION_EMAIL_ID, with: 'bob@gmail.com')
    end

    def input_registration_password
        fill_in(REGISTRATION_PASSWORD_ID, with: 'AGoodPassword134')
    end

    def input_registration_postcode
        fill_in(REGISTRATION_POSTCODE_ID, with: 'RH104EY')
    end

    def select_gender_input
        find(GENDER_INPUT_ID).find('[value="male"]').select_option()
    end

    def opt_out
        find('[for="optOut"]').click
    end

    def success?
        true
    end

end