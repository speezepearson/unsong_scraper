default: unsong.mobi

clean:
	rm -rf unsong.html unsong.mobi

unsong.mobi: unsong.html
	ebook-convert unsong.html unsong.mobi --authors "Scott Alexander" --title "Unsong" --max-toc-links 500

unsong.html: unsong_scraper.rb
	ruby unsong_scraper.rb > unsong.html
