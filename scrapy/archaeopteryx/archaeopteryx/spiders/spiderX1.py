# -*- coding: utf-8 -*-
import scrapy


class Spiderx1Spider(scrapy.Spider):
    name = 'spiderX1'
    allowed_domains = ['quotes.toscrape.com']
    start_urls = ['http://quotes.toscrape.com/']

    def parse(self, response):
        pass
