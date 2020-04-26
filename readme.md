## Installation

1. Copy this git repository

2. edit .env files according with your database configuration

3. Open a terminal at the app directory and run:
```
composer install
```

4. Generate app key
```
php artisan key:generate
```
5. Make the database with utf8mb4 character set and utf8mb4_general_ci collation

6. Migrating to database
```
php artisan migrate --seed
```

7. Run the app, it will run on http://localhost:8000
```
php artisan serve
```
