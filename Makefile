default: unsong.mobi

clean:
	rm -rf unsong*.html unsong.mobi

unsong.mobi: unsong.processed.html
	ebook-convert unsong.processed.html unsong.mobi --authors "Scott Alexander" --title "Unsong" --max-toc-links 500

unsong.processed.html: unsong.html
	./prettify.sh < unsong.html > unsong.processed.html

unsong.html: unsong_scraper.rb
	ruby unsong_scraper.rb > unsong.html
