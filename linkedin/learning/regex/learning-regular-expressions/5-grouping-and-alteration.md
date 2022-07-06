# Learning Regular Expressions

## __Ch5. Grouping and Alteration__

----

### 5.1 Grouping Metacharacters

Transcript:
In this chapter we're going to learn about grouping and alternation. To do that we need to first learn two more metacharacters: the open and closed parentheses. Anything inside of them will be considered a grouped expression. The reason we're going to use those parentheses is to group portions of the expression so we can use them in a couple of different ways. The first is we can apply repetition operators to the group. The second is we can create a group of alternation expressions. We're going to learn those in future movies. And we can also capture the group for use in matching and replacing. Let's look at the first one of these, applying repetition operators to a group. So if we take the literal characters a, b, c, and we put parentheses around them we've now made a group. We can then apply one of our repetition operators to it to repeat that group of characters over and over again. So parentheses abc parentheses plus would match abc and also abcabcabc. You see, those same characters are being repeated. It's not just a single character now it's been repeated which we were doing before, now it's a group of characters that's being repeated. And it's not limited to just literal characters as well. You can have anything else inside that regular expression that you want including character sets and short hand. Another good use is to make something optional. Here you can see I've taken the word "in" and put it in parentheses, and put the question mark repetition metacharacter after it. So now it's going to match both independent and dependent. The i and the n are both optional. But they're optional together, as a group. If you were to make a single character optional, it's the same as if you didn't have the parentheses around it at all because we're just grouping a single thing. Even though it has the same meaning there may be times when this increases the readability of your regular expression. There's nothing wrong with doing it this way. I listed three use cases for grouping metacharacters. The first is to apply repetition operators. The second is alternation which we'll learn about later. The third is about capturing for replacing. Let's take a look at that. In order to demonstrate this we need to have some kind of a tool that's going to allow us to do find and replace. You may be able to do it inside a text editor, but these kinds of RegExr tools often have something that will allow us to do that. And RegExr does, it has something on here that says replace, if you click on it, it will now allow us to replace part of the text that we find. This might be an operation you would perform in a text editor or you might write it into a program that it would find it, capture it, and then replace the values. So let's see how capture works. Let's put a group here around this, so let's make the parentheses around the first set of digits, and then another set of parentheses around all of the rest except for that minus in between. We've now captured two different groups. Now we could apply repetition operators to those, but that's not what we're after here. We want to be able to find and replace and work with them. So it says that there's one match here, but the match actually has two different parts. And you can use $1 to grab just the part that matches that fist set. See, it tells me down here, five five five. If I do $2 I get the second group. So both of those are stored in this sort of variable, this $1, $2, it's each of those matching groups. And then I can use that to write what I want it to replace with. Let's say I wanted to change the phone number into parentheses: $1 space and then $2. Now I've reformatted the phone number to have parentheses around it. This is the kind of operation you can do by capturing it and using it for find and replace. Or I could put parentheses around both of these portions now number two matches this part, and number three matches that third part. Let's say I wanted to change the formatting here and make it a period, maybe I wanted to format it this way. Five, five, five, dot six, six, six dot seven, eight, nine, O. Or we could add text in front of it. The important part is that those parentheses create a group and it captures that group so that we can make use of it. Many regular expression engines allow us to use the dollar sign to refer to those capture groups. Some of them use a backslash. So if dollar sign doesn't work for you, you might also try a backslash in front of the number and see if that works. Now that we know how to use groups to apply repetition operators, and to capture for find and replace, the next thing is to learn how to use them for alternation.

----

### __----- BULLET POINT NOTES -----__

| Metacharacter    | Meaning                        |
| :--------------- |:------------------------------ |
| `(`              | Start grouped expression       |
| `)`              | End grouped expression         |

### Grouping Metacharacters
  - Group portions of expressions
  - Apply repetion operators to a group
  - Create a group of alternation expressions
  - Captures group for use in matching and replacing
  - example:
    - `/(abc)+/` matches "abc" and "abcabcabc"
    - `/(in)?dependent/` matches "independent" and "dependent"
    - `/run(s)?/` = `/runs?/`
      - while the same meaning, it can increase the readability of your code


### regexr example:
  - text: 555-666-7890
    - regex: `/(\d{3})-\d{3}-(\d{4}/)`
      - replace tool: `$1` grabs 555
      - replace tool: `$2` grabs 666-7890
      - replace regex: `($1) $2`
        - returns: (555) 666-7890
    - alt regex: `/(\d{3})-(\d{3})-(\d{4}/)`
      - `$1` = 555
      - `$2` = 666
      - `$3` = 7890
      - so on and so on...
  - !!!CAUTION!!!
    - most regex engines support `$#`, however some support `\#`

----

### 5.2 Alternation Metacharacters

Transcript:
In this movie, we're going to learn to write regular expressions that use alternation. To do that, we'll need to learn about the alternation metacharacter, which is just an upright bar or pipe. It'll depend on your keyboard layout, but it's often located on the right side, above the Return key. You can think of this character as being an OR operator, match either the expression on the left, or match the expression on the right. Now, they are ordered, so the leftmost expression gets precedence It'll try the first one, if it's not a match, then it'll proceed to the second one. If it is a match, well then it'll go ahead and just use that match. Multiple choices can be daisy-chained together. You can use those parentheses that we use to create groups, so that you can group the alternation expressions and keep them distinct from the rest of the expression. Let's see some examples. If I have "apple" and then the alternation character, and then "orange", it'll match either "apple" or "orange". If I have "abc", alternation character, "def", alternation character, "ghi", alternation, "jkl", then it would match any one of those strings. Now, it's a good idea to use the parentheses to help keep these distinct, especially if you're looking for anything else, and, by default, I always use the parentheses with mine. Here's an example where "apple", and then either "juice" or "sauce", is not the same as having "apple juice", or "sauce". It can be handy if you think things might be spelled different ways. Let's say you're looking for a document and you're looking for every time that the word "weird" is spelled correctly, and the every time that it's spelt incorrectly. Well you could look for "w" and then alternating between either "ei" or "ie", followed by "rd". You can also use alternations with repetition. Let's say that you had an alternating expression between "AA", "BB", and "CC", repeated four times. That would match any combination, so you could have "AABBAACC" or you could have "CCCCBBBB" or eight A's in a row, eight B's in a row. Each time it repeats it's allowed to use any of those alternating choices. The first matched alternation doesn't affect future matches. Let's try some examples. I'm going to go back to Explain here because we're not doing Replace, and let's make our text be "weird or wierd" and we want to find both of those. So we could write "weird", and we know it'll match the first one. If we put parentheses around the "ei" and then we put that alternation character, we can put "ie", and it'll match both of them. It alternates. Let's try another one, let's try the apple juice, apple sauce example. Let's do "applejuice" and "applesauce". Now let's put in "applejuice" alternated with "sauce" and you'll see that it doesn't do what we would expect, right? It's "applejuice", it matches, or it matches "sauce". If we put parentheses to group it, now it finds both words, "apple" immediately followed by either "juice" or "sauce". And let's try that repetition one, just so we see how that works. Let's imagine that we have text that is "AABBCCAA" and then let's just change this to be alternating between AA, BB, and CC, repeated four times. Right, that still matches. Even if I change this to be BB, it still matches. Right, it doesn't matter what each one of the iterations through the repetition matches, every time it gets the chance to match all three of those.

----

### __----- BULLET POINT NOTES -----__

| Metacharacter   | Meaning                            |
| :-------------- |:---------------------------------- |
| `|`             | Match previous or next expression  |

### Alternation Metacharacter
  - `|` is an OR operator
  - Either match expression on the left or match expression on the right
  - Ordered, leftmost expression gets precedence
  - Multiple choices can be daisy-chained
  - Group alternation expressions to keep them distinct
  - example:
    - `/apple|orange/` matches "apple" and "orange"
    - `/abc|def|ghi|jkl/` matches "abc", "def", "ghi", and "jkl"
    - `/apple(juice|sauce)/` ≠ `/applejuice|sauce/`
    - `/w(ei|ie)rd/` matches "weird" and "wierd"
    - `/(AA|BB|CC)[]{4}/` matches "AABBAACC" and "CCCCBBBB"
  
----

## 5.3 Efficiency When Using Alternation

Transcript:
I want us to spend a few minutes considering the role of efficiency when writing alternations in your regular expressions. We've already learned two fundamental principles of regular expressions, that they're eager and they're greedy. The first one is really the one that comes in play here, the fact that regular expressions are eager to return you a result. Let's try as an example in our Regexer tool to change the text to be peanutbutter. And then let's write an alternation up here. Inside of parentheses we'll put peanut, and then alternate it with peanutbutter. Now we can see that both of these should return a match. But the regular expression engine reads from left to right and as soon as as it finds something that satisfies it, it's eager to return that result to you. So it returns peanut even though peanutbutter would have matched more. So it's eager to return a result to us. Now of course, we know that we could have rewritten this a different way. And we could have made just the butter portion the alternating bit, and I could have put a question mark after it. Now it can be present or not present and we know that it's greedy by default so it's going to take the whole thing, peanutbutter, unless we tell it to be lazy, by adding another question mark. In which case it will then just take peanut and give up as soon as it can. So we have to give some thought to the way that the regular expression engine is going to make its choices and think about what kind of efficiency it's going to have as it's looking at a text. We already know that it doesn't have a concept of what would be a better match. It's always going to be eager to return the results unless we've told it that it can use repetition in which case it'll be greedy. Let's try another example. Let's change peanutbutter to just be the alphabet, A-B-C-D-E-F, we'll just keep typing. Okay, now I have the full alphabet written there as my text, and let's change our regular expression to be alternation between abc or def or ghi or jkl. So you can see it matched four different things here. If we take off the global flag, you'll see that it just matches the first one and that's because it's eager, it doesn't look for later matches in the string, it returns the first match that it finds. Now try this, put xyz at the front so that that's the first choice. Now it didn't go find xyz further down in the string. Notice that it started with the first part of the string and looked for something that matched there, it did not scan to the end. Remember this text might not just be a simple line, it might be a 20-page document that we're scanning. So it's not going to look through the whole document looking for that first choice. It's going to start at the beginning of the document, and see if it finds a pattern that matches one of these choices. If we watch how the regular expression engine works I think it can help you to see this. Let's imagine that I have a phrase, I think those are thin trees. And my regular expression is an alternation between four words, three, see, thee, or tree. That's what we're looking for. The way that regular expression engine approaches this problem is it starts at the first character, and it says do I have a pattern match starting with this character? So it looks and says, is I in the first choice? It's not, is I in the second choice? No, and so on. Of course when it finally gets to the T in think, now it has to stop and think about it a little bit more. The first choice starts with a T, so it says, oh this could be good, this might actually match. So it goes and checks the second character. It's an H, again, looks like this might be a good choice. Then it gets to the third character and says, oh no, this is not the first choice of these options. So what does it do then, it rewinds back to the T. It checks it against the second option, S-E-E. Well that's not a match, the first character doesn't match. So then it goes to the next one. It says, oh, the T matches, this is promising, it checks the H, still promising, it gets to the I, and it says no, that third choice isn't good either. So now it rewinds back to the T again. And it tries the fourth option, tree. The T matches, but when it gets to the R it doesn't. So now what does it do? Well, it tried all the possibilities at that third character, the T. So now it starts with the H. Does H match three? No, does H match C? No, and it keeps going, does the same thing when it gets to those. Same kind of thing the first two characters match, so it tries a few and it keeps rewinding. It does the same thing when it gets to thin. It sees some characters that are similar, and then of course finally it gets to trees. When it gets to trees it tries the first three of them, and then finally when it gets to the fourth one, is when it has its success. What I want you to see here is the little dance that it does, as it keeps rewinding back, trying the different possibilities. And I also want you to see that it doesn't say all right, let's take the first option three, and let's scan the whole text looking for the word three to see if it exists. And then let's go back and scan the whole text looking for see, to see if it exists. It doesn't work that way. It starts at a position and it checks the pattern against each of those positions in turn. Because of this, it pays big dividends, if you put the simplest or most efficient expression first. Let's imagine that I had a complex expression like this. And I'm looking for three different things. The first could be any number of word characters followed by two the four digits, and then the second is any four digits, followed by the word export, and then the third is to have the word export followed by any two digits. This alternation would be better if we rearranged it and put them in the reverse order. And when we think back to the previous example where we walked through them, we can understand why. It's very quick for it to check and see, does this character match an E? If it does let's keep looking, but if not let's discard choice number one right away. And then let's go to choice number two. Is it a digit? It has to be a digit or it won't match. If it's a digit, fine, we'll keep looking to see if we have four digits. But if not, let's discard that one very quickly. The third one though, that one takes some time. When it gets to the third one, any word character can match. There's a lot of possibilities there, and it's infinite repetition, and it's greedy. So it's going to try and just grab as many word characters as it can. And it'll go all the way till it gets to something that's not a word character, and then it'll check the rest of it. And if it doesn't work, it's going to backtrack all the way back again and try the next position, all the way through. So you can see it's the most complex because it has that greatest amount of character range, and the greatest repetition so it's not going to be the most efficient to put first. Literal text, small character sets, are always going to be more efficient, because the can be checked very quickly.

----

### __----- BULLET POINT NOTES -----__

### Efficiency When Using Alternations
  - Regular expression engines are eager
  - Regular expression engines are greedy
  - example:
    - regex: `/(three|see|thee|tree)/`
    - text: `I think those are thin trees.`
      - scanning pattern: 
        -  Left -> Right
        -  `"I"` checked across all OR parameters
        -  `"t"` > `"h"` > `"i"` checked across
        -  rewinds back to the `"t"` character each time it checks over and over until a match is or is not made
        -  finally gets to `"trees"`, checks the first 3 options before comparing it against the 4th where it matches
   - Put simplest (most efficient) expression first
     - `/\w+_\d{2,4}|\d{4}_export|export_\d{2}/`
       - 1st option: any amount of word characters followed by two to four digits
       - 2nd option: {four digits}_export
       - 3rd option: export_{two digits}
     - (Reverse to put the simplest first)
     - `/export_\d{2}|\d{4}_export|\w+_\d{2,4}/` 

### regexr example:
  - text: peanutbutter
  - regex: `/(peanut|peanutbutter)/g`
    - only patches `peanut` as it is eager to fulfill the first OR statement
  - alt regex: `/(peanut(butter)?/g` 
    - matches all
  - alt regex: `/(peanut(butter)??/g` 
    - matches only `peanut`
  - text: abcdefghijklmnopqrstuvwxyz
  - regex: `/(xyz|abc|def\ghi\jkl)/`
    - match: `abc`defghijklmnopqrstuvwxyz
    - scans text first to see if it meets any of the OR clauses

----

## 5.4 Challenge: Grouping and Alternation

Transcript:
It's time to use your grouping and alternation skills in another challenge assignment. Like our other challenge assignments, we're going to be working with the essay by Ralph Waldo Emerson, Self-Reliance. You can open that up in a text editor and work with it, or you can paste it into the regular expression tool. So we can write regular expressions at the top, which will be applied against it. The first assignment is to use grouping and alternation to match myself, yourself, and thyself, but not himself, herself, and itself. After you've done that the next one is to match good, goodness, and goods, but do it without typing the word, good, more than once. And finally, match all occurrences of either do, or does, followed by no, not, or nothing, even when it occurs at the start of a sentence. Spend some time working on these, using grouping and alternation, and in the next movie, I'll show you the solution that I came up with.

----

### __----- BULLET POINT NOTES -----__

### Challenge: Grouping and Alternation
  - open emerson_self-reliance.txt and copy into regexr editor
  - Apply global regular expressions to the text "Self-Reliance"
  - Match: "myself", "yourself", "thyself", but not "himself", "herself", "itself"
  - Match "good", "goodness", and "goods" without typing "good" more than once
  - Match "do" or does" followed by "no", "not", or "nothing", even when it occurs at the start of a sentence

A:
  - `/(my|your|thy)self/g` 14 matches
  - `/good( |ness|s)/g` 15 matches
  - `gdo( |es) no( |t|thing)/g` 16 matches

