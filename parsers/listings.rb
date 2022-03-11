html = Nokogiri.HTML(content)

# p html

products = html.css('div[data-stack-index="0"] section div.flex.flex-wrap div.mb1.ph1.pa0-xl')

p products

# products.each do |product|
#     url = product.at_css('a')['href']
#     if url
#         urlfull = URI.join('https://www.walmart.com', url).to_s
#         pages << {
#             url: urlfull,
#             page_type: 'products',
#             method: "GET",
#             headers: {
#                 "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
#                 "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
#                 "sec-ch-ua-mobile"=> "?0",
#                 "sec-ch-ua-platform"=> '"Linux"',
#                 "sec-fetch-dest"=> "document",
#                 "sec-fetch-mode"=> "navigate",
#                 "sec-fetch-site" => "same-origin",
#                 "sec-fetch-user" => "?1",
#                 "upgrade-insecure-requests" => "1"
#             },
#             fetch_type: "fullbrowser",
#         }
#     end
# end

# page_links = html.css('[aria-label="pagination"] li a')

# page_links.each do |link|
#     url = link['href']
#     if url
#         urlfull = URI.join('https://www.walmart.com', url).to_s
#         pages << {
#             url: urlfull,
#             page_type: 'listings',
#             method: "GET",
#             headers: {
#                 "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
#                 "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
#                 "sec-ch-ua-mobile"=> "?0",
#                 "sec-ch-ua-platform"=> '"Linux"',
#                 "sec-fetch-dest"=> "document",
#                 "sec-fetch-mode"=> "navigate",
#                 "sec-fetch-site" => "same-origin",
#                 "sec-fetch-user" => "?1",
#                 "upgrade-insecure-requests" => "1"
#             },
#             fetch_type: "fullbrowser",
#         }
#     end
# end