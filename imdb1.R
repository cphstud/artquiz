library(rvest)

url="https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&genres=adventure&sort=user_rating,desc"
url2="https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&genres=adventure&sort=user_rating,desc&start=51&ref_=adv_nxt"

page=read_html(url)
page=read_html(url2)

ttag=".lister-item-header a"
ytag=".text-muted.unbold"
rtag=".ratings-imdb-rating strong"
stag=".ratings-bar+ .text-muted"


name <- page %>% html_nodes(ttag) %>% html_text()
year <- page %>% html_nodes(ytag) %>% html_text()
rating <- page %>% html_nodes(rtag) %>% html_text()
synopsis <- page %>% html_nodes(stag) %>% html_text()
name2 <- page %>% html_nodes(ttag) %>% html_text()
year2 <- page %>% html_nodes(ytag) %>% html_text()
rating2 <- page %>% html_nodes(rtag) %>% html_text()
synopsis2 <- page %>% html_nodes(stag) %>% html_text()

movies <- data.frame(name,year,rating,synopsis)
movies2 <- data.frame(name2,year2,rating2,synopsis2)


