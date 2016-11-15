class Fixnum
  define_method(:translate) do
    alphabet = {
      "3" => 'three'
    }
    new_name = []
    self.to_s.split().each() do |number|
        word = alphabet.fetch(number)
        new_name.push(word)
      end
    new_name.join()
  end
end
