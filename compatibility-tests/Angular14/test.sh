docker build --no-cache -t ng14 .
container_id=$(docker run --rm -d -p 4200:80 ng14)
cd ../playwright/tests
npm i
npx playwright test
docker stop $container_id
