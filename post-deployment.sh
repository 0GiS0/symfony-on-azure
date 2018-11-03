if [ -f  composer.json ] 
    then 
        echo "Found composer.json" 
	    composer install 
    else 
	    echo "composer.json not found. Skipping composer install" 
fi

if [ -f  package.json ] 
    then 
        echo "Found package.json" 
        echo "npm install launched" 
        npm install
        echo "webpack launched"
        npm run-script build
    else 
	    echo "package.json not found. Skipping npm install" 
fi