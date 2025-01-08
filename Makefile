.PHONY: upload-avatars
upload-avatars:
	pushd team; \
	gsutil -h "Cache-Control:private, max-age=0, no-transform" rsync -r -x "^(?!.*\.png$$).*" ./ gs://planton-cloud-static-assets/acmecorp/team/; \popd
