module ApplicationHelper

  def blog_image_tag ref, title: '', size: nil
    img_class = ['img', size].compact.join('-')
    html = <<~HTML
      <div class='#{img_class}'>
        #{image_tag(ref, alt: title)}
        <div class='caption'>#{title}</div>
      </div>
    HTML
    html.html_safe
  end

  def blog_index url_id, title: "", location: "", date: ""
    html = <<~HTML
    <tr>
      <td>#{link_to title, blog_path(url_id)}</td>
      <td>#{location}</td>
      <td>#{date}</td>
    </tr>
    HTML
    html.html_safe
  end
end
