yes yes | openssl aes-256-cbc -K $encrypted_34a133650a4c_key -iv $encrypted_34a133650a4c_iv -in private_key.enc -out ./private_key -d
yes yes | scp -i ./private_key ./docker-compose.yml ubuntu@35.180.25.176:/home/ubuntu/docker-compose.yml
yes yes | scp -i ./private_key ./api/dump.sql ubuntu@35.180.25.176:/home/ubuntu/dump.sql