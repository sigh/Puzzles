module Jekyll
  module NavFilters
    def snake_to_words(str)
      words = str.split('_')
      words.first.capitalize!
      words.join(' ')
    end

    def puzzle_id(puzzle)
      puzzle.path.split('/')[2].gsub('.md', '')
    end

    def puzzle_category(puzzle)
      puzzle.path.split('/')[1]
    end
  end
end

Liquid::Template.register_filter(Jekyll::NavFilters)