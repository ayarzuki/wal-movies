html = Nokogiri.HTML(content)

# p html
products = html.css('div[data-stack-index="0"] section div.flex.flex-wrap div.mb1.ph1.pa0-xl')
# p products
products.each do |product|
  href = product.css('a.absolute.w-100.h-100.z-1')['href'].text
#   p href
  url = URI.join('https://www.walmart.com, href').to_s
  pages << {
      url: url,
      page_type: 'products',
      fetch_type: 'fullbrowser',
      vars: {},
      headers: {
        "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
        "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
        "sec-ch-ua-mobile"=> "?0",
        "sec-ch-ua-platform"=> '"Linux"',
        "sec-fetch-dest"=> "document",
        "sec-fetch-mode"=> "navigate",
        "sec-fetch-site" => "same-origin",
        "sec-fetch-user" => "?1",
        "upgrade-insecure-requests" => "1",
      },
      driver: {
        pre_code: "await page.setViewport({
            width: 1920 + Math.floor(Math.random() * 100),
            height: 3000 + Math.floor(Math.random() * 100),
            deviceScaleFactor: 1,
            hasTouch: false,
            isLandscape: false,
            isMobile: false,
        });",
        disable_adblocker: true,
      }
    }
end

# pagination_links = html.css('.list.flex.items-center.justify-center.pa0 li')
# next_ur = pagination_links ? pagination_links.css('a')[4].text.to_i : 0
next_ur = html.css('.list.flex.items-center.justify-center.pa0 li a[aria-label="Next Page"] > @href')

if next_ur != []
  url = "https://www.walmart.com#{next_ur}"
  pages << {
      url: url,
      page_type: 'listings',
      fetch_type: 'fullbrowser',
      headers: {
        "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
        "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
        "sec-ch-ua-mobile"=> "?0",
        "sec-ch-ua-platform"=> '"Linux"',
        "sec-fetch-dest"=> "document",
        "sec-fetch-mode"=> "navigate",
        "sec-fetch-site" => "same-origin",
        "sec-fetch-user" => "?1",
        "upgrade-insecure-requests" => "1",
      },
      driver: {
        code: "await page.click(iframe[style='display: block; width: 100%; height: 100px; border: 0; -moz-user-select: none; -khtml-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;'], {delay: 10000});",
        pre_code: "await page.setViewport({
            width: 1920 + Math.floor(Math.random() * 100),
            height: 3000 + Math.floor(Math.random() * 100),
            deviceScaleFactor: 1,
            hasTouch: false,
            isLandscape: false,
            isMobile: false,
        });",
        disable_adblocker: true,
      },
      screenshot: {
        "take_screenshot": true,
        "options": {
         "fullPage": false,
         "type": "jpeg",
         "quality": 75
       }
    }
    }
end