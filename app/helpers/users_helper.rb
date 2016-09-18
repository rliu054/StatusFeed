module UsersHelper
  def gravatar_for(user, size: 80)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    # http://s.gravatar.com/avatar/c6b2687fb593958bda5531ebaaf483c2?s=80
    gravatar_url = "http://s.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
    # gravatar_url = "https://cdn4.iconfinder.com/data/icons/new-google-logo-2015/400/new-google-favicon-128.png"
    # image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
