class Saving < ActiveRecord::Base
  attr_accessible :date, :price

  def self.sum
    sum = 0
    Saving.all.each do |saving|#Savingの配列のいっこいっこ
      sum += saving.price
    end
    sum #controllerに送る値はsumだよ

  end
end
