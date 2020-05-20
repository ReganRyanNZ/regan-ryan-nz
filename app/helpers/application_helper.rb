module ApplicationHelper

  def blog_image_tag ref, title: "", size: 'square'
    case size
    when 'square'
      html = <<~HTML
      <div class='img'>
        #{image_tag(ref, alt: title)}
        <div class='caption'>#{title}</div>
      </div>
      HTML
      html.html_safe
    when 'hero'
      html = <<~HTML
      <div class='img-hero'>
        #{image_tag(ref, alt: title)}
        <div class='caption'>#{title}</div>
      </div>
      HTML
      html.html_safe
    when 'full'
      html = <<~HTML
      <div class='img-full'>
        #{image_tag(ref, alt: title)}
        <div class='caption'>#{title}</div>
      </div>
      HTML
      html.html_safe
    end
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
