class Character < ApplicationRecord
  enum creature_class: {
    human: 0, elf: 1, orc: 2, ent: 3, wizard: 4
  }
  validates_presence_of :name, :job
  validates :creature_class, inclusion: { in: creature_classes.keys }

  validates :job, length: { minimum: 4 }
  validates :name, length: { minimum: 1 }
  belongs_to :scenario, optional: true
end
