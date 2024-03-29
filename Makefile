init:
	bundle install
	git clone -b master --single-branch git@github.com:teampopong/teampopong.github.io.git _site

serve:
	bundle exec jekyll serve

deploy:
	bundle exec jekyll build
	cd _site && \
		git add . && \
		git commit -m "Site updated at `date`" && \
		git push origin master && \
		echo "Successfully built and pushed to GitHub."
