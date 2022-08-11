def scenario_seed
  Scenario.create(name: "The first scenario", location: "Flick HQ", active: true, players: 50,starts_at: Date.today)
  Scenario.create(name: "The second scenario", location: "Z HQ", active: false, players: 10, starts_at: 5.days.ago)
end