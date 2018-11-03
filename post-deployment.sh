if [ -f  composer.json ] 
    then 
        echo "Found composer.json" 
	    composer install 
    else 
	    echo "composer.json not found. Skipping composer install" 
fi

echo "npm install launched"
npm install
echo "webpack launched"
npm run-script build
   