# Title     : TODO
# Objective : TODO
# Created by: radhapavan
# Created on: 6/5/2018
library(tidytext)
library(dplyr)

# geocoded_tweets has been pre-defined
#geocoded_tweets

# Access bing lexicon: bing
tweets_nrc <- get_sentiments("nrc")

tweets_nrc %>% filter(sentiment=="positive") %>% group_by(word)

print(tweets_nrc)

joy_words <- tweets_nrc %>%
  # Filter to choose only words associated with joy
  filter(sentiment == "joy") %>%
  # Group by each word
  group_by(word) %>%
  # Use the summarize verb to find the mean frequency
  summarize(freq = mean(freq)) %>%
  # Arrange to sort in order of descending frequency
  arrange(desc(freq))

# Load ggplot2
library(ggplot2)

joy_words %>%
  top_n(20) %>%
  mutate(word = reorder(word, freq)) %>%
  # Use aes() to put words on the x-axis and frequency on the y-axis
  ggplot(aes(word, freq)) +
  # Make a bar chart with geom_col()
  geom_col() +
  coord_flip()