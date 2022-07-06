# Learning Regular Expressions

## __Ch4. Repetition__

----

## 4.1 Repetition Metacharacters

Transcript:
In this chapter we will learn to use repetition in our regular expressions to help us to write more complex patterns. There are three repetition metacharacters we need to learn; the asterisk, the plus sign and the question mark. All three of them are going to go after something else in a regular expression and that something else is going to be repeated a certain number of times based on which one of these metacharacters we use. If we use the asterisk then the preceding item will be repeated either zero times or more. So it may not exist at all, it's completely optional. Or, it may be there one time, two times, three times, an indeterminate number of times. If we use the plus sign then that preceding item must exist at least once but it could be repeated as many times as necessary. And then the third one, the question mark, says the preceding item would exist either zero or one time. You can also think of it as being optional. It may be there, or it may not be there, but it can't be repeated any more than one time. The most common of these by far is the plus sign and it's frequently paired with the wild card metacharacter. A period and a plus sign matches any string of characters except on line return. That's a great way to just say there's something here, some characters, and I don't really care what they are. For example, if we had Good and then a space and then a wild card followed by the plus repetition metacharacter and then a literal period after it, it would match "Good morning", "Good day", "Good evening" and "Good night". We're essentially just having a place holder there saying there's a wild card for some amount of characters that must start with the word good and a space and end with a period. You can also pair it with a shorthand metacharacter so we we have backslash D and a plus who would match any number of digits. Or, you can use it with a character set. Here I have a character set A to Z with the plus sign after it, before it is the shorthand for a space, afterwards it ends in "ed" and another space. So, that's going to match lowercase words that end in "ed". Doesn't matter what characters are there before, doesn't matter how long the word is, they just have to have a space before it and a space after it and an "ed" at the end of the word. Let's look at some of the differences between the different repetition metacharacters. If we have apples with an asterisk it would match apple, apples and apples with a whole bunch of s's. If we had apples with a plus sign it would match apples and apples with all the s's but not the singular word apple. The S is required in this case whereas with the asterisk it was optional. And then there's that question mark which just makes the S optional. So it'd match apple and apples but not any number of s's beyond that, there can only be one S. Sometimes choosing between the asterisk and the plus sign is just a matter of style. For example, you could have four backslash d's for any digit with an asterisk at the end and it would match numbers with three digits or more. If you did the same thing using three d's and a plus sign it would match digits with three digits or more also. That's because in the first example that fourth D is optional. Personally I find the second one to be a little clearer about what our intentions are. Another handy use of the question mark is when you have words that might be spelled different ways. If you wanted to search a document for the word color spelled C-O-L-O-R and also spelled C-O-L-O-U-R then you could just put a question mark after that letter. That letter may or may not be present when we're searching for it. Let's try some examples. So let's start with that apples example. For our text let's just write apple, apples, and apples with a whole bunch of s's. Let's come up here in our regular expression, using the global flag it's going to be A-P-P-L and you see it matches apple, and all of those words. Let's go ahead and put a space after it too just so that we know that there's a space that ends the word. So you can see now it only matches the first one, right? No longer matches this one because we don't have the S there. So, let's add the S. Now it matches the second one but not the first one any more. If we put a question mark after it, now the S is optional. It matches apple and apples but doesn't allow us to repeat it more times. If we put the asterisk after it, now it matches the first two. It's not matching the last one because I don't have a space here, let's just add a space and you'll see now it matches that one as well. So apple space, apples space and applesssss space. All of those work. Now let's just change to the plus sign and now you'll see that it works for apples and apples with all the s's but it doesn't work for apple by itself. Play around with that til you get a feel for each one of those. Now if we had numbers like 90210 and of course up here we could change these to be just a digit repeated. I'll take away the space and now you can see that it matches any number of digits and if I just keep typing digits, let's type 34567 it still just keeps going, it's indeterminate in its length. Now of course we could do this another way, instead of repeating it we could just say backslash D, backslash D, backslash D, backslash D, but this saves us from having to do that. We don't have to type them all out, we can just use that repetition operator instead. Let's try our example with "Good morning". Let's do a new line, "Good day", "Good Evening" and "Good night". And you have to make sure you have a line return after each one of those. Now let's just try doing the dot, the wild card and then the plus. So, remember that matches anything but a new line. Now let's take away the global flag just so we can see what's going on here. It's only matching this amount of text. So anything but a new line gets matched. It essentially grabs the entire line for us. Let's turn back on global again so it matches all of them, so we're getting four matches. Now let's just try making this a little more specific. Let's say we're looking for something that starts with the word good, has a space and then at the end, ends with a literal period. So now you can see it's matching each one of these; morning, day, evening, night. Doesn't matter what the characters are, doesn't matter how long it is, it's going to make a match. So, these repetition operators are useful because it keeps us from repeating ourselves. We don't have to just type dot, dot, dot three times we can just use the plus sign instead. But also notice when I do dot, dot, dot I've now made it a fixed length that's only three characters. If I wanted to match night I have to add two more characters. So it also allows us to have matches of indeterminate repetition. So it can match one time, two times, three times, four times, five times, it really doesn't matter. It makes the repetition metacharacters a very useful tool for writing regular expressions.

----

### __----- BULLET POINT NOTES -----__

| Metacharacter    | Meaning                            |
| :--------------- |:---------------------------------- |
| `*`              | Preceding item, zero or more times |
| `+`              | Preceding item, one or more times  |
| `?`              | Preceding item, zero or one time   |

### Repetition Metacharacters
  - `/.+/` matches any string of characters except a line return
  - `/Good .+\./` matches "Good morning.", "Good day.", "Good evening.", and "Good night."
  - `/\d+/` matches "90210"
  - `/\s[a-z]+ed\s/` matches lowercase words ending in "ed"
  - `/apples*/` matches "apple", "apples", and "applesssss"
  - `/apple+/` matches "apples" and "applesssss", but not "apple"
  - `/apple?/` matches "apple" and "apples", but not "applessssss"
  - `/\d\d\d\d*/` matches numbers with three digits or more
  - `/\d\d\d\d+/` matches numbers with three digits or more
  - `/colou?r/` matches "color" and "colour"

### regexr example:
  - text: Good morning.
          Good day.
          Good evening.
          Good night. 
    - regex:` /Good .+\./g` (4 matches, all)

----

## 4.2 Qualified Repetition

Transcript:
Now that we've learned about repetition metacharacters, we should also talk about quantified repetition. The previous metacharacters can be repeated either zero times, one time, or an infinite number of times. But what if we want something that's more specific? Something that's a specific quantity. Let's say we want to repeat something exactly four times. Or we want to repeat it four, five, or six times, but not anything else. That's where quantified repetition comes in. We have the ability to specify the number of times something is repeated and we do that by using curly braces with some values inside. That indicates quantified repetition. So the previous item will be repeated a certain number of times. The values that we put in between those curly braces would represent the minimum time it can be repeated and the maximum time. You would do it with a minimum, comma, and the maximum. Min and max are always going to be positive numbers. The minimum must always be included, we have to know at least the minimum number of times to expect it, but it can be zero. The maximum value is optional. There's actually three different syntaxes that we can use with this. The first is that inside those curly braces we can provide both the minimum and the maximum with a comma in between. In the first example, the regular expression would match numbers with four to eight digits. If we had only the minimum number, then the maximum would be assumed to be the same as the minimum, so it matched numbers with exactly four digits. Those are probably the two most commonly used cases. There is also a third one, though. Which is where we provide the minimum value and then a comma, but we don't state a maximum value. In that case, the maximum value is assumed to be infinite. We don't really have a good character we can type in there for infinity. So the way we do it, is we provide a minimum with a comma and don't specify the maximum. That matches numbers that have four or more digits. Between regular repetition and quantified repetition, we have a wide range of ability to specify how many times something will be repeated in a pattern. There is some overlap between them. For example, if I use quantified repetition and say the minimum is zero and the maximum is infinite, it's the same thing as using the asterisk repetition operator, where something can occur zero, one, or more times. If I use one as the minimum and leave the maximum as infinite, it's the same as using the plus repetition operator. One of the most common ways that quantified repetition is used is on standardized data where numbers match a specific pattern. A great example of that is phone numbers. US phone numbers have three digits, then a dash, then three digits, then a dash, and then four digits. So we can write a regular expression that matches that using backslash d and quantified repetition. Another example, if we imagine that we were searching in a financial document, and we wanted to only find references to bonds, which are A bonds or double A bonds, spelled as AA, but not triple A bonds, AAA bonds, we could quantify the number of A's that we're looking for. Can either be one or two, but nothing else. A great way to experiment and to see this is to give ourselves some text where we write number one, period, and then a space, and then the letter a. Let's do two, space, ab, three dot space, abc, four dot space, abcd, we'll just keep going til we have a few of these. All right, I think getting to F is enough. And then, let's try writing some text up here. We know that it's going to start with any digit at the beginning, and then a literal period, and then a space, and then after that, we're going to have a word character. It could be any number of word characters. Let's just do a plus sign first. And let's do backslash s to indicate the line return that should be at the end. So you can see right now, I'm not quantifying the repetition and it matches everything. If I instead change this to not be a plus sign, but to be curly braces, and I put a two in here, you see it matches the two letter word. If I put a three in here, it matches the three letter word. If I put a five in here, it matches the five letter word. Now let's try doing three, comma, five, and you'll see that it matches a three, four, or five letter word. Any of those will match. If I leave the five off and just have three, comma, now it's three minimum and the maximum is infinite. So it matches all of the other possibilities, it just doesn't match the ones that are one and two characters long. Or if I take away the comma, now it's exactly three characters again. Play around with it a bit. It's a good way for you to experiment. Now, obviously, if I do three, comma, two, it doesn't work. It returns an error because maximum should be greater than the minimum. And I have to provide something. If I don't provide anything, it doesn't match anything at all. It can be zero, that's possible. I could say zero, comma, one, and it would match examples that have zero characters or one character as well. When you're done experimenting with it, on your own, just try a simple exercise. Make yourself a phone number. And it can be for whatever country you're from. And then, on your own, without going back and looking at the hints I gave you earlier, try to write a quantified repetition expression that will match that pattern.

----

### __----- BULLET POINT NOTES -----__

| Metacharacter  | Meaning                                |
| :------------- |:-------------------------------------- |
| `{`            | Start quantified rep of preceding item |
| `}`            | End quantified rep of preceding item   |

### Quantified Repetition
  - `{min,max}`
    - min and max are always positive numbers
    - min must always be included and can be zero
    - max is optional
  - Three syntaxes
    - `/\d{4,8}/` matches numbers with four to eight digits
    - `/\d{4}/` matches numbers with exactly four digits (min is the max)
    - `/\d{4,}/` matches numbers with four or more digits (max is inifinite)
  - examples:
    -  `/\d{0,}/` is the same as `/\d*/`
    -  `/\d{1,}/` is the same as `/\d+/`
    -  `/\d{3}-\d{3}-\d{4}/` matches most US phone numbers
    -  `/A{1,2} bonds/` matches "A bonds" and "AA bonds", but not "AAA bonds"

### regexr example:
  - Text: 1. a
          2. ab
          3. abc
          4. abcd
          5. abcde
          6. abcdef
    - regex: `/\d\. \w+\s/g` (6 matches, all)
    - regex: `/\d\. \w{3,5}\s/g` (3 matches)
    - regex: `/\d\. \w{3,}\s/g` (4 matches)
    - regex: `/\d\. \w{3,2}\s/g` ERROR
      - max has to be larger than the min
    - regex: `/\d\. \w{}\s/g`
      - no error but no matches
  
----

## 4.3 Greedy Expressions

Transcript:
In this movie, we won't introduce another meta character. Instead, we're going to talk about an important principle of how regular expressions work. Often, the regular expression engine has to make choices about what it returns as a match. This becomes especially important once we use repetition expressions, because now, our strings are of an indeterminate length and they may match several different things. We need to understand how regular expression engines make that choice by default. Let's look at some examples so we understand what the problem is. Let's say that I have a regular expression looking for some number of digits, some number of word characters, and some number of digits, and I want to apply it to a file name like this. Now, what would be returned? We know that on either side of the regular expression, it has to have some number of digits, but the number of word characters could be a lot of different things. It could decide to just return the first portion from 01 to 07, in which case, the word characters would be represented by that highlighted portion. Or it could say that it's everything from 01 to 99, and the word characters would be everything that's in between. Both of these are valid choices, so which one should the regular expression engine return to us? Before we answer that, let's look at another example. This is a frequent problem that people run into. Let's imagine that I have a comma delimited file that has people's first name, their last name, and their company name comma delimited with quotes around them. So I could write a regular expression that says look for the first name and the last name in this file by looking for the quotes and the commas with wildcard repeated characters in between to grab whatever happens to be there for the first name and the last name. It's a very reasonable approach. We're hoping that it's going to give us back the first name and the last name, but those wildcard characters match a lot of things. It's perfectly valid for the regular expression engine to decide that the first set of wildcards applies to the first name, but the second one includes everything from the last name all the way to the end of the company name. See how that still is true? Look at everything that's in that blue highlighted portion. That corresponds to the second wildcard character. Or it could do the opposite. It could say that the first wildcard character is the first name and the last name and the company is represented by the second wildcard character. To understand which one it's going to choose, we need to understand how the regular expression engine thinks about this kind of problem. Standard repetition quantifiers are greedy. When we say greedy, it means that the expression tries to match the longest possible string. That's its default. It's always going to want to get the longest possible string, so if you have a wildcard with a plus sign, it's going to try and eat up as much of the possible string with that wildcard. Of course, it's still going to have to defer to achieving an overall match. It's not going to just say that that wildcard could apply to the whole string that's in your text. It has to still match. So, for example, if you had a regular expression that had a wildcard and then a .jpg and you had an image file whose name was filename.jpg, then the plus would make the wildcard greedy and it would try to give as much as it could to it, but then it would give back the .jpg in order to make the match work, because if the whole file name was taken over by that wildcard, then you wouldn't have a match. But being greedy means that it always gives back as little as possible. Let's look at another example. Let's imagine that we had Page 266 and we were trying to match that text. So we could have a wildcard zero more times and then a number a certain number of times. And we might expect that that would match our string. Well, the wildcard repeated is going to match Page 26. It's going to match all of that portion. The only thing that's going to be matched by the numbers is the number six. Even though we might think, "Well, the zero to nine "somehow better points to the numbers, "that's what I'm trying to get to," the regular express engine doesn't think of it that way. The wildcard matches numbers just as well as anything else. One way you can think about it is that it tries to match as much as possible before giving control to the next expression part. It can be helpful to see it. Let's imagine that we have that same expression and the same string, Page 266. So when it starts matching, it says, "Okay, I have a wildcard character "repeated zero or more times." So it goes to the P and it says, "Does that match what I've got right now? "Yes, it does." So it goes to the A. "Does that match what I'm working with right now? "Yes, it does." And it keeps going. And all of these characters match that single period repeated with an asterisk. So, finally, it gets to the end of the string. The end of the string doesn't match the wildcard character anymore, but the expression's not done, so it says, "Okay, now I'm going to hand over control "to the second part of the expression." The second part of the expression, is the zero to nine repeated, well, there's no place for that. That doesn't match. But instead of just giving up and saying there's no match here, what it does is it backs up. It backs up and it gives back one of those characters to see if it gave up a character, would it match, and it does. Now it matches. So Page 26 is matched by the wildcard portion and the six is matched by the number character set portion. So now we know the answer to that question we were looking at earlier. If we had this Excel file and we were trying to get the name, the word characters would go as far as it possibly could. That's going to be greedy. And when we go to that comma delimited file, it's going to be greedy with the first one. The first one is going to try and match everything it can and then it's going to give back things until it finally is able to make an overall match. We already saw earlier in this tutorial that regular expressions are eager. They want to return a match to you as fast as they can, but they're also greedy. When you tell them that they can take more text as part of a repetition, they will take as much of that text as they possibly can and give back as little as possible.

----

### __----- BULLET POINT NOTES -----__

### problem:
  - regex: `/\d\w+\d+/`
  - text: 01_FY_07_report_99.xls
    - return: 01_FY_07
    - return: 01_FY_07_report_99
      - both are valid choices, but which one do we want returned?
  - regex: `/".+", ".+"/`
  - text: "Milton", "Waddams", "Initech, Inc."
    - return: "`Milton`", "`Waddams`"
    - return: "`Milton`", "`Waddams", "Initech, Inc.`"
    - return: "`Milton", "Waddams`", "`Initech, Inc.`"
      - all valid. wildcard metacharacter is valid for those additional characters.

 ### Greedy Expressions:
   - To understand which one it's going to choose, we need to understand how the regular expression engine thinks about this kind of problem.
   - Standard repetition quantifiers are greedy
   - Expression tries to match the longest possible string
   - Defers to achieving overall match
   - `/.+\.jpg/` matches "filename.jpg"
   - The `+` is greedy, but "gives back" the ".jpg" to make the match
   - Gives back as little as possible
   - example:
     - `/.*[0-9]+/` matches "Page 266"
     - `.*` matches "Page 26"
     - `[0-9]+` portion matches only "6"
       - Technically, `.*` matches the entire text, but the regex is not over
       - When it goes to the next part of the regex and finds no characters to match, it backs up to see if it can find a character match 
   - Tries to match as much as possible before giving control to the next expression part 

### Eager and Greedy
  - Regular expression engines are eager
    - wants to return a match as fast as it can
  - Regular expression engines are greedy
    - wants to take as much of the matched text it can, and give back as little as possible

----

## 4.4 Lazy Expressions

Transcript:
Now that we know about greedy expressions, and we know that that's the default behavior of the regular expression engine, now we're ready to learn about lazy expressions. Lazy expressions are the opposite, and to trigger a lazy expression, and change that default behavior, we have to use another metacharacter, and it's a question mark. Notice that we've seen this metacharacter before, but it was for a different purpose. Remember we used it for a repetition modifier to say that something should happen either zero or one time, essentially that it's optional. Well now we're going to use that same metacharacter again but its context is going to have a different meaning. So don't get them confused. Let's see some examples. Let's imagine that we have one of our repetition metacharacters, we would follow it with a question mark. So asterisk question mark, plus question mark, or our quantified expression, min and max followed by a question mark, or two question marks together. The first one there is going to be the metacharacter indicating something should be zero or one times. The second one is going to indicate that it should use the lazy behavior to do that. So that's what the question mark does, it instructs a normal quantifier to use the lazy strategy instead of the default greedy strategy when it's making choices. And that lazy strategy means matches little as possible before giving control to the next expression part. Greedy strategy tries to take as much as possible, lazy tries to give up as quick as it can. It still defers to the overall match, and it's not necessarily faster or slower, it's just that it returns different results and it really depends on how you want the expression to function. You're just modifying the instructions so that it uses a different strategy. Let's walk through an example. So in the last movie we saw we have the string page space 266. We wrote a regular expression that would try to match the content there and we saw how the greedy strategy worked. Now I've added a question mark to it. That's going to say that the repetition should be lazy. So what happens is it starts going to the string, it says okay, I have a wild card here that's repeated zero or more times, can I give up yet? Well, it actually can give up before it even gets to the P right? It could be zero times. So it goes to the next part of the expression and says, would that match? No, it wouldn't. It's looking for a number in that second portion. So then it says, all right, so what if I just took the P? Would that match? Looks to the second portion and says, no, that wouldn't match because when we go to the A, that's no good. All right, fine, so the wild card says I'll take another letter, and it takes in another letter, and it keeps going. When it finally gets to the two, it says, can I give up yet? It looks to the next part and it says, zero to nine plus, and it says, okay, good, I can finally be done. It's lazy, it quits. And then the second part of the expression takes over and that is zero to nine with a plus, this time it's the greedy strategy, so it's not going to quit, it's going to keep going until it gets the rest of the string. So the whole thing will end up matching. So now ask yourself, what if you had the same thing and both of them used the lazy strategy? So that the first one tried to give up as quick as it could and the second part tried to give up as quick as it could. What would it return? The answer is it would return just page space two because when that second part got to the number, it would give up as quickly as it could, and as soon as it has the first number, it says, okay, I'm good. Neither one is the right answer, it really depends on what you're looking to match inside the text. If we go back to the other examples we looked at in the last movie where we were working with a file name, you can see the effect that adding the question mark has on that repeated word character. In the first example it was greedy and it tried to take as much as it could. In the second example it tries to give up as quickly as it can because it's lazy. Now the same thing when we're working with a comma delimited file. The second one is probably the results that we were expecting to get. The first one was greedy and added as much as it could to those wild cards. The second one says no, as soon as you find something that could allow you to quit, that's the time to quit. So for that first wild card, as soon as it goes past the word Milton and gets to that first quote, it sees if the quote is a match with the rest of the regular expression and it gives up, and hands control over. Of course, if it had gone past that double quote, and found that the next part didn't match as it continued on, well then it would stop and it would go back to the wild card and the wild card would take on a little bit more until it got to another quote, and it could potentially hand things off again. So neither one of these is really the right or the wrong way to do it, they're not necessarily going to be faster or slower, it's just about directing the regular expression engine so that it knows when it comes to those choices, how do you want it to make a choice?

----

### __----- BULLET POINT NOTES -----__

| Metacharacter    | Meaning                        |
| :--------------- |:------------------------------ |
| `?`              | Make preceding quantifier lazy |

### Lazy Expressions
  - `*?` 
  - `+?`
  - `{min,max}?`
  - `??`
  - Instructs quantifier to use a "lazy strategy" for making choices, instead of default "greedy strategy"
  - Match as little as possible before giving control to the next expression part
  - Still defers to overall match
  - Not necessarily faster or slower
  - example:
    - regex: `/.*?[0-9]+/` 
    - text: Page 266
      - lazy expression asks "I have a wildcare that can repeat 0 or more times, can I give up yet?"
      - Each match, the lazy expression checks if the next regex can take over or not
      - "P" > "a" > "g" > "e" > "  " > 
      - once it lands on 2, the lazy expression sees that the next expression can take over and thus be done.
      - regex: `/.*?[0-9]+?/`
      - text match: `Page 2`66 
        - if both are lazy, the regex here stops after `2`. The `+` now only has to fulfill one time to meet the criteria.
      - regex: `/\d+\w+\d+/`
        - text match: `01_FY_07_report_99`.xls
      - regex: `/\d+\w+?\d+/`
        - text match: `01_FY_07`_report_99.xls 
      - regex: `/".+", ".+"/`
        - text match: `"Milton", "Waddams", "Intech, Inc."`
      - regex: `/".+?", ".+?"/`
        - text match: `"Milton", "Waddams"`, "Intech, Inc."

----

