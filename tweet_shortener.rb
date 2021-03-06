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

def bulk_tweet_shortener(tweets)
      tweets.map{|tweet|  puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length>140
    return "#{word_substituter(tweet)[0..136]}..."
  else
    return tweet
end
end
