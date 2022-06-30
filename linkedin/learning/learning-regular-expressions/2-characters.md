# Learning Regular Expressions

## 2. Characters

### 2.1 Literal characters

Transcript:
We will begin learning the syntax of regular expressions by starting with the simplest match of all, a literal character. The letter A in a regular expression matches the letter A in a string. So if we have the regular expression that contains the characters C-A-R, then it will match a string containing the characters C-A-R. It's that simple. C-A-R would also match the first three letters of a string carnival. The regular expression doesn't match the entire string, it's just going to match those first three letters. It's searching through the string looking for a match. It's very similar to searching inside a word processor. Matching literal characters from a regular expression to a string is the simplest kind of match that there is. The only thing to keep in mind is that searches are going to be case sensitive by default. So if we had a capital C-A-R in a string, our lower case C-A-R in a regular expression would not match it. My advice is to write all of your regexes as case sensitive. When we learn about character classes, we'll learn techniques to write regexes that match both upper and lower case letters, which is basically the same as being case insensitive. Let's try it out. So to begin with, let's just go into our regular expression and let's type C-A-R. Now in the text, let's write C-A-R. And it matches, and we know that it matches because it turned it blue, and it says over here, one match. It also tells us down here in the explanation that it's the literal C character and it matches a C character in the string, and it is case sensitive, and it makes that note for every single one of these. Each one of these is a different symbol that we're using in our regular expression, and it's matching against the characters that are in the string. Now let's try typing carnival by adding the rest of the word there and see it still only matches on those first three characters, it doesn't match the whole thing. If we go back to the beginning of the word and we change it to a capital C, you'll see that it no longer matches because it's a case sensitive match. If we wanted to match it, we can change this to be a C up here and now it matches again. Or, if we had a lower case C, we have another option. We said it's case sensitive by default, but we can come up here to the flags and we can choose the case insensitive flag. When I click that, you'll see that it adds a little I right after the regular expression. That's a flag telling it that it should use a special behavior for this regular expression. Normally it's case sensitive, but now it's case insensitive, and you can see that reflected down here in the tools at the bottom. It's telling you, it's case insensitive now. And so now we have a match again. And now we're adding this flag, the regular expression itself is case sensitive, but we've added a flag to change its behavior. As I've said before, I recommend that you don't do that. For most of the time, you want to have case sensitive regular expressions, and that'll be more compatible and harder for you to make mistakes. But I have to admit, sometimes when I'm in a hurry, and I just want to change something to be case sensitive, I'll just put that I flag after it as well. It's a nice shortcut, but don't rely on it most of the time. I also want to show you that if you change the text here to be C space A space R, it also doesn't match, because spaces are characters, so obviously it's not going to match unless you added those spaces up here into your regular expression, which you can certainly do. So what we've been looking at is what we can call standard matching, or non-global matching. In that case the earliest or leftmost match is always going to be preferred. As the regexe engine is doing its work, it's going to read the string from left to right. And when it comes to the first match in the string, it will stop. For example, if we have the word pizzazz which has two sets of Zs in it and our regular expression contains two Zs, it's going to match the first set, not the second one, and not both of them, it's always the first one, the leftmost. In global matching, the regexe engine is going to behave a little differently. It's going to find all the matches throughout the text, so ZZ in global mode would match both sets of Zs in the word pizzazz. Let's try that out. So let's start by adding our text here, let's make it pizzazz and let's go up here to our regular expression and let's just type two Zs. As you can see it matches the first set of Zs, but not the second set. Now that's in standard mode, if I want to switch it into global, again I can come up to my flags, and this time I'll choose the global flag, you'll see it adds a G after it, and that tells it that it's a global search. Now it finds both of the Zs, it doesn't stop when it finds the first one, it keeps going until it gets to the end of the string. So if you find that you're getting different results than I am, you might check and see whether you have global turned on or off. I'm going to leave it off for now. Now this example also shows us that the regular expression engine is moving from the string from left to right as it looks for a match. Let's look at that a little closer. This is a simple demonstration, but it will be helpful when we start looking at more complex examples. Here I have a regular expression that is just the literal character C-A-T, and then I have a sentence. The cow, camel, and cat communicated. So what happens is the regular expression engine starts at the beginning of the string. And it looks to see, does this character match my pattern? Well it obviously doesn't, it's a capital T. So then it goes to the next character, and that doesn't match, and so it goes to the next one and then the next one, until it finally comes to the C, and it says okay, now I have something that matches my first symbol. This could be the beginning of a successful match, so it goes to the second character and it's not. A and O are different, so it doesn't match. So now it knows that the C was not part of a legitimate match. So what does it do next? Well it starts looking with this character. It goes back and says okay, could this match the first character? C and O don't match, and so it moves to the next character, to the next character and so on, until it finally gets to the C in camel. Now the first two characters match, but when it goes to the third character, it doesn't match. Now this next step is very important, so pay close attention. Now it knows that C was not the beginning of a successful match. So what does it do next? It doesn't just start from M, it has another possibility it needs to consider. It needs to go back to the A and see if A could be the beginning of a successful match. Now in this case it's obviously not, but when we start writing more complex regular expressions, it doesn't know that. So it's going to back up and try the next character, it's going to see that it's not a match, it's going to move to the string again, until it finally gets all the way to the C and it matches C-A-T. Now it has a successful match and it's going to be done unless we're in global mode. If we're in global mode then it'll keep going until it finds that second cat as well. The two main things I want you to see are the backtracking that it does and also to understand the important principle that regular expressions are eager. They're eager to return a match for you, and they're always going to prefer the first match that they can make. They're never going to keep searching to find what you might consider to be a perfect match, to move from left to right and return the first match they can find.

----

### BULLET POINT NOTES

#### Literal Characters
  - /car/ matches "car"
  - /car/ also matches the first three letters of "carnival"
  - Similar to searching in a word processor
  - Simplest match there is
  - Case-sensitive (by default)
  - add /i to make case-intensitive ("Carnival")
  - recommend to not make case-intensitive to make your searches more exact/less-prown to error

----

#### Standard (non-global matching)
  - The earliest (leftmost) match is always preferred
  - /zz/ matches the first set of Zs in "pizzazz"

#### Global matching
  - All matches are found throughout the text.
  - /zz/g 
  
#### example:
  - regex: /cat/
  - text: "The cow, camcel, and cat communicated.
  - engine reads left => right until it finds a match
  - if /g, cat and communi cat ed are both found, otherwise only the first match.

---- 

### 2.2 Metacharacters

Transcript:
In this movie, we're going to learn about metacharacters. If it's not a literal character, then it's a metacharacter, that is, a character with special meaning. Metacharacters can be used to transform literal characters into powerful expressions. There are only a few metacharacters for us to learn. Sometimes these characters can have more than one meaning, and we're going to need to understand their context in order to know how they operate inside a particular regular expression. Most of this tutorial is going to be spent learning how to use these different metacharacters inside regular expressions. Before we dive into learning each of the metacharacters in turn, let's start by just going into our RegExer tool, and if I just start typing some of these symbols, I'll do a space, a period, then a asterisk, and then a space, and a period, and a plus sign, and then let's do another space, I'll do brackets, ABC, and then brackets, then let's do a space, and a dollar sign, space, and a question mark, a space, let's do some parentheses, ABC, and then let's do a space, followed by backslash D, and then curly braces, two, comma, three, and curly braces again. Now we're going to learn what all of these mean later. Don't worry about what they mean for now. What I want to show you is that this tool colors these different symbols in different ways, and that's very helpful when we're trying to craft a regular expression, because it helps us to look at a complex RegEx, and understand what it's doing. Often, when we work with a RegEx insider programming language, you won't get this coloring, so it's very helpful to have tools like this that can help you to build your regular expression, and then, once you have it working the way you want, you can take it and plug it into your programming language. All right, so now that we know what metacharacters are, and we've seen how the highlighting works, let's dive into learning our first metacharacter, and it's probably the most important one: the wildcard metacharacter. 

----

### BULLET POINT NOTES  
  
#### Metacharacters
  - Characters with special meaning
  - Transform literal characters into powerful expressions
  - Only a few to learn
  - \ . * + - {} [] ^ $ | ? () : ! =
  - Can have more than one meaning

#### regexr highlight example:
  - /zz .* .+ [abc] $ ? (abc) \d{2,3}/
  - regexr colors each piece to help identify each component

----

### 2.3 The Wildcart Metacharacter

Transcript:
Let's learn our first metacharacter, the wildcard. At some point you've probably played a card game where one or more of the cards was a wildcard. If twos are wildcards, a player holding a two in their hand can use it to represent any card they want. In other words, the two card matches anything. The wildcard metacharacter is similar. The character we use is a period or a dot by itself. It matches any character except for a new line. For example, if we had a RegEx that had H period T, which is H wildcard T, it will match hat, hot, and hit, but it would not match heat. The wildcard is only one single character. Just like if we were playing cards, a single two card can't suddenly become three aces. It's at most a stand in for a single ace. Now, the wildcard is the broadest match possible. It's also probably the most common metacharacter that's going to be used and it's also the most common mistake that people make. Let me give you an example. You might write a regular expression, nine dot zero zero thinking that it will match a nine with a decimal and two zeros. Maybe you're looking for some kind of money that's in a document. Well, it does match nine period zero zero, but it also matches nine five zero zero and nine dash zero zero. Do you see why? It matches all of them because it's a wildcard. It can represent all three of those characters. It's not a literal period and that's a very common mistake. You want to be careful of that. We're going to learn how to fix that mistake in the next movie, but it illustrates an important truth about regular expressions and that is a good regular expression should match the text that you want to target and only that text, nothing more. You don't want to be overly permissive about what you let through and what you find. You want to find the thing that you're looking for, but only that thing. You don't want to get back any false positives. Let's try some of these out. Let's begin by just taking the regular expression that's here out. Let's put in that H dot T example. You'll notice that it colors this differently to let me know that it is a special metacharacter. When I roll over it, RegExer tells me dot matches any character except line breaks. So, now down here let's try H-A-T. It matches. Let's try H-O-T, it matches. How 'about H-I-T? It matches. Let's try H-E-A-T. It doesn't match. The dot is a single character. It's very important. Each symbol, unless it's been told otherwise with other metacharacters, represents only one character in the string. Let's try doing H space T and you'll see that it does match. It doesn't matter that it's a space. The wildcard character can match anything except for a line break. Let's try something crazy. Let's put in a pound sign T. It matches that as well. If we go here and we put in a line break, you'll see that it no longer matches. This is considered a character. You can see I could highlight, but it's a character that doesn't match our period. Let's try another example. Let's put in dot A dot A dot A as our regular expression. So now we've got three wildcards followed by three literal characters, which is an A. For our text, it should match, banana. That is a letter followed by A, a letter followed by A, and a letter followed by A. It'll also match, papaya. So now, we have a regular expression that matches both banana and papaya. Let's actually put a space and we'll do it next to it. Let's switch into Global mode and that way you can see that it matches both of those. This is very important because we've written our first regular expression that can match more than one pattern in the text. We looked for common traits between them. Both of these words have some character followed by an A three different times. A lot of what we're doing in regular expressions is going to be trying to write expressions that can match those different patterns that we're looking for, that can identify the common traits for everything we want to find. Try an exercise on your own. Enter the strings, silver and then a space, sliver and then a space, and slider, and then come up to your regular expressions and write a regular expression using wildcards that will match all three of these words. 

----

### BULLET POINT NOTES

#### Wildcard Metacharacter
  - Metacharacter: .
  - Meaning: Any character except newline
  - example:
      - /h.t/ matches "hat", "hot" and "hit", but not "heat"
  - only one single character
  - Broadest match possible
  - Most common metacharacter
  - Most common mistake
  - example:
    - /9.00/ matches "9.00", "9500", and "9-00"
    
### Tip: a good regular expression should match the text you want to target and only that text, nothing more.

#### regexr example: 
  - /.a.a.a/ matches "papaya" and "banana" 
  - /s...er/ matches "sliver", "silver", and "slider"

----

### 2.4 Escaping Metacharacters

Transcript:
We need to learn how to escape metacharacters. To escape a metacharacter, we're going to use another metacharacter, the backslash. A backslash metacharacter tells the regex engine that the next character, the one that comes right after it, should be escaped. What does it mean to escape a metacharacter? It tells the regex engine, to treat the metacharacter that follows, as a literal character instead. For example, if you wanted to match a literal period, you would use a backslash plus a period. No longer means it's a wildcard, now it's the literal period. This fixes the most common of mistakes, which we saw on the last movie. With a backslash in front of the period, nine backslash period zero zero, matches nine dot zero zero, but not nine five zero zero or nine dash zero zero, and if you want a literal backslash character, well then you escape it with a backslash too. The first one is a metacharacter, and it tells it that the second character that follows it is going to be a literal backslash, not a metacharacter. Now escaping is really done only for metacharacters. Literal characters should never be escaped, because adding them, may give them meaning. You should also note, that quotation marks are not metacharacters in most cases and they don't need to be escaped. That may be different than what you do inside a programming language, where you might need to escape a quotation mark because it's inside a string. Inside a regular expression, a quotation mark is usually just a regular character. So let's try some of these. Let's come to our text and let's try the example that we saw before, nine dot zero zero, nine five zero zero, and nine dash zero zero. Let's come up here to our regular expression and with the global flag on, let's type nine period zero zero, and you'll see that it matches all of them. That's what we would expect, but now let's put that backslash in front of the period. You'll see now it only matches the first one, because it tells it, hey this is not a special character anymore, now it's a literal period, and you can see that it changes it from being a red dot, to being a sort of a pinkish dot. It's not making it a regular basic character, but it is taking away it's meaning. It says here this is an escaped character, matches a period character. So it's an escaped character, not a regular character. Alright let's try another example. Let's say that we have two files, one is called his_export.txt, and the other one is called her_export.txt. We want to write a regular expression that will match both of these file names. So I might start by just writing the literal text, his _export .txt, now I have a regular expression that matches the first one, now what do I need to change in my regular expression to make it match the second one? Well let's come over here and change his to be dot dot, now it matches both because I have wildcards, the only two characters that are different. Now notice that this is also a wildcard, it's colored the same, and sure enough if we scroll down here, you'll see that it tells us, it's a dot, matches any character except line breaks. Now this is fine, this will work in this case, but really to write a good regular expression, we want to escape that, we don't want to make that silly mistake we just saw with nine dot zero zero, we mean a literal period, then we should escape it so that we get a literal period, not a wildcard. Don't be lazy, or you may make a mistake. Let me give you an example, let's say that instead of these that I have resume1.txt and resume2.txt and also resume3 _txt .zip, so now if we come up here and we try writing a regular expression, we have resume1.txt, let's change this one into a wildcard, look at that, now I've matched not only the first two, but also part of the third one because it matches this underscore because it's a wildcard. Instead what I want to do, is put the backslash there, not matches exactly the two I mean, I want to have a wildcard followed by a literal period. There's one last thing that I want to point out to you, notice that I got these regular expression, open and close here, those indicate the beginning and end of a regular expression, now in the case here, if I type a forward slash, it knows that this is a forward slash, but it also gives me a helpful hint down here saying it's an un-escaped forward slash, this may cause issues if copying and pasting this expression into code. If my code is using that forward slash as a delimiter, to know where the regular expression starts, well then it's going to think that that's the end of the regular expression. So this is a case where we do want to escape it. Now It knows that I mean a literal forward slash, it's a little bit of a quirky one because in this code editor that I'm working in here, it doesn't need to be escaped, but if I take it somewhere else, and those delimiters that start and end the expression come into play, then suddenly it makes a very big difference. Escaping metacharacters, especially the wildcard metacharacter, is an important thing to remember, it seems simple, but it will trip you up if you're not careful. 

----

### BULLET POINT NOTES

#### Escaping Metacharacters
  - Metacharacter: \
  - Meaning: Escape the next character
  - allows use of metacharacters as literal characters
  - Match a period wih /\./ 
  - /9\.00/ matches "9.00", but not "9500" or "9-00"
  - Match a backslash by escaping a backslash (\\)
  - Only for metacharacters
  - Literal characters should never be escaped; may give them meaning
  - Quotation marks are not metacharacters; do not need to be escaped

#### regexr example:
  - text: his_export.txt her_export.txt
    - regex: /h.._export\.txt/g
  - text: resume1.txt resume2.txt resume3_txt.zip
    - regex: /resume.\.txt/g matches the first two
  
---- 

### 2.5 Other special characters

Transcript:
There are a few special characters that we need to consider. First, there are spaces. Remember that a space is a character and if you want to match a space than you need to put a literal space into your regular expression. For tabs it's not so simple. A tab is indicated using \t. Notice how the backslash is escaping the t. The t doesn't have its normal meaning, it now has a special meaning. This is often referred to as a control character and it's commonly used inside strings in different programming languages. Line returns are similar, but there are three possibilities, \r, \n, and then the combination of \r\n. \r is a line return. \n is a new line. You can see how they're very similar. The thing is some operating systems us one or the other or both together. So it may depend on whether the file that you're working with was created on Windows, Mac, or Linux. Let's start with the simplest example. We just have c space a space t and then we'll make a regular expression that is just c space a space t. And we could also put dots in there, they work the same way. A space is a character. Now let's try another example. Let's make a and then \t b. Now you can see that \t gets special coloring. When I roll over it it says that it is an escaped character and it matches a tab character. So now let's try coming down here and make text that has a and I'll hit the tab key b, and you see it matches. And it represents the tab key as being this arrow here. That's just the choice that they've made in this editor. It could be denoted a lot of different ways. Sometimes it'll just be like a little tiny arrow. Now let's try another example with a text. Let's say that we have abc and let's hit return and then let's type def. Now how can we write a regular expression that would match that? Let's say c and d with something in between. So it would be \r, doesn't match, \n does match. You can see that it's called a line feed character or new line character. \r is a carriage return. So in this case this is actually working with JavaScript, that's what I'm using right here. And then it's a JavaScript engine for this, so this text string is not actually in a file. So \n, it's going to allow me to match text that's spread across multiple lines. 

----

### BULLET POINT NOTES

#### Other Special Characters
  - Spaces
  - Tabs (\t)
  - Line returns (\r, \n, \r\n)
    - \r (line return)
    - \n (new line)
    - either or both together are used depending on the operating system (Windows, Mac, Linux)

#### regexr example:
  - text: a   b (tab space in between)
    - regex: /a\tb/
  - text: abc
          def
    - regex: /c\nd/
  - \n works in the JS engine
  
----
  
### 2.7 Challenge: Characters

Transcript: 
It's time for our first challenge assignment. I'm going to give you a set of challenges for you to try on your own, and then in the next movie, I'll show you the solution that I came up with. For the challenge assignment, we're going to be using one of the files in the exercise files: Emerson's Self-Reliance essay. You can open that up in a text editor, and you can actually search inside your text editor if you have the ability to do that. A lot of times there'll be a menu or a shortcut that will allow you to find, and if we do the find here, you see that it allows me to do finds, and it allows me to perform regular expressions by clicking this button right here. So you can use it in a text editor, or you can take all of this text, and copy it, and then paste it into the text of our regular expression tool. Now, it's a long text, so it is going to make it a little bit slow to search inside this tool, but it will work. So I want you to write a couple of global regular expressions for that text, Self-Reliance. The first one is, figure out how many times does the word, self, appear in the text, how many matches do you get? Remember, self can be both upper case, and lower case. Be sure to count them both. After you've done that, count the occurrences of himself, herself, itself, myself, yourself, and thyself. Once you have the hang of searching for some literal characters, try some wildcards. Using three literal characters, and three wildcard characters write a regular expression that matches please, palace, and parade. Those are all three words that are in the text, but it's also fine just to put them in the regular expression engine on their own. The goal is to write one RegEx that matches all three. Once you've done that, go back to the main text of Self-Reliance, and see what matches the expression, T, wildcard, wildcard, CH, besides the word, teach. Spend some time trying it out, get comfortable with the regular expression engine, and in the next movie I'll show you the solutions that I came up with.

----

### BULLET POINT NOTES

#### 2.6 Challenge: Characters
  - open emerson_self-reliance.txt and copy into regexr editor
  - Apply global regular expressions to the text "Self-Reliance"
  - How many times does the word "self" appear? (case-insensitive) (A: 64)
  - Count: himself, herself, itself, myself, yourself, thyself
  - Using three literal characters and three wildcard characters, match: please, palace, parade
  - What matches /t..ch/ besides "teach"?

A:
  - /self/gi      64
  - /himself/gi   20
  - /herself/gi   0
  - /itself/gi    12
  - /myself/gi    6
  - /yourself/gi  7
  - /thyself/gi   1
  - /p..a.e/gi 
  - touch, tarch, ttach...

----

#### 2.7 Challenge: Solutions

Transcript:
Hopefully you did well with the first challenge assignment. In this movie, I'll show you the solutions that I came up with. The first challenge was to figure out how many times the word "self" appears inside this text. It's very easy to do in the Regular Expression engine here, because if I type "self" as the literal characters, it comes up and tells me it matches 61 times. Those literal characters occur in this text 61 times. It's kind of fitting for a text called "Self Reliance" that the word "self" would show up a lot. Don't forget, though, that we also have capital letters as well, and a lower case S does not match a capital S. So I'm going to type a capital S and see that there are three more matches, probably when it occurs at the beginning of a sentence. So all together, I have three plus 61, so the answer is 64. The next task was to figure out how many times "himself," "herself," "itself," "myself," "yourself," and "thyself" all occur. So let's try each one. We have "himself," and there's 20 matches. We try "herself," there's no matches. "Itself," we get 12 matches. "Myself," six matches, "yourself," seven matches, and "thyself" has one match. You can try them all with capital letters, but it's never going to be capitalized because these words are never going to occur at the beginning of a sentence. They're never going to be subjects. They're always going to be objects. Now let's try writing something that'll match "please," "palace," and "parade." It's fine to use the full text, but I'm going to actually just erase it so it's clearer. We're looking for "please," "palace," and "parade," and a good way to start out trying to match multiple things is to just write the first one as literal characters. So of course that matches "please." What do we have to do to make it match "palace?" Well, the first character can't be an L, it has to be a wild card. The second character can't be a E, it has to be a wild card. The A is okay, they both share that in common. And the last one is S. That has to change to a C, so that also needs to be a wild card. And it happens that "parade" matches that same pattern. So with three literal characters and three wild card characters, I'm able to match all three. And then the last thing I wanted you to look was when you have the full text, and I can go over here and hit "undo," and get the full text back, or you can paste it in again. If we search for the pattern "t..ch," what matches it besides the word "teach?" And there's 13 matches. You can scroll down and look at them, but I think it's actually a little faster to see it in the text editor. So I'm going to switch back over here and do my find for "t..ch," and then if I click "find" here, it'll take me right to the first one. So "teach," that's great, that's what we expected. Click on it again, and it matched "attached." that's probably something you didn't expect. It found it in the middle of the word. We look again, we have "teaches," that's not too much of a surprise. How about this one, though? T O space capital C H. That's not something we were expecting to match. And I notice here that it matched a capital C. It shouldn't have done that. I need to just switch over here and make it match case as well. So now it will just match the ones that have the same case. So there's "teachers," but look at this one. T comma space C H. The reason I wanted you to do this exercise is I want you to see that it's really easy to pick up things when you're searching that you don't intend to. You match more than you want. And that really is the fundamental trick of regular expressions, is being able to write an expression that matches exactly what you want and not to accidentally pick up false positives. In the upcoming chapters, we'll learn additional techniques that will allow you to zero in on exactly the results you're looking for and nothing more.

----

### BULLET POINT NOTES

A:
  - /self/g      64
  - /himself/g   20
  - /herself/g   0
  - /itself/g    12
  - /myself/g    6
  - /yourself/g  7
  - /thyself/g   1
  - /p..a.e/g 
  - touch, tarch, a(ttach)ed, in(to Ch)atham's, clien(t, ch)ild...
    - example shown to illustrate how to you can pick up false positives and need to be more specific in regex

----