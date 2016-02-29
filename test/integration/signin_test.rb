# key in command below to run
# rake test TEST='test/features/sprint2_test.rb'
require "test_helper"
require "capybara/rails"

class SigninTest < Minitest::Capybara::Test
  def test_signin
    # 
    # User03でログイン
    # 
    visit '/'
    
    # ログイン画面が表示されたことを確認
    assert_content 'ログイン'
    
    # ユーザＩＤとパスワードを入力
    fill_in 'user_userid',   with: 'User02'
    fill_in 'user_password', with: 'password'

    # ログインボタンをクリックする
    click_on 'Log in'

    # ログインに成功したことを検証する
    assert_content 'ログインしました'
    assert_content 'メニュー'
    assert_content '大阪第１'

  end
end