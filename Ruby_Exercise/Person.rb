class Person
# Question: 3. Class Person có 1 class variable là count.
# => Your code to answer 3 question here
    @@count = 0

# Question: 1. Mỗi Person có 2 instance variable là 'name' và 'age'. Tạo setter và getter cho 'name' và 'age'
# => Your code to answer 1 question here
    attr_accessor :name
    attr_accessor :age


# Question: 2. Khi khởi tạo 1 Person có thể truyền 'name' và 'age'
    def initialize(name, age)
        @name = name
        @age = age
# QUestion: 4. Mỗi lần khởi tạo 1 Person thì biến count sẽ tăng lên 1.        
        @@count +=1 
    end



# Question: 5. Person có 1 instane method tên là 'introduce' sẽ in ra kết quả là: "My name is [name của person đó]. I'm [age của person đó] years old".
    def answer_5
        "My name is #{@name}. I'm #{@age} years old"
    end



# Question: 6. Person có 1 class method tên là 'total_count' sẽ in ra kết quả là: "Total number of people is [tổng số Person đã được tạo]"  
    def self.answer_6  
        "Total number of people is #{@@count}"
    end



# Question: 7.Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person với name là 'Person 1' cho đến 'Person 20', age của mỗi Person random từ 10 -> 90
    $people = []
    def answer_7
        puts ""       
        puts "----Answer 7----"  
        a = 20
        a.times do |i|
            $people << "Age: #{rand(10...90)}, Name: Person #{i+1}"
        end
        puts $people
    end



# Question: 8. Với mảng 'people' lọc ra những Person có tuổi nhỏ hơn 18
    def answer_8
        puts ""       
        puts "----Answer 8----"
        $people.map{
            |i|
            if i[5,3].to_i<18
                puts i
            end
        }
    end



# Question: 9. Với mảng 'people' xóa những Person có tuổi nhỏ hơn 18
    def answer_9
        puts ""       
        puts "----Answer 9----"
        $people.delete_if{
            |a|
            a[5,3].to_i<18
        }
    end



# Question: 10. Sort mảng 'people' theo tuổi tăng dần.
    def answer_10
        puts ""       
        puts "----Answer 10----"
        $people.sort
    end



# Question: 11. Sort mảng 'people' theo tuổi giảm dần.
    def answer_11
        puts ""       
        puts "----Answer 11----"
        $people.sort{
            |x,y|
            y<=>x
        }
    end



# Question: 12. Delete 1 phần tử ở vị trí xác định trong mảng 'people'
    def answer_12
        puts ""       
        puts "----Answer 12----"
        $people.delete_at(0)
        puts $people
    end


# Question: 13. Xem phần module enumerable của Ruby: https://ruby-doc.org/core-2.5.1/Enumerable.html (Array và Hash trong Ruby có include module này) để tìm ra Person lớn tuổi nhất, Person nhỏ tuổi nhất.
    def answer_13
        puts ""       
        puts "----Answer 13----"
        $people.minmax
    end


# Question: 16. Tạo 1 mảng 'people_2' tương tự câu 7, nối mảng 'people_2' vào 'people'
    $people_2 = []
    def answer_16
        puts ""       
        puts "----Answer 16----"  
        a = 20
        a.times do |i|
            $people_2 << "Age: #{rand(10...90)}, Name: Person #{i+1}"
        end
        puts $people.concat $people_2
    end


# Question: 17. Viết 1 instance method bất kì, raise Exception (với message bất kì) trong method đó, sau đó catch exception và in ra message của Exception đó.
    def answer_17
        puts ""       
        puts "----Answer 17----"  
        age =17
        begin
            if age<18
                raise "Duoi 18 khong duoc"
            end
            puts "duoc"
        rescue 
            puts "với message bất kì"
        end
    end

end



b1 = Person.new("Hai", 20)

puts b1.name
puts b1.age
puts b1.answer_5
puts Person.answer_6
puts b1.answer_7
puts b1.answer_8
puts b1.answer_9
puts b1.answer_10
puts b1.answer_11
puts b1.answer_12
puts b1.answer_13
puts b1.answer_16
puts b1.answer_17
