class Character < ApplicationRecord
  enum creature_class: {
    human: 0, elf: 1, orc: 2, ent: 3, wizard: 4
  }
end
