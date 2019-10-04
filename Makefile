docker-start-dev:
	docker-compose up --build

project-create:
	docker-compose run server sh -c "django-admin.py startproject app ."

migrations:
	docker-compose run server sh -c "python manage.py makemigrations"

migrate:
	docker-compose run server sh -c "python manage.py migrate"

create-superuser:
	docker-compose run server sh -c "python manage.py createsuperuser"