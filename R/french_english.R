francaise_english <- function(word) {
  google <- paste(word, "francaise")

  linguee_url <- paste0("https://www.linguee.com/english-french/search?query=", word)
  forvo_url <- paste0("https://forvo.com/word/", word, "/#fr")
  google_images_url <- paste0("https://www.google.com/search?tbm=isch&q=", google)

  urls <- list(linguee = linguee_url, forvo = forvo_url, google_images = google_images_url)

  lapply(urls, function(url) {
    print(paste("Opening:", url))
    utils::browseURL(url)
  })

  return(urls)
}


deutsch_english <- function(word) {
  google <- paste(word, "deutsch")

  linguee_url <- paste0("https://www.linguee.com/english-german/search?query=", word)
  forvo_url <- paste0("https://forvo.com/word/", word, "/#de")
  google_images_url <- paste0("https://www.google.com/search?tbm=isch&q=", google)

  urls <- list(linguee = linguee_url, forvo = forvo_url, google_images = google_images_url)

  lapply(urls, function(url) {
    print(paste("Opening:", url))
    utils::browseURL(url)
  })

  return(urls)
}
