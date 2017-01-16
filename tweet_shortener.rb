def word_substituter(tweet)
 dictionary={
  "hello"=>"hi",
  "to"=>"2",
  "two"=>"2",
  "too"=>"2",
  "for"=>"4",
  "four"=>"4",
  "be"=>"b",
  "you"=>"u",
  "at"=>"@",
  "and"=>"&"
  }
tweet_array=tweet.split(" ")
 tweet_array.map {|word|
    dictionary.each {|key,value|
    word= value if word.downcase==key
    }
    word
  }.join(" ")
end

def bulk_tweet_shortner(tweets)
      tweets.map{|tweet| word_substituter(tweet)}
end
