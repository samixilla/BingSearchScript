# Required Parameters
$BingSearchURL = "https://www.bing.com/search?q="
$NumberOfSearches = 30
$TabLimit = 5

# Array of random search queries
$SearchQueries = @(
    "latest news",
    "stock price charts",
    "football news",
    "how to cook pasta",
    "best vacation spots",
    "movie reviews",
    "healthy recipes",
    "DIY home improvement",
    "technology trends",
    "funny cat videos",
    "book recommendations",
    "fitness tips",
    "travel destinations",
    "celebrity gossip",
    "product reviews",
    "career advice",
    "home decor ideas",
    "car maintenance tips",
    "music concerts near me",
    "artificial intelligence",
    "dog training techniques",
    "financial planning",
    "gardening tips",
    "famous historical events",
    "yoga for beginners",
    "BTC price",
    "ETH price",
    "LTC price",
    "BTC dominance rate",
    "crypto news",
    "healthy breakfast recipes",
    "latest fashion trends",
    "travel hacks",
    "popular podcasts",
    "mindfulness techniques",
    "movie trailers",
    "effective study methods",
    "best budget smartphones",
    "top-rated restaurants",
    "home workout routines",
    "upcoming concerts",
    "coding tutorials",
    "photography tips",
    "self-improvement books",
    "DIY skincare remedies",
    "investment strategies",
    "vegetarian dinner recipes",
    "brain teaser puzzles",
    "home organization tips",
    "relationship advice",
    "foreign language learning",
    "DIY painting techniques",
    "travel bucket list",
    "celebrity interviews",
    "new video game releases",
    "interior design inspiration",
    "budget travel destinations",
    "popular fitness apps",
    "hiking trails near me",
    "financial literacy resources",
    "easy dessert recipes",
    "best time management techniques",
    "houseplant care tips"
)

# Shuffle the search queries
$ShuffledQueries = $SearchQueries | Get-Random -Count $NumberOfSearches

# Perform the searches
1..$NumberOfSearches | ForEach-Object {
    $SearchQuery = $ShuffledQueries[$_ - 1]
    $SearchURL = $BingSearchURL + [Uri]::EscapeDataString($SearchQuery)
    Start-Process -FilePath $SearchURL
    $DelaySeconds = Get-Random -Minimum 3 -Maximum 6
    Write-Host "Delaying next search by $DelaySeconds seconds..."
    Start-Sleep -Seconds $DelaySeconds

    if ($_ % $TabLimit -eq 0) {
        # Close the Microsoft Edge browser
        Stop-Process -Name "msedge" -Force
        Start-Sleep -Seconds 3

        # Restart Microsoft Edge browser
        Start-Process msedge
        Start-Sleep -Seconds 5
    }
}
