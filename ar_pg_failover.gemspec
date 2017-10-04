Gem::Specification.new do |s|
  s.name = "ar_pg_failover"
  s.version = "5.1.3" # taken from the current AR version
  s.summary = "Handles PG failovers"
  s.description = "PG failovers no longer lead to having to restart everything"
  s.authors = ["Matthias Geier"]
  s.email = "matthias.geier@metoda.com"
  s.homepage = "https://github.com/preisanalytics/ar_pg_failover"
  s.license = "Exclusive for metoda GmbH"
  s.files = Dir["lib/**/*rb"] + ["README.md"]
  s.add_dependency "activerecord", "~> 5.1"
  s.add_dependency "pg", "~> 0.21"
end
