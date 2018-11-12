require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'telling the coach we are going to work makes him feel great' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'

    assert_text 'Great!'
  end

  test 'asking the coach something that makes him grumpy' do
    visit ask_url
    fill_in 'question', with: 'Which is your name?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!'
  end
end
