pages << {
    page_type: "listings",
    method: "GET",
    headers: {
        "User-Agent" => "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36",
        "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
        "sec-ch-ua-mobile"=> "?0",
        "sec-ch-ua-platform"=> '"Linux"',
        "sec-fetch-dest"=> "document",
        "sec-fetch-mode"=> "navigate",
        "sec-fetch-site" => "same-origin",
        "sec-fetch-user" => "?1",
        "upgrade-insecure-requests" => "1"
    },
    url: "https://www.walmart.com/browse/movies-tv-shows/4096?facet=new_releases:Last+90+Days",
    fetch_type: "browser",
}