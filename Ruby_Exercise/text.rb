=begin
    Đây là đoạn code Ruby đầu tiên
    Đoạn comment này viết trên nhiều dòng
=end
#-----------------------------
$people = []
$people_2 = []
a = 20
a.times do |i|
    $people << "Age: #{rand(10...90)}, Name: Person #{i+1}"

end
# puts $people
# puts "------"
#-------------------------------
a = 20
a.times do |i|
    $people_2 << "Age: #{rand(10...90)}, Name: Person #{i+1}"

end
# puts $people_2
# puts "------"

def cong
    puts $people.concat $people_2
end











def search
    $people.map{
        |i|
        if i[5,3].to_i<18
            puts i
        end
    }
end

def delete
    $people.delete_if{
        |a|
        a[5,3].to_i<18
    }
end

def sort
    puts "-------------"
    $people.sort
end

#---------
def sort_giam
    puts "----------"
    $people.sort{
        |x,y|
        y<=>x
    }
end
#--------
def xoa_1
    puts "---------"
    $people.delete_at(0)
    puts $people
end

#--------
def max
    puts "----------"
    $people.minmax
end


def t
    age =17
    begin
        if age>18
            raise "LEuleu"
        end
        puts "L"
    rescue 
        puts "Hai"
        
    end
end

puts t
# puts cong
# puts"--------------------------------------------------c"
# puts $people
# puts search
# puts delete
# puts sort
# puts sort_giam
# puts xoa_1
# puts max

