module NasaPhotosHelper
  def build_web_page(photos)
    photos.collect do |photo|
      content_tag(:div, class: "col-md-3") do
        tag("img", src: photo['img_src'])
      end
    end.join.html_safe
  end

end
