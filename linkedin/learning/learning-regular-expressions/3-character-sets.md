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

#### regerx example:
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
  
  #### regex example:
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