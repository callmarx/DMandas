ifneq (,$(findstring src/,$(MAKECMDGOALS)))
	MAKECMDGOALS := $(subst src/,,$(MAKECMDGOALS))
endif

MAKEFLAGS += -s

up:
	docker-compose up app

exec:
	docker-compose exec app bundle exec $(filter-out $@, $(MAKECMDGOALS))

console:
	docker-compose exec app bundle exec rails console

lint:
	docker-compose exec app bundle exec rubocop
	docker-compose exec app brakeman
	docker-compose exec app rubycritic

lint-fix:
	docker-compose exec app bundle exec rubocop --auto-correct

prepare-db:
	docker-compose exec app bundle exec rails db:create db:migrate db:seed
	docker-compose exec app bundle exec "rails db:create RAILS_ENV=test"

refresh-db:
	docker-compose exec app bundle exec rails db:drop db:create db:migrate db:seed

test:
	docker-compose exec app bundle exec rspec $(filter-out $@, $(MAKECMDGOALS))
