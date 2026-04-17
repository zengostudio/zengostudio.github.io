hugo:
	docker run --rm \
	-v .:/src \
	-v ./public:/output \
	-e HUGO_WATCH=false \
	jojomi/hugo:0.34

dev: hugo
	deno run -A jsr:@std/http/file-server public