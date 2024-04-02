RELEASE_VERSION = 4.40.0
VERSION = latest
IMAGE = gitbucket

OPTIONS = \
	--build-arg http_proxy=${http_proxy} \
	--build-arg https_proxy=${https_proxy} \
	--build-arg ftp_proxy=${ftp_proxy} \
	--build-arg no_proxy=${no_proxy}

build: FORCE
	docker build -t jam7/${IMAGE}:${VERSION} ${OPTIONS} .

release: FORCE
	docker build -t jam7/${IMAGE}:${RELEASE_VERSION} ${OPTIONS} .

FORCE:

