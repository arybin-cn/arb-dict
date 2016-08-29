require 'uri'
require 'json'
require 'open-uri'
require 'arb/dict/version'

module Arb
  module Dict
    def self.query(entity)
      tmp_hash = JSON.parse(open("http://dict.youdao.com/jsonresult?q=#{URI.encode(entity)}&type=1").read)
      main_hash = { entity: entity }
      if entity.ascii_only?
        main_hash[:phonetic_us]=strict_value(tmp_hash['sm'],'No US Phonetic')
        main_hash[:phonetic_uk]=strict_value(tmp_hash['uksm'],'No UK Phonetic')
      else
        main_hash[:phonetic]=strict_value(tmp_hash['sm'],'No Phonetic')
      end
      main_hash[:translation]=strict_value(tmp_hash['basic'],'No Translation')
      main_hash
    end
    private
    def self.strict_value(str,default)
      return default unless str
      return default if str.is_a? String and str.size<=0
      str
    end
  end
end
