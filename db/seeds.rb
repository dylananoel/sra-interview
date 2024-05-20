(1..100).each do |i|
  post = Post.new(
    title: "My blog post #{i}",
    body: "my blog body #{i}",
    published: [true, false].sample
  )
  post.save!(validate: false) # validation purposefully broken
  num = [0, 0, 1, 2, 4, 6]
  (0..num.sample).each do
    post.comments << Comment.new(body: 'Have a comment')
  end
  (0..num.sample).each do
    post.ratings << Rating.new(stars: [1, 2, 3, 4, 5].sample)
  end
end

Post.new(
  title: 'The last blog post',
  body: 'my blog body 101',
  published: true
).save!(validate: false) # validation purposefully broken

Post.new(
  title: '  The last blog post ',
  body: 'my blog body 102',
  published: true
).save!(validate: false) # validation purposefully broken
