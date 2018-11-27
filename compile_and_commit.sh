COMMIT_MESSAGE=$1


git add . && \
git commit -m "${COMMIT_MESSAGE}"
wait

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book',new_session = T)" && \
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook',new_session = T)" && \
git push