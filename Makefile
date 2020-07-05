build:
	echo '# 4.1' > readme.md && \
	for file in *.md; do \
		if [ $$file != "readme.md" ]; then \
			cat $$file >> readme.md; \
			echo '' >> readme.md; \
		fi; \
	done;
