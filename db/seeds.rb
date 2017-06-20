10.times do |blog|
  Blog.create!(
    title:"My Blog Post #{blog}",
    body:"lorem ipsum",
    )
  end 

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title:"rails #{skill}",
    percent_untilized: 15,
    )
  end
  
puts "5 skill created"
  
9.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}",
    subtitle: "my great service",
    body:"lorem ipsum",
    main_image:"http://via.placeholder.com/600x400",
    thumb_image:"http://via.placeholder.com/350x200"
    )
  end
  
puts "9 portfolio items created"