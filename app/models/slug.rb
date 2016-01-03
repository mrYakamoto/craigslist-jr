module Slug

 def create_slug
  self.slug = self.title.gsub(/\s/, '-')
 end

end
