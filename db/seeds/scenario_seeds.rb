def scenario_seed
  Scenario.create(name: "The first scenario", location: "Flick HQ", active: true, players: 50,starts_at: Date.today)
end