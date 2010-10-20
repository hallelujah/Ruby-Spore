require "rubygems"
require "test/unit"
require "spore"


class TestConstructor < Test::Unit::TestCase


  def test_build_fail
    spore = Spore.new() rescue nil
    assert_nil spore
  end

  def test_build_github_json
    github_spec = File.join(File.dirname(__FILE__), 'github.json')
    spore = Spore.new(github_spec)
    assert_kind_of Spore, spore

    assert_equal 'http://github.com/api/v2', spore.base_url
    assert_equal '0.2', spore.version
    assert_equal '/:format/user/search/:search', spore.methods['user_search']['path']
  end

end

