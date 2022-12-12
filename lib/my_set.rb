# your code here
class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def self.[](*args)
        new(args)
    end

    def clear
        @hash.clear
        self
    end

    def each(&block)
        @hash.keys.each(&block)
        self
    end

    def inspect
        "#<#{self.class.name}: {#{@hash.keys.join(', ')}}>"
    end

end