class StreetsIndex < Chewy::Index
  settings analysis: {
    filter: {
      engram: { type: 'edgeNGram', min_gram: 3, max_gram: 10 } 
    },
    analyzer: { autocomplete: { 
      tokenizer: 'whitespace', 
      filter: ['lowercase', 'engram'] 
    } }
  }

  define_type Street, name: 'autocomplete' do
    root _all: { index_analyzer: 'autocomplete', search_analyzer: 'standard' } do
      field :full_path,
        index_analyzer: 'autocomplete',
        index: 'analyzed',
        search_analyzer: 'standard'
    end
  end

  class << self
    def autocomplete(term)
      return Autocomplete.none if term.blank? || term.size < 3
      Autocomplete.query(field: { _all: term })
    end
  end
end
