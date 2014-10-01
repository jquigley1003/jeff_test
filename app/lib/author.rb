class Author < Person

  def get_author_info
    puts "Let's find the author of this program!"
    @author = {name: Jeff, age: 48, gender: M, city: Atlanta, state: GA, years_in_state: 8, moving: N}
  end

  def finding_author(people)
    people.reject { |human| human[:name] != "Jeff" }[0]
  end

  def select_by_name(list_of_users,first_name)
    list_of_users.select { |n| n [:name] == first_name }.first
    puts list_of_users [1]
  end

    # people = [user_response, author]
    # puts "By the way, the author of this program is: #{finding_author(people)[:name]}"

    # puts "Type a first name to guess the author!"
    # author_first_name = gets.chomp.capitalize!
    # select_by_name(people, author_first_name)

end