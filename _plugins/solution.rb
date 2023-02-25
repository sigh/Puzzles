require 'securerandom'

module Jekyll
  class SolutionTagBlock < Liquid::Block

    def render(context)
      # Create a random id to avoid clashes.
      id = SecureRandom.uuid
      # Solution contents.
      text = super

      # Create a collapsible section for solution.
      '{::nomarkdown}' "\n" \
      '<label for="' "#{id}" '"></label>' \
      '<input type="checkbox" class="solution" id="' "#{id}" '">' "\n" \
      '<div>' "\n" \
      '{:/}' "\n" \
      "#{text}" "\n" \
      '{::nomarkdown}' "\n" \
      '</div>' "\n" \
      '{:/}'
    end

  end
end

Liquid::Template.register_tag('solution', Jekyll::SolutionTagBlock)