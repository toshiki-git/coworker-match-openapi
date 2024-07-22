.PHONY: build-docker run-docker

# Dockerイメージをビルドするターゲット
build-docker:
	docker build -t openapi-generator:latest .

# Dockerコンテナを実行してOpenAPIファイルを結合するターゲット
run-docker:
	docker run --rm -v ${CURDIR}:/app openapi-generator:latest sh -c "redocly bundle /app/openapi.yml -o /app/dist/combined-local.yml"
