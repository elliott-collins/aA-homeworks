class Stack
    def initialize
        @array = []
    end

    def push(el)
        @array << el
    end

    def pop
        @array = @array[0..-2]
    end

    def peek
        return @array.last
    end

    private

    attr_reader :array
end

class Queue
    def initialize
        @array = []
    end

    def enqueue(el)
        @array.push(el)
        el
    end

    def dequeue
        @array.shift
    end

    def peek
        @array[0]
    end

    private
    attr_reader :array
end

class Map 
    def initialize
        @array = []
    end

    def set(key, val)
        pair_index = array.index { |pair| pair[0] = key }
        if pair_index
            array[pair_index][1] = val
        else
            array.push([key, val])
        end
        val
    end

    def get(key)
        array.each do |pair|
            return pair[1] if key == pair[0]
        end
        nil
    end

    def delete(key)
        self.each do |pair|
            @array.delete(pair) if key == pair[0]
        end
    end

    def show
        @array
    end

    private
    attr_reader :array
end