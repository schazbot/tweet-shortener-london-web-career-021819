require 'pry'
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end


def word_substituter(string)
  tweet = string.split(" ")
  short_tweet = tweet.collect do |word|
    if dictionary.keys.include?(word.downcase)
       dictionary[word.downcase]
    else
word
end
end
short_tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |string|
    puts word_substituter(string)
  end
 end

 def selective_tweet_shortener(tweet)
   if tweet.length > 140
          word_substituter(tweet)
    else
      return tweet
   end
 end

 def shortened_tweet_truncator(tweet)
   shortened_tweet = word_substituter(tweet)
    if shortened_tweet.length > 140
      return shortened_tweet[0..134] + "(...)"
    else tweet
    end
  end
