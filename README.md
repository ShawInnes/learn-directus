

npx directus roles create --role Administrators --admin true
npx directus roles create --role User

docker compose exec -it directus npx directus roles create --role Administraotrs --admin true