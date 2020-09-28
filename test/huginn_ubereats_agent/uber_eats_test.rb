# frozen_string_literal: true

require 'test_helper'

class UberEatsTest < Minitest::Spec
  let(:sample_str) { File.read("#{File.dirname(__FILE__)}/../data/sample.html") }

  subject { UberEats.new }

  describe '#extract_menu' do
    it 'does not include dishes without price or name' do
      menu = subject.extract_menu(html_str: sample_str)

      assert menu.length > 0
      menu.each do |dish|
        refute_empty dish[0]
        refute_empty dish[1]
      end
    end

    it 'sorts dishes alphabetically' do
      menu = subject.extract_menu(html_str: sample_str)

      assert menu.length > 0
      assert_equal menu.sort, menu
    end
  end
end
