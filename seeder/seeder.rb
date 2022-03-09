pages << {
    page_type: "listings",
    method: "GET",
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
    url: "https://www.walmart.com/browse/movies-tv-shows/4096?facet=new_releases:Last+90+Days",
    fetch_type: "browser",
    driver: {
        pre_code: "await page.setViewport({
            width: 1920 + Math.floor(Math.random() * 100),
            height: 3000 + Math.floor(Math.random() * 100),
            deviceScaleFactor: 1,
            hasTouch: false,
            isLandscape: false,
            isMobile: false,
        });",
        code: "await page.click(iframe[style='display: block; width: 100%; height: 100px; border: 0; -moz-user-select: none; -khtml-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;'], {delay: 10000});",
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