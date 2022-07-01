# Learning Regular Expressions

## __3. Character Sets__

----

### 3.1 Define a character set

Transcript:
In this chapter, we'll learn about character sets. We will begin by learning two more metacharacters, the open and closed square braces. These allow us to define a custom character set. A character set is going to match any one of several characters, the characters in our set, but it's only going to match one character. Be careful about that. The order that we put the characters into our set does not matter. If we add a character set, where inside the square braces we had A, E, I, O, and U, then that would match any one vowel. An example of where this might be useful is if we wanted to search a text and find the word gray, and we want to find it whether it's spelled G R E Y or G R A Y. We can put it in a character set, so that we have a regular expression looking for GR, and then inside those square braces, E or A, followed by Y. Now, be careful, it is only a single character. So if we had GR and then in square braces EA followed by a T, it would not match the word great because it's a single character, even though it looks the same visually, it doesn't have the same meaning. Let's try out a few in our Regex tool. Apples and bananas, and peaches are going to be the text that we're going to search, and for our regular expression, let's just start by putting square braces A E I O and U, and we'll close our square braces, now we've defined the character set, and now it tells us, it's going to match any one of these things. So you can see, it matched the E in apples. It didn't match the A because it is case sensitive. Let's go over here to our flags, and let's turn on global, and now you can see it matches all of those lowercase vowels. Now if we wanted it to match the uppercase ones as well, well then we'd need to add A E I O and U. Now it matches the A in apples also. As I said, it doesn't matter what order you write these in. If we swap these around and made it U O I E A, it matches the exact same thing. Let's try another example. Let's erase our fruits here, and let's write in GREY, space, GRAY. Now we don't want to just find the vowels, let's try and find anything that matches GR and then either E or A, followed by Y, and you can see now it matches both of those, and as we discussed, it only matches a single character, either the E or the A. If we made this into great, and then tried to see if it would match great, it does not. It would match grat and gret. Those would both match because it's a single character, not two characters. Now, we've only been doing character sets with letters, but that's not the only use case for them. For example, we could look for all numbers. Let's do number sign, 0123456789. Those are square braces. Let's say we were looking for text where we had contestant number one, and contestant number two. Now if we had contestant number 99, we'll notice it doesn't match two of them, it only matches the first one, but it is matching any one of those numbers. We can also do that with punctuation. Let's say we had some text, and we wanted to find either notice, keep off the grass, or notice exclamation point, keep off the grass. We could come up here and make our regular expression. We're looking for notice, and then it could either be a colon, an explanation point, a semicolon, a comma, et cetera. Any one of those literal characters can be put into a character set. A character set is just a way of defining a custom set of values that can be in any single character position.

----

### __BULLET POINT NOTES__

#### Character Set Metacharacters
  - Metachracters: []
  - Meanings: Begin and end a character set

#### Define a Chracter Set
  - Any one of several characters
  - But only one character
  - Order of characters in the set does not matter
  - /[aeiou]/ matches any one vowel
  - /gr[ea]y/ matches "grey" and "gray"
  - /gr[ea]t/ does NOT match "great"

#### regexr example:
  - text: Apples, Bananas, Peaches
    - regex: /[aeiou]/ matches "e" in Apples
    - regex: /[aeiou]/g matches all lowercase vowels
    - regex: /[AEIOUaeiou]/g matches all vowels
  - regex: /#[0123456789]/g
    - text: Contestant [#1]
    - text: Contestant [#2]
    - text: Contestant [#9]9 (only the first 9)
  - regex: /Notice[:!;,]/g
    - text: [Notice:] keep off of the grass
    - text: [Notice!] keep off of the grass

----

### 3.2 Character Ranges

Transcript:
Now that we know about character sets, we can talk about character ranges, 'cause character ranges are going to help us to work with character sets. First, let's take a look at a couple of character sets. If we had a character set that was to match any number, we could define it inside square brackets as zero one two three four five six seven eight nine. If we wanted to match any lower case letter, then we could create a character set and put all the lower case letters A through Z inside. And if we wanted to match any upper case letter, we could do the same thing. But if we wanted to have a character set that would match any upper case letter, any lower case letter or any number, you can see we would be writing out a lot of information. We'd have a very long regular expression and it would only be targeting a single character. That's crazy. Character ranges take the pain out of this. We use the metacharacter, which is just a dash or hyphen to indicate a range of characters. This hyphen includes all characters between two characters, so it assumes that characters have some sort of order to them so that it can know what characters should go between two characters. With numbers, that's pretty easy. If you have the number zero, you have a dash and then a five, it indicates all the numbers from zero to five. With letters, we can do the same thing. You can even do it with symbols, but it's not as intuitive. Now a dash is only a metacharacter inside a character set. If it's outside those square brackets, it's a literal dash. So its context does matter. But whenever a dash is inside a character set, it becomes a metacharacter, and it indicates a range. So inside a character set, we could have zero dash nine for all of the numbers. We could have A dash Z, upper case for all the upper case characters, and A dash Z for all of the lower case characters. You can see that's a lot shorter to write. And you can combine them together. So I could have a character set that has A dash D, W dash Y, they would match the letters A, B, C, D, W, X or Y. Another word of caution that I want to give you about character ranges is that you might be tempted to write a character set that's 50 dash 99, thinking that it's going to match all the numbers from 50 to 99. But that's not how character ranges or character sets work. This is not going to find all numbers from 50 to 99. Remember, it's only going to match a single character to begin with, so it can't target two characters. The net effect of a regular expression like this is to be exactly the same as zero dash nine, and that's because the RegExr engine is going to read it as a character set that includes the number five, the range from zero to nine, and the number nine, which is essentially the same thing as saying zero to nine. You just repeated yourself unnecessarily. So be careful. It's not a number range, it's a character range. Let's try some examples. Let's leave our existing text here, but let's go up to the character set, and let's erase that and let's just put in a character set with all of the capital letters from A to Z. And you'll see it that now it flagged all of the capital letters for us N, K, O and G. Those are the ones that it matched. Five matches total. If we were instead to change it from A to M, you'll see that it only finds two. It's the character set from A to M. If we instead made it the lower case letters A to Z, you'll see it finds everything except those characters. It finds 37 matches now, all of the lower case characters. And if we were to put in A dash Z in front of it, now it's a character set of all upper case letters and all lower case letters together. It left out the punctuation and the spaces. Those still didn't match. Let's try an example using numbers. Let's select all, try to make a character set zero dash nine, and then down here let's put in a phone number. I'll just use 555-666-7890. You can see that it matched all of those numbers. Every one of the digits gets matched because it's all numbers from zero to nine. If we wanted to match the phone number with a real pattern, we could repeat this. I'm just going to copy it and let's paste it. I'll do it three times and you'll see it matched three numbers, and let's do dash and then we'll do three times and then a dash and then four more times. Now it matches the whole phone number. Notice here that the dash inside is a character range, but outside the square brackets, it's just a literal character. You could use this same technique to match zip codes or ID numbers or Social Security numbers in the exact same way. Character ranges are a useful tool when working with character sets.

---- 

### __BULLET POINT NOTES__

#### Character Ranges
  - Metacharacter: -
  - Meaning: range of characters
  - Includes all characters between two characters
  - Only a meta character inside a character set; a literal dash otherwise
  - [0-9]
  - /[A-Za-z]/
  - !!!CAUTION!!!
    - [50-99] is not all numbers from 50 to 99
    - It is the same as [0-9]
    - A character set including 5, 0-9 and 9
  
  #### regexr example:
  - text: [Notice:] keep off of the grass
  - text: [Notice!] keep off of the Grass
    - regex: /[A-Z]/g (5 matches)
    - regex: /[A-M]/g (2 matches)
    - regex: /[a-z]/g (37 matches)
    - regex: /[A-Za-z]/g (42 matches)
  - text: 555-666-7890 
    - regex: /[0-9]/g (10 matches)
    - regex: /[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]/g (1 full match ###-###-####)

----

### 3.3 Negative Character Sets

Transcript:
Now that we know about character sets, we're ready to learn about negative character sets. We create a negative character set using the negative meta character. Which is a carat symbol, or upper pointing arrow. Depending on your keyboard layout it maybe over the six key. It's going to negate a character set. What it means is that the character set is not any one of several characters. That's the opposite of a character set. A character set normally is saying that the partner matches any one of several characters, now we're saying it's not one of several characters. It's a list of characters that can't be there. To do that, you add that negative meta character as the first character inside the character set. It has the effect of making the entire character set into a negative set. So if we had square brackets with the negative character at the beginning as the first character, followed by A-E-I-O-U, it would match any one consonant or non-vowel. It would be saying that a single character cannot be A-E-I-O- or U. It can be anything else just not those. For example, if we had a regular expression that had S-E-E and then inside a negative character set had M and N, it would match "seek" and "sees" but it would not match "seem" or "seen". Those are characters that had been disallowed by the character set. One word of caution though, that same regular expression would not match the word "see" with nothing after it, because "see" with nothing after it doesn't have another character. The negative character set is still looking for a character. It says, "I want to find a character and that character can't be one of these two things". But it still does have to have a character. It also would match "see" period and "see" space, because those are still considered characters. So just be thoughtful when you use it. Lets try an example. Lets make string here, which is just going to be "now we know how to make negative character sets". And then lets come up here and inside a character set, lets start by just writing A-B-C-D-E. And you'll see that it picks several characters. Now that's a regular character set, lets add as the first character that carat. And put that right at the beginning, now it's a negative character set. And you can see that it switched. Now it's the opposite characters. If you take it away again, you can see it switches back, right? So it's looking for any one character which is not an A-B-C-D or E. Now we could keep going and type out F-G-H-I-J-K-L-M-N-O-P, and we could see that as I type them, characters are disappearing. The number of matches over here on the far right is going down. L-M-N-O-P-Q-R-S-T-U-V-W-X-Y and Z, so now there's nine matches and it's all of the spaces and the capital N. Because I just have the upper case letters in here. Now of course this also works with ranges, so we can just say characters A to Z and characters A dash Z. Notice here this negative applies to both sets. It applies to both the lower case letters and the upper case letters. It's negating the entire character set. So don't think that it's just negating the first one and that somehow you need to come and add a second one here. That's not the case, that's not a valid meta character. It's only when it comes in the very first character, that's its context. Lets try another example. Lets write text that says, "It seems I see the sea I seek". And then up here, lets try matching S-E-E and then inside the character set lets put a negative M or N. So you can see now it doesn't match "seem" anymore, I take away the negative. You'll see that it does, right? So we're saying don't match that one, but it does still match "see" space and it does match S-E-E-K. You'll find that sometimes it's easier to describe the character that you're looking for in your pattern. And other times it's going to be more convenient to describe characters that you want to exclude.

----

### __BULLET POINT NOTES__

#### Negative Metacharacter
  - Metacharacter: ^
  - Meaning: Negate a character set

#### Negative Character Sets
  - Not any one of several characters
  - Add ^ as the first character inside a character set
  - /[^aeiou]/ matches any one consonant (non-vowel)
  - /see[^mn]/ matches "seek" and "sees" but not "seem" or "seen"
    - !!!CAUTION!!!
      - /see[^mn]/ does not match "see"
      - /see[^mn]/ does "see." and "see "

#### regexr example:
  - text: Now we know how to make negative character sets
    - regex: /[abcde]/g (12 matches)
    - regex: /[^abcde]/g (35 matches)
    - regex: /[^a-zA-Z]/g (8 matches, only the spaces)
  - text: it seems I see the sea I seek.
    - regex: /see[^mn]/g (matches "see " and "seek")