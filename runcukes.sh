export GALAXY_URL="https://galaxy-davenicolette339440.codeanyapp.com"
test $(curl --write-out %{http_code} --silent --head --output /dev/null "$GALAXY_URL" | grep "200") \
    || bundle exec rackup -o "0.0.0.0" -p 3000 &
bundle exec cucumber
