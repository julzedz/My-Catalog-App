require_relative 'item'

class Label
  attr_accessor :id, :title, :color, :items

  def initialize(title, color)
    @id = Random.rand(1...1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    return unless item.is_a?(Item) && !@item.include?(item)

    item.label = self
    @items << item
  end
end
