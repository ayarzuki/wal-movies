html = Nokogiri.HTML(content)

# puts html

products = html.css('div.flex-wrap div.mb1.ph1')

products.each do |product|
    url = product.at_css('a')['href']
    if url
        urlfull = URI.join('https://www.walmart.com', url).to_s
        pages << {
            url: urlfull,
            page_type: 'products',
            method: "GET",
            headers: {
                "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
                "accept-encoding" => "gzip",
                "content-security-policy" => "policy",
                "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
                "sec-ch-ua-mobile" => "?0",
                "sec-ch-ua-full-version-list" => 'Not A;Brand";v="99.0.0.0", "Chromium";v="99.0.4844.51", "Google Chrome";v="99.0.4844.51"',
                "sec-ch-ua-platform" => '"Linux"',
                "sec-fetch-dest" => "image",
                "sec-fetch-mode" => "no-cors",
                "sec-fetch-site" => "cross-site",
                "upgrade-insecure-requests" => "1",
                "content-type" => "application/javascript; charset=utf-8",
            },
            fetch_type: "browser",
            http2: true,
            force_fetch: true,
            ua_type: "none",
            display: {
                "width": 1280,
                "height": 695
            },
            driver: { 
                "name": "scraping walmart",
                "stealth": true,
                "enbable_images": false,
            }
        }
    end
end

page_links = html.css('[aria-label="pagination"] li a')

page_links.each do |link|
    url = link['href']
    if url
        urlfull = URI.join('https://www.walmart.com', url).to_s
        pages << {
            url: urlfull,
            page_type: 'listings',
            method: "GET",
            headers: {
                "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
                "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"',
                "sec-ch-ua-mobile"=> "?0",
                "sec-ch-ua-platform"=> '"Linux"',
                "sec-fetch-dest"=> "document",
                "sec-fetch-mode"=> "navigate",
                "sec-fetch-site" => "same-origin",
                "sec-fetch-user" => "?1",
                "upgrade-insecure-requests" => "1",
            },
            fetch_type: "browser",
            http2: true,
            force_fetch: true,
            ua_type: "none",
            display: {
                "width": 1280,
                "height": 695
            },
            driver: { 
                "name": "scraping walmart",
                "stealth": true,
                "enbable_images": false,
            }
        }
    end
end