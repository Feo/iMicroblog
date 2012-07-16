module MicropostsHelper

  def wrap(content, width = 50)
    sanitize(raw(content.split.map{ |s| wrap_long_string(s, width) }.join(' ')))
  end

  private

    def wrap_long_string(text, max_width)
      zero_width_space = "&#8203;"
      regex = /.{1,#{max_width}}/
      (text.length < max_width) ? text : 
                                  text.scan(regex).join(zero_width_space)
    end
end