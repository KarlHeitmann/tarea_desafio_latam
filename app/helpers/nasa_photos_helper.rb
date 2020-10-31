module NasaPhotosHelper
=begin
  def format_name(user)
    if user.gender == "M"
      "Mr. #{user.name}"
    else
      "Ms. #{user.name}"
    end
  end
=end
  def build_web_page(photos)
    output = ""
    photos.each do |photo|
      output += photo['img_src'] + '\n'
    end
    output
  end

end
