class Lez
  class << self
    def humanize(string)
      return string if string.empty? || string.include?(' ')
      if string.include?('_')
        humanize_underscore(string)
      else
        humanize_camelcase(string)
      end
    end

    def humanize_underscore(string)
      all_index_of(/_/, string) do |underscore_index|
        string[underscore_index] = ' '
        string[underscore_index + 1] = string[underscore_index + 1].upcase
      end
      string[0] = string[0].upcase
      string
    end

    def humanize_camelcase(string)
      all_index_of(/[A-Z]/, string, 1) do |upcase_index|
        string.insert(upcase_index + 1, ' ')
      end
      string
    end

    def all_index_of(regexp, str, start_index = 0)
      res = []
      str[start_index..str.length].scan(regexp) do |c|
        match = Regexp.last_match.offset(0).first
        res << match
        yield(match)
      end
      res
    end
  end
end
