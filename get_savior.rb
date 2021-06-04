require "savior"

print "Person A - Age of Death (0-999) : "
p1_age_of_death = gets
if p1_age_of_death.to_i < 0
  puts "-1"
  exit
end
print "Person A - Year of Death (0-999) : "
p1_year_death = gets
print "Person B - Age of Death (0-999) : "
p2_age_of_death = gets
if p2_age_of_death.to_i < 0
  puts "-1"
  exit
end
print "Person B - Year of Death (0-999) : "
p2_year_death = gets
person_a = Savior::Person.new(p1_age_of_death, p1_year_death)
total_died_year_person_a = person_a.total_died_on_year(person_a.year_coming)
if total_died_year_person_a.to_i < 0
  puts "-1"
  exit
end
person_a_output = "Person A born on Year = #{p1_age_of_death} – #{p1_year_death} = #{person_a.year_coming}, number of people killed on year #{person_a.year_coming} is #{total_died_year_person_a}."
print person_a_output.gsub("\n","")
puts ""
person_b = Savior::Person.new(p2_age_of_death, p2_year_death)
total_died_year_person_b = person_b.total_died_on_year(person_b.year_coming)
if total_died_year_person_b.to_i < 0
  puts "-1"
  exit
end
person_b_output = "Person A born on Year = #{p2_age_of_death} – #{p2_year_death} = #{person_b.year_coming}, number of people killed on year #{person_b.year_coming} is #{total_died_year_person_b}."
print person_b_output.gsub("\n","")
puts ""
average_total = Savior::Average.count(total_died_year_person_a, total_died_year_person_b)
average_output = "So Average of 2 Person is #{average_total}"
print average_output.gsub("\n","")
puts ""
