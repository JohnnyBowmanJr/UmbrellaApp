require 'machinist/active_record'

Parapluie.blueprint do
  colour { %w(red green blue black).sample }
  foldable { true }
  handle_type { "wood" }
end

Handle.blueprint do
  material { "wood" }
end