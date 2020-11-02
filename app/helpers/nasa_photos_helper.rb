module NasaPhotosHelper
  def build_web_page(photos)
    content_tag(:ul) do
      photos.collect do |photo|
        content_tag(:li) do
          tag("img", src: photo['img_src'])
        end
      end.join.html_safe
    end
  end

end
