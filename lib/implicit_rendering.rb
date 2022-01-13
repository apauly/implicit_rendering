require 'active_support'

module ImplicitRendering

  module ClassMethods
    mattr_accessor :implicit_render_mapping, :implicit_render_formats

    def implicit_rendering(mapping_options)
      self.implicit_render_mapping = mapping_options.except(:formats).stringify_keys
      self.implicit_render_formats = mapping_options[:formats] || [:html]
    end
  end

  def self.prepended(base)
    base.extend ClassMethods
  end

  def default_render
    template_name = self.class.implicit_render_mapping&.dig(action_name)

    return super unless perform_implicit_rendering?(template_name)

    render template_name
  end

  def render(options={})
    if options.is_a?(Hash) && (template_name = self.class.implicit_render_mapping&.dig(options[:action].to_s))
      options[:action] = template_name
    end
    super
  end

  def perform_implicit_rendering?(template_name)
    template_name.present? &&
      self.class.implicit_render_formats.any? {|format| request.format == format }
  end

end
