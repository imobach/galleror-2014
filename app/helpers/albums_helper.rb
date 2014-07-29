module AlbumsHelper
  def format_rating(rating, image = 'face-star.png')
    stars = image_tag(image, alt: '*') * rating
    content_tag :span, stars.html_safe, class: 'rating'
  end
end
