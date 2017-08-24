require 'pry'

def dictionary
  {
    "to" => "2",
    "hello" => "hi",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "be" => "b"
  }
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  arr1 = []

  arr1 = arr.map{|x|
    if dictionary.keys.include?(x)
      x = dictionary[x]
    elsif dictionary.keys.include?(x.downcase)
      x = dictionary[x.downcase].capitalize
    else
      x = x
    end
  }
  new_tweet = arr1.join(" ")
end

def bulk_tweet_shortener(tweets)
  i = 0
  while i < tweets.length
    puts word_substituter(tweets[i])
    i += 1
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    elsif tweet.length < 140
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    str = tweet[0...137]
    tweet = "#{str}..."
  elsif tweet.length < 140
    tweet
  end
end
