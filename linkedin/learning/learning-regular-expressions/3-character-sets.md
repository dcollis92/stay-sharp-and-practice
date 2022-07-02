# Learning Regular Expressions

## __3. Character Sets__

----

## 3.1 Define a character set

Transcript:
In this chapter, we'll learn about character sets. We will begin by learning two more metacharacters, the open and closed square braces. These allow us to define a custom character set. A character set is going to match any one of several characters, the characters in our set, but it's only going to match one character. Be careful about that. The order that we put the characters into our set does not matter. If we add a character set, where inside the square braces we had A, E, I, O, and U, then that would match any one vowel. An example of where this might be useful is if we wanted to search a text and find the word gray, and we want to find it whether it's spelled G R E Y or G R A Y. We can put it in a character set, so that we have a regular expression looking for GR, and then inside those square braces, E or A, followed by Y. Now, be careful, it is only a single character. So if we had GR and then in square braces EA followed by a T, it would not match the word great because it's a single character, even though it looks the same visually, it doesn't have the same meaning. Let's try out a few in our Regex tool. Apples and bananas, and peaches are going to be the text that we're going to search, and for our regular expression, let's just start by putting square braces A E I O and U, and we'll close our square braces, now we've defined the character set, and now it tells us, it's going to match any one of these things. So you can see, it matched the E in apples. It didn't match the A because it is case sensitive. Let's go over here to our flags, and let's turn on global, and now you can see it matches all of those lowercase vowels. Now if we wanted it to match the uppercase ones as well, well then we'd need to add A E I O and U. Now it matches the A in apples also. As I said, it doesn't matter what order you write these in. If we swap these around and made it U O I E A, it matches the exact same thing. Let's try another example. Let's erase our fruits here, and let's write in GREY, space, GRAY. Now we don't want to just find the vowels, let's try and find anything that matches GR and then either E or A, followed by Y, and you can see now it matches both of those, and as we discussed, it only matches a single character, either the E or the A. If we made this into great, and then tried to see if it would match great, it does not. It would match grat and gret. Those would both match because it's a single character, not two characters. Now, we've only been doing character sets with letters, but that's not the only use case for them. For example, we could look for all numbers. Let's do number sign, 0123456789. Those are square braces. Let's say we were looking for text where we had contestant number one, and contestant number two. Now if we had contestant number 99, we'll notice it doesn't match two of them, it only matches the first one, but it is matching any one of those numbers. We can also do that with punctuation. Let's say we had some text, and we wanted to find either notice, keep off the grass, or notice exclamation point, keep off the grass. We could come up here and make our regular expression. We're looking for notice, and then it could either be a colon, an explanation point, a semicolon, a comma, et cetera. Any one of those literal characters can be put into a character set. A character set is just a way of defining a custom set of values that can be in any single character position.

----

### __----- BULLET POINT NOTES -----__

### Character Set Metacharacters
| Metacharacter    | Meaning                       |
| :--------------- |:----------------------------- |
| []               | Begin and end a character set |

### Define a Chracter Set
  - Any one of several characters
  - But only one character
  - Order of characters in the set does not matter
  - /[aeiou]/ matches any one vowel
  - /gr[ea]y/ matches "grey" and "gray"
  - /gr[ea]t/ does NOT match "great"

### regexr example:
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

## 3.2 Character Ranges

Transcript:
Now that we know about character sets, we can talk about character ranges, 'cause character ranges are going to help us to work with character sets. First, let's take a look at a couple of character sets. If we had a character set that was to match any number, we could define it inside square brackets as zero one two three four five six seven eight nine. If we wanted to match any lower case letter, then we could create a character set and put all the lower case letters A through Z inside. And if we wanted to match any upper case letter, we could do the same thing. But if we wanted to have a character set that would match any upper case letter, any lower case letter or any number, you can see we would be writing out a lot of information. We'd have a very long regular expression and it would only be targeting a single character. That's crazy. Character ranges take the pain out of this. We use the metacharacter, which is just a dash or hyphen to indicate a range of characters. This hyphen includes all characters between two characters, so it assumes that characters have some sort of order to them so that it can know what characters should go between two characters. With numbers, that's pretty easy. If you have the number zero, you have a dash and then a five, it indicates all the numbers from zero to five. With letters, we can do the same thing. You can even do it with symbols, but it's not as intuitive. Now a dash is only a metacharacter inside a character set. If it's outside those square brackets, it's a literal dash. So its context does matter. But whenever a dash is inside a character set, it becomes a metacharacter, and it indicates a range. So inside a character set, we could have zero dash nine for all of the numbers. We could have A dash Z, upper case for all the upper case characters, and A dash Z for all of the lower case characters. You can see that's a lot shorter to write. And you can combine them together. So I could have a character set that has A dash D, W dash Y, they would match the letters A, B, C, D, W, X or Y. Another word of caution that I want to give you about character ranges is that you might be tempted to write a character set that's 50 dash 99, thinking that it's going to match all the numbers from 50 to 99. But that's not how character ranges or character sets work. This is not going to find all numbers from 50 to 99. Remember, it's only going to match a single character to begin with, so it can't target two characters. The net effect of a regular expression like this is to be exactly the same as zero dash nine, and that's because the RegExr engine is going to read it as a character set that includes the number five, the range from zero to nine, and the number nine, which is essentially the same thing as saying zero to nine. You just repeated yourself unnecessarily. So be careful. It's not a number range, it's a character range. Let's try some examples. Let's leave our existing text here, but let's go up to the character set, and let's erase that and let's just put in a character set with all of the capital letters from A to Z. And you'll see it that now it flagged all of the capital letters for us N, K, O and G. Those are the ones that it matched. Five matches total. If we were instead to change it from A to M, you'll see that it only finds two. It's the character set from A to M. If we instead made it the lower case letters A to Z, you'll see it finds everything except those characters. It finds 37 matches now, all of the lower case characters. And if we were to put in A dash Z in front of it, now it's a character set of all upper case letters and all lower case letters together. It left out the punctuation and the spaces. Those still didn't match. Let's try an example using numbers. Let's select all, try to make a character set zero dash nine, and then down here let's put in a phone number. I'll just use 555-666-7890. You can see that it matched all of those numbers. Every one of the digits gets matched because it's all numbers from zero to nine. If we wanted to match the phone number with a real pattern, we could repeat this. I'm just going to copy it and let's paste it. I'll do it three times and you'll see it matched three numbers, and let's do dash and then we'll do three times and then a dash and then four more times. Now it matches the whole phone number. Notice here that the dash inside is a character range, but outside the square brackets, it's just a literal character. You could use this same technique to match zip codes or ID numbers or Social Security numbers in the exact same way. Character ranges are a useful tool when working with character sets.

---- 

### __----- BULLET POINT NOTES -----__

### Character Ranges
| Metacharacter    | Meaning             | 
| :--------------- |:------------------- |
| -                | range of characters |

  - Includes all characters between two characters
  - Only a meta character inside a character set; a literal dash otherwise
  - [0-9]
  - /[A-Za-z]/
  - !!!CAUTION!!!
    - [50-99] is not all numbers from 50 to 99
    - It is the same as [0-9]
    - A character set including 5, 0-9 and 9
  
  ### regexr example:
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

## 3.3 Negative Character Sets

Transcript:
Now that we know about character sets, we're ready to learn about negative character sets. We create a negative character set using the negative meta character. Which is a carat symbol, or upper pointing arrow. Depending on your keyboard layout it maybe over the six key. It's going to negate a character set. What it means is that the character set is not any one of several characters. That's the opposite of a character set. A character set normally is saying that the partner matches any one of several characters, now we're saying it's not one of several characters. It's a list of characters that can't be there. To do that, you add that negative meta character as the first character inside the character set. It has the effect of making the entire character set into a negative set. So if we had square brackets with the negative character at the beginning as the first character, followed by A-E-I-O-U, it would match any one consonant or non-vowel. It would be saying that a single character cannot be A-E-I-O- or U. It can be anything else just not those. For example, if we had a regular expression that had S-E-E and then inside a negative character set had M and N, it would match "seek" and "sees" but it would not match "seem" or "seen". Those are characters that had been disallowed by the character set. One word of caution though, that same regular expression would not match the word "see" with nothing after it, because "see" with nothing after it doesn't have another character. The negative character set is still looking for a character. It says, "I want to find a character and that character can't be one of these two things". But it still does have to have a character. It also would match "see" period and "see" space, because those are still considered characters. So just be thoughtful when you use it. Lets try an example. Lets make string here, which is just going to be "now we know how to make negative character sets". And then lets come up here and inside a character set, lets start by just writing A-B-C-D-E. And you'll see that it picks several characters. Now that's a regular character set, lets add as the first character that carat. And put that right at the beginning, now it's a negative character set. And you can see that it switched. Now it's the opposite characters. If you take it away again, you can see it switches back, right? So it's looking for any one character which is not an A-B-C-D or E. Now we could keep going and type out F-G-H-I-J-K-L-M-N-O-P, and we could see that as I type them, characters are disappearing. The number of matches over here on the far right is going down. L-M-N-O-P-Q-R-S-T-U-V-W-X-Y and Z, so now there's nine matches and it's all of the spaces and the capital N. Because I just have the upper case letters in here. Now of course this also works with ranges, so we can just say characters A to Z and characters A dash Z. Notice here this negative applies to both sets. It applies to both the lower case letters and the upper case letters. It's negating the entire character set. So don't think that it's just negating the first one and that somehow you need to come and add a second one here. That's not the case, that's not a valid meta character. It's only when it comes in the very first character, that's its context. Lets try another example. Lets write text that says, "It seems I see the sea I seek". And then up here, lets try matching S-E-E and then inside the character set lets put a negative M or N. So you can see now it doesn't match "seem" anymore, I take away the negative. You'll see that it does, right? So we're saying don't match that one, but it does still match "see" space and it does match S-E-E-K. You'll find that sometimes it's easier to describe the character that you're looking for in your pattern. And other times it's going to be more convenient to describe characters that you want to exclude.

----

### __----- BULLET POINT NOTES -----__

### Negative Metacharacter
| Metacharacter    | Meaning                | 
| :--------------- |:---------------------- |
| ^                | Negate a character set |

### Negative Character Sets
  - Not any one of several characters
  - Add ^ as the first character inside a character set
  - /[^aeiou]/ matches any one consonant (non-vowel)
  - /see[^mn]/ matches "seek" and "sees" but not "seem" or "seen"
    - !!!CAUTION!!!
      - /see[^mn]/ does not match "see"
      - /see[^mn]/ does "see." and "see "

### regexr example:
  - text: Now we know how to make negative character sets
    - regex: /[abcde]/g (12 matches)
    - regex: /[^abcde]/g (35 matches)
    - regex: /[^a-zA-Z]/g (8 matches, only the spaces)
  - text: it seems I see the sea I seek.
    - regex: /see[^mn]/g (matches "see " and "seek")

----

## 3.4 Metacharacters Inside Character Sets

Transcript:
Let's take a look at how we can use metacharacters inside character sets. Most metacharacters inside a character sets are already going to be escaped. That is they're going to have their literal meaning, they're not going to be considered metacharacters. So you do not need to escape them again. For example, if we had a regular expression that had H, and then a character set, followed by T and in that character set we had the letter A and a dot, that dot is a literal period, it's not a metacharacter representing a wild card. So it'd match the words hat and H dot T, but it would not match the word hot. And if you think about it, it makes sense. You wouldn't put a wild card character inside a character set. A wildcard matches everything. The point of a character set is to match a smaller set than everything. Now there are some exceptions to this rule. Notably the closing square bracket, the dash, the caret, and the backslash. The closing square bracket is important because that's what tells it where the end of the character set is. So as soon as we use that, the regex engine thinks that our character set is done. If we mean a literal backslash then we need to escape it. We also know that we can use the dash and the caret inside a character set because they have special meaning. The dash is for character ranges, and the caret is for negative character sets. If we want to use the literal dash or the literal caret, then you need to also escape those. And then finally if we want a literal backslash, then we also need to escape it. Because we know it does retain its metacharacter power, inside the character set. We just used it to escape those previous three characters we talked about. So if we want a literal backslash, we have to use two of them. Let me show you an example. Let's say we want to look for var and then some kind of delimiter, with a number inside of it, and that delimiter can be one of two things. It can either be square brackets or it could be parentheses. So in the first character set you can see I've got, an opening square bracket, and an opening parenthesis. Then I've got another character set that has the number zero to nine, and then another character set after that, which contains either a closing square bracket, or a closing parenthesis. You can see that I had to escape the closing bracket though. If I didn't then you can see, how the regular expression engine would see it, opening square bracket, followed immediately by a closing square bracket. And it would think that the character set was complete. In this character set I've escaped both the dash and the backslash. Putting the backslash in front of the dash, ensures that the regular expression engine doesn't think that I'm trying to create a range of characters from zero until whatever the next character is. Now normally we would expect it to be zero to a number, but it doesn't have to be, it can be something else. And you could end up with some surprising results. So we want to escape it and make it clear, this is a real dash, not part of a character range. And then of course I've got to escape the backslash itself. Now it may not always be strictly necessary and it may depend a lot on what kind of regular expression engine you're using. For example, you may be able to use a dash as the first character in the character set without escaping it. Because the regular expression engine might not be fooled into thinking this is part of a character range, because there's no starting character to begin with. I think in general, it's better to be safe than sorry, and I would go ahead and escape those dashes as well. So let's try an example here, let's change our text to be hat, hot, and H dot T. And let's come up here and change our regular expression to be H and then a character set T. And in that character set I'll put an A and I'll put a period. Notice what lit up each time, what the matches were. When I put the A it matched hat, when I put the period it matched H dot T. It's not a wildcard, it's not matching H-O-T. This is just a literal period. If I hover over it, you can see it actually tells me that as well. Now putting a backslash in front of it doesn't hurt it, it escapes it, but there's no reason to escape a literal character, so we don't need to do it in that case. Let's try our second example. Let's imagine that I want something that matches var, three, or var, square bracket, four. So I need something that doesn't really care about what the delimiters are that are around it, it'll match either one of these. So we could have something that looks for var, and then a character set which is going to be the delimiter, and then we'll do a character set from zero to nine, we don't care what number it is, and then another character set after it. So in this first character set, what are we going to put? Well we know it can have a parenthesis, and we know it can have a square bracket. In the second one, we could put a square bracket, and then we could have a parenthesis. Now wait a minute, you can see from the coloring that something is wrong there. It says even here, error unmatched closing parenthesis. And that's because this closing brace, closes off the character set. Instead I need to escape it. Now it doesn't have its metacharacter meaning, now it's a literal closing square brace, and it matches correctly, and it parses the regular expression correctly. We'll try another one, let's put in a couple of possibilities here, let's say we want to match something that could be file 01 or file dash one, or file backslash one, or file underscore one. How can we write a regular expression for all of those? Let's replace our regular expression with file, and then a character set, and in that character set, we could put zero, and it matches the first one, let's go ahead and put our one after it, we'll match the whole thing. And then we could have another one that is a dash, that matches the next one. And then let's put a backslash, uh oh, wait a minute, something just happened. And if you look here it actually tells us, there's an error, unmatched opening square bracket. That's because now, this has the affect of escaping this one, right? It's a literal character, so we need to put a backslash there, but now looks what's happening, we have another problem, it's no longer matching this one. Because now, this is a character set, it's going from zero to backslash. So I want to escape that as well, and then last of all, we'll put in that underscore. On your own, you can play around with adding and removing some of these escapes to see how they work. The important part is to ensure that you're giving clear instructions to the regular expression engine. So that it knows what you intend. In some cases, using these symbols inside a character set may be unambiguous, but in other cases, you may need to tell it exactly what you mean.

---- 

### __----- BULLET POINT NOTES -----__

### Metacharacters Inside Character Sets
  - Most metacharacter inside character sets are already escaped
  - Do not need to escape them again
  - /h[a.]t/ matches "hat" and "h.t", but not "hot"
  - Exceptions: ] - ^ \
  - example: /var[[(][0-9][\])]/ => var [ ( 0 - 9 ) ]
  - example: /file[0\-\\_]1/ => file 0 - \ _ 1
  - example: /2013[-/]10[-/]05/ => better to be safe than sorry and escape the dashes for this specific search

### regexr example:
  - text: hat hot h.t
    - regex: /h[a.]t/g
      - . here is a literal character
  - text: var(3) var[4]
    - regex: /var[([][0-9][\])]/g
      - have to escape closing bracket to be able to be a literal character
  - text: file01 file-1 file\1 file_1
    - regex: /file[0\-\\_]1/

----

## 3.5 Shorthand Character Sets

Transcript:
Most regular expression engines allow us to use shorthand character sets. They can be very useful and save you some typing. If we use the /d in a regular expression, it means any one digit. It's the equivalent of having a character set that has the character range, 0-9 in it. /w is a word character. That would be the equivalent of all letters A-Z, both lowercase and uppercase, all numbers 0-9, and the underscore. You can see that's quite a bit less typing. And then, /s is the shorthand for Whitespace. That's not only a space, like the space between words, but it's also a tab, or any kind of line return, or line feed. There's also the negative version of each of those, which you get by just capitalizing the letter. /D, /W, /S. In the case of /D, it would be anything that's not a digit. So it's any one character, which is not a digit. You won't use those quite as frequently as the first three, but they are there to help you out. Now, these aren't in all regular expression engines, but they are in most of them. The really old regular expression tools, especially the ones you find on UNIX, might not have support for these. So if you find that you're having problems, that could be why, but most regular expression engines by now do support them. I want to give you a word of caution about working with that /w shorthand. It's equivalent is all the lowercase letters, all the uppercase letters, all the numbers, and underscore. Underscore is considered a word character. That may not be intuitive to you. When you think of a character that's in a word, you don't typically think of an underscore being part of a word. Especially not if you're looking at the words that are the text in a book. You wouldn't expect it to be included, but you have to remember that regular expressions are primarily a tool for programmers. And if you have a variable name, or a file name, an underscore is a commonly used character in those contexts. At the same time, a hyphen is not considered a word character. And if you were looking at the text of a book you probably would expect a hyphen to be included. So word character may not mean exactly what you would think. An underscore is included, and a hyphen is not. Let's look at some examples. If we have four /d's in a row, inside a RegEx, it would match a string that had four numbers in it, but not something that had four letters. If we have three /w's in a row, it would match three capital letters, three numbers, or a combination of letters and numbers, and underscores. If we have /w/s/w/w, it would match "I am", with a space in between, but not "Am I". The space would be in the wrong place to match the pattern. One regular expression that can be useful, is to include a hyphen, as well as any word character. So you can make a character set, and inside that set, you can use the shorthand, and then also add the hyphen as well. So here you can see I've got /w, for any word character, and then I've escaped the hyphen with a / to insure that it's the literal hyphen, and not part of a character range. If you were to use one of these shorthand expressions inside a negative character set, it would have the same effect, as using those negative shorthands. In this case, /D. I want to give you another note of caution here though. A negative character set, with /d and /s, is not the same as a character set that has /D and /S. The first one is asking the RegEx engine to find any one character, that is not a digit, or a space character, neither one. But the second version is saying a character which is either not a digit, or not a space character. So that's going to match a lot of things. Anything that is not either a digit or a space character, will get matched. That'll be clearer when we try some examples. So let's start by creating some text here, we'll make 1984 and t-e-x-t, and for our regular expression, we'll just type four /w's in a row, and you can see that it matches both of them. If I change it instead to be just digits, it just matches the first one. Let's try one here, we'll put in blue-green paint, and let's change this to just be a w. Now I've got global matching so it matches everything that is a word character. And you can see there are 14 of them, but did not match the dash, and it did not match the space. Those are not considered word characters. So that may be surprising to you. What you may have actually wanted it to do, was to include the hyphen. If we do that, we'll do /- inside a character set, and now it matches the word characters that we would expect. All right, let's try another example. Let's put in 1234 space 5678 a-b-c. And inside our character set, let's change it to be /d, gets all the digits. Let's do /s and it finds all the spaces. Or you could take out the d if you want to see just the spaces. Now, let's just put a negative in front of it. Now it's going to find any character which is not a digit, or a space. So in this case it's going to be the letters a, b, and c. Now though, let's try that other version, where we do /D /S. Now I'm telling it, find anything which is either not a digit, or not a space. So it goes to the number 1 and it says, 'Is this either not a digit, or not a space?' Well it is a digit, but it is not a space, so it still qualifies. It is a character which is not a space. The logic can get a little tricky when you start grouping together these negative shorthand expressions. As I said, they don't get used as often. Most often you're going to find yourself using the lowercase version instead.

----

### __----- BULLET POINT NOTES -----__

### Shorthand Character sets
| Shorthand   | Meaning            | Equivalent    |
| :---------- |:------------------ | :------------ |
| \d          | Digit              | [0-9]         |
| \w          | Word character     | [a-zA-z0-9_]  |
| \s          | Whitespace         | [\t\r\n]      |
| \D          | Not digit          | [^0-9]        |
| \W          | Not word character | [^a-zA-z0-9_] |
| \S          | Not whitespace     | [^\t\r\n]     |

  - (Not in ALL Regex Engines, such as UNIX)
  - !!!CAUTION!!!
    - \w
      - [a-zA-z0-9_]
      - Underscore is a word character
      - Hyphen is NOT a word character
  - example:
    - /\d\d\d\d/ matches "1984", but not "text"
    - /\w\w\w/ matches "ABC", "123" and "1_A"
    - /\w\s\w\w/ matches "I am, but not "Am I"
    - /[\w\-]/ matches any word character or hyphen (useful)
    - /[^\d]/ is the same as both /\D/ and /[^0-9]/
  - !!!CAUTION!!!
    - /[^\d\s]/ is not the same as /[\D\S]/
      - /[^\d\s]/ = NOT digit OR space character, neither one
      - /[\D\S]/ = EITHER NOT digit OR NOT space character

### regexr example:
  - text: blue-green paint
    - /\w/ (14 matches, no "-" or " ")
    - /\w\-/ (15 matches, no " ")
  - text: 1234 5678 abc
    - regex: /[\d\s]/ (10 matches, no "abc")
    - regex: /[^\d\s]/ (3 matches, only "abc")
    - regex: /[\D\S]/ (13 matches, all)

----