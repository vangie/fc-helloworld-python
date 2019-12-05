include .env
export $(shell sed 's/=.*//' .env)

publish_name := HelloWorld-Python
dist := ./dist/$(publish_name)

clean:
	rm -rf dist/*

prepare: 
	mkdir -p $(dist)

package: prepare
	cd src; zip -r ../$(dist)/code.zip  *

build: package
	cp -r doc/* $(dist)
	sed -e 's/CodeUri:.*/CodeUri: oss:\/\/%bucket%\/%templateName%\/code.zip/g' template.yml > $(dist)/template.yml

publish: build
	cd $(dist); fcat publish 

unpublish: 
	fcat delete $(publish_name)
