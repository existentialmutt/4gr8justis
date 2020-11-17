class TagComponent < ApplicationComponent
  attr_reader :color, :css_class
  def initialize(color: "blue", css_class: "")
    @color = color
  end

  def color_class
    "bg-#{color}-300"
  end

  template <<~ERB
    <div class="inline-block px-2 rounded-full <%= color_class %> <%= css_class %>">
      <%= content %>
    </div>
  ERB
end
