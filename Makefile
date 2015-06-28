prep: decrypt

decrypt:
	mkdir -p code && cd encoded && for file in ./*.asc; do gpg --decrypt --quiet $$file > ../code/$${file%.*}; done
