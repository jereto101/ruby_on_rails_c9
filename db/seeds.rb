3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title:"My Blog Post #{blog}",
    body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dignissim nisl turpis. Nam ut tempor dolor, ac sollicitudin libero. Praesent venenatis gravida dolor ac facilisis. Nullam aliquam ac augue non auctor. 
    Praesent placerat suscipit eros, euismod placerat neque blandit quis. Pellentesque congue diam est, non varius elit pulvinar quis. Vivamus efficitur neque et magna aliquam congue. Pellentesque facilisis massa at massa consequat,
    eu consectetur nisi placerat. Vestibulum ultrices ante ac magna ornare sagittis. Nulla et nunc a mauris vulputate euismod non ut sapien. Quisque in lectus dapibus, malesuada metus et, mollis arcu. Donec et ultricies lectus, 
    vel cursus mauris. Proin ornare augue ac odio congue, in ultrices ante volutpat.
    Nam vulputate, odio nec pellentesque tempus, nisl eros vulputate augue, sit amet tempus lacus leo ut augue. Fusce scelerisque, justo eu efficitur suscipit, nibh ipsum fermentum elit, eu cursus purus lacus venenatis libero. 
    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus blandit eu quam in ullamcorper. Ut ac cursus turpis, nec interdum nunc. Aliquam auctor lorem est, vel tincidunt magna 
    fringilla eu. Maecenas at nunc ante. Etiam nunc nisl, iaculis ut augue ac, malesuada tristique nunc.
    Integer cursus interdum diam eu dignissim. Donec semper consectetur condimentum. Fusce urna lorem, semper a interdum et, tristique at ex. Etiam ac augue tristique, malesuada elit in, cursus nisl. Cras a mattis est, nec 
    ultricies risus. Aliquam tellus mi, pretium at lectus et, cursus aliquam odio. Curabitur bibendum rutrum dolor, consectetur ornare augue laoreet ac. Pellentesque sit amet neque orci. Aenean ut sapien ut diam rutrum interdum.
    Sed porta a nisl id egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In mollis metus et enim pharetra mollis. Phasellus accumsan, massa eget iaculis elementum, sapien orci
    ornare nulla, ut scelerisque enim erat eu ipsum. Nam ultrices, urna at consequat pharetra, lorem metus aliquam arcu, in mattis sem dolor eget turpis.",
    topic_id: Topic.last.id
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
  
8.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body:"Vestibulum in imperdiet erat. Curabitur lacinia, nisi non molestie dapibus, nibh purus ultrices diam, semper blandit erat diam a elit. In pharetra euismod metus, in rutrum libero finibus at. Aenean egestas scelerisque ullamcorper. In hendrerit ultricies lectus fermentum egestas. Nunc elementum, orci non tempor aliquet, neque risus pharetra nunc, sed volutpat velit lorem quis arcu. Integer a dolor quis velit laoreet porttitor.",
    main_image:"http://placehold.it/600x400",
    thumb_image:"http://placehold.it/350x200"
    )
  end
  
1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Mauris sapien velit, consequat eu quam et, tincidunt varius libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras consectetur nisi non convallis tristique. Maecenas eu aliquam sem, a luctus nisi. Nam eget tortor maximus dui faucibus auctor. In molestie quam nec consectetur sollicitudin. Etiam quis dapibus massa, a gravida turpis. Aenean gravida arcu suscipit, venenatis felis non, blandit diam. In quis varius eros. Sed elementum, lectus vestibulum dictum vehicula, leo nibh congue nulla, quis fermentum lorem nisi ac dolor. Vivamus id dui vel nisi ultricies accumsan. Morbi ut volutpat diam. Fusce eget blandit ligula. Vivamus dictum augue ut ligula imperdiet tincidunt. Nulla facilisi.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
  end
  
puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"

User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"
