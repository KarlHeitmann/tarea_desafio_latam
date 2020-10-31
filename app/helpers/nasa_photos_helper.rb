module NasaPhotosHelper
=begin
  def format_name(user)
    if user.gender == "M"
      "Mr. #{user.name}"
    else
      "Ms. #{user.name}"
    end
  end
  def build_web_page(photos)
    output = ""
    photos.each do |photo|
      output += photo['img_src'] + '\n'
    end
    output
  end
=end
  def build_web_page(photos)
    photos.collect do |photo|
      # output += photo['img_src'] + '\n'
      # content_tag(:div, class: "col-md-3") do
      #   tag("img", src: photo['img_src'])
      # end
      content_tag(:div, class: "col-md-3") do
        # "wena"
        # photo['img_src']
        tag("img", src: photo['img_src'])
      end
    end.join.html_safe
  end
  # end.join.html_safe

end
