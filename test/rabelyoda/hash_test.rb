root = File.expand_path(File.dirname(__FILE__))
require File.join root, '../../lib/rabelyoda/hash'
require 'test/unit'

module RabelYoda
  class HashTest < Test::Unit::TestCase
    def setup
      @en = {'user' => "User",
        'company' => 'Company',
        'position' => 'Position',
        'department' => 'Department', 
        'activerecord' => {
          'validations' => {
            'email' => 'Should be like email',
            'name' => 'Should contain only letters'} 
          } 
        }
      @ru = {'user' => "Пользователь", 
        'company' => 'Компания',
        'position' => 'Position',
        'activerecord' => {
        'validations' => {
            'email' => 'Should be like email'}, 
            'age' => 'Должен быть числом' 
          } 
        }
    end

    def test_locale_diff
      assert_equal @en.locale_diff(@ru), {
        'user' => "Пользователь", 
        'company' => 'Компания',
        'position' => '[pls translate]Position',
        'department' => '[pls translate]Department', 
        'activerecord' => {
          'validations' => {
            'email' => '[pls translate]Should be like email', 
            'name' => '[pls translate]Should contain only letters'
          } 
        }
      }
    end
  end
end