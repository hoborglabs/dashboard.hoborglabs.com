include .make

GIT_HASH=$(shell git log -n1 --format=%h)

.make:
	echo "" > .make

deploy_mydevil: build
	cd out && \
	tar -czf ../dashboard.hoborglabs.com-$(GIT_HASH).tgz .
	scp \
		dashboard.hoborglabs.com-$(GIT_HASH).tgz \
		woledzki@s2.mydevil.net:~/domains/dashboard.hoborglabs.com/
	ssh woledzki@s2.mydevil.net "mkdir -p ~/domains/dashboard.hoborglabs.com/release-$(GIT_HASH)"
	ssh woledzki@s2.mydevil.net "tar -xz -C ~/domains/dashboard.hoborglabs.com/release-$(GIT_HASH) -f ~/domains/dashboard.hoborglabs.com/dashboard.hoborglabs.com-$(GIT_HASH).tgz"
	ssh woledzki@s2.mydevil.net "ln -sFn ~/domains/dashboard.hoborglabs.com/release-$(GIT_HASH) ~/domains/dashboard.hoborglabs.com/public_html"

server: build
	php -t out -S localhost:4444

build: clean assets
	mkdir -p out/doc/dev
	php displayService.phar ds:generate --source='/' --output='out'

assets:
	mkdir -p out
	cp -R htdocs/styles out/
	cp -R htdocs/images out/

deps: displayService.phar

displayService.phar:
	curl -s -OL http://get.hoborglabs.com/displayService/displayService.phar

clean:
	rm -rf build
