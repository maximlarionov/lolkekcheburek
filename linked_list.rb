class LinkedList
  attr_reader :all
  def initialize(*args)
    @head, *@tail = args.reverse.reduce([]) do |memo, el| 
      memo << Element.new(el, memo.last) 

      memo
    end.reverse
  end

  def first
    @head
  end

  def next
    first.next
  end

  class Element
    def initialize(el, _next)
      @el = el
      @next = _next
    end

    def next
      @next
    end

    def inspect
      @el
    end
  end
end
