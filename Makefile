deploy:
	jekyll build
	cd _site && \
		git add . && \
		git commit -m "Site updated at `date`" && \
		git push origin master && \
		echo "Successfully built and pushed to GitHub."
