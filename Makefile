.PHONY: image push

tag = v0.1
releaseName = pixiu-webshell
dockerhubUser = jacky06

image:
	cd docker/pixiu-webshell && \
	docker build -t $(dockerhubUser)/$(releaseName):$(tag) .

push: image
	docker push $(dockerhubUser)/$(releaseName):$(tag)
