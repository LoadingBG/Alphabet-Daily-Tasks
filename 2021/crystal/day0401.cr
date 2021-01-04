#
# Author: Loading BG#7962
#

def check(nums)
    inc = 0
    dec = 0
    0.upto(nums.size - 2) do |i|
        if nums[i] > nums[i + 1]
            dec += 1
        else
            inc += 1
        end
    end
    if inc == 0
        return "decreasing"
    end
    return dec == 0 ? "increasing" : "neither"
end

def area(x1, y1, x2, y2, x3, y3)
    ((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2).abs
end
def within_tri?(v, p)
    base_area = area v[0][0], v[0][1], v[1][0], v[1][1], v[2][0], v[2][1]
    p1p2_area = area v[0][0], v[0][1], v[1][0], v[1][1], p[0], p[1]
    p1p3_area = area v[0][0], v[0][1], v[2][0], v[2][1], p[0], p[1]
    p2p3_area = area v[1][0], v[1][1], v[2][0], v[2][1], p[0], p[1]
    base_area == p1p2_area + p1p3_area + p2p3_area
end

def color(pos)
    pos[0].ord % 2 == pos[1].ord % 2
end
def bishop(start, finish, moves)
    color(start) == color(finish)
end

puts "check #1: #{check [1, 2, 3]}"
puts "check #2: #{check [3, 2, 1]}"
puts "check #3: #{check [1, 2, 1]}"
puts "----------"
puts "withinTriangle #1: #{within_tri? [[1, 4], [5, 6], [6, 1]], [4, 5]}"
puts "withinTriangle #2: #{within_tri? [[1, 4], [5, 6], [6, 1]], [3, 2]}"
puts "----------"
puts "bishop #1: #{bishop "a1", "b4", 2}"
puts "bishop #2: #{bishop "a1", "b5", 5}"
puts "bishop #3: #{bishop "f1", "f1", 0}"
