10.times do |blog|
  BlogPost.create!(
    title: "My Blog Post #{blog}",
    body: "Bacon ipsum dolor amet meatball corned beef andouille cupim pork loin prosciutto. 
    Prosciutto ground round jowl t-bone cupim. Tenderloin chislic turducken, drumstick chuck 
    kielbasa pork belly ground round short loin brisket rump flank hamburger meatloaf alcatra."
  )
end

puts "10 blog post created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "A demo using x technology",
    body: "Looking at this output, it's easy to understand how generators work in Rails 3.0 and above. 
      The scaffold generator doesn't actually generate anything, it just invokes others to do the work. 
      This allows us to add/replace/remove any of those invocations.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end