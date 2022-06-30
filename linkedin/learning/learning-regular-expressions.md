## Introduction

### Write text matching patterns

Transcript:
Regular expressions are an essential skill for any developer or computer programmer to have. They allow you to define text patterns that can be used for a variety of tasks. You can validate data submitted by users, your code can extract parts from longer strings, you can use them to convert data into a new format. They even make it easier to search your own code. In this course, we will learn the fundamentals of writing regular expressions. We will walk through each of the symbols that are the basic building blocks for more complex patterns. Through a series of simple demonstrations, you will learn how to put together an expression and how to anticipate the behavior of the program that will interpret it. Along the way, I will point out a number of pitfalls and common mistakes to avoid. My name is Kevin Skoglund. I've been a web developer for over 15 years, and I use regular expressions all the time, both in my code and to speed up my development. I consider regular expressions an indispensable tool. I'm excited to share what I've learned so that you can use them, too.

----

## 1. Getting Started with Regular Expressions

### 1.1 What are regular expressions?

Transcript:
Let's begin by answering the question, "What are regular expressions?" Regular expressions are a tool for searching and matching parts of a text by describing the patterns that should be used to identify those parts. A regular expression is a set of symbols that describes a text pattern. The plural of the name, regular expressions, refers to the larger formal language of the assembles that describe text patterns. Regular expressions are not a programming language. They're used for matching, searching, and replacing text. Now, they may seem similar to a programming language, because they are a formal language, that have a defined set of rules that a computer understands, but there are no variables, they don't set values, they don't contain instructions, and they can't make decisions. But most programming languages make lots of use of regular expressions. They're an important and useful tool for working with text. Every programmer should learn how to use them. Often, regular expressions are called regex for short. Sometimes you'll see it written with a P at the end, but that's not as common. You'll hear me say regex frequently because it's shorter and easier to say than regular expressions. Let's look at some of the ways that you might use regexes to work with text. You might test if a credit card number has the correct number of digits. Or you might use them to test if an email address is in a valid format. You could search a document for the word color and look for it spelled both ways, C-O-L-O-R or C-O-L-O-U-R. You could also search your document for all occurrences of Bob, Bobby, or B., and replace it with the more formal Robert. Or you could count how many times the word training is immediately preceded by the words computer, video, or online. In each case, we would use regular expressions to write a description of a desired pattern using symbols. For a phone number the pattern might be three digits, then a dash, then three more digits, then another dash, and finally four digits. We can use symbols to describe that pattern. Once we've defined our pattern, then the regex processor will use our description to look for matching results. The word matches is a keyword, and we're going to be using it a lot. A regular expression can be said to match text if it correctly describes the text. You can also flip that around and say that text matches a regular expression if it's correctly described by the expression. You can use it both ways. Regular expressions are patterns of symbols that match text.

----

### BULLET POINT NOTES

#### What are Regular Expressions (Regex)?
  - Symbols representing a text pattern
  - Formal language interpreted by a regular expression processor
  - Used for matching, searching, and replacing text
  - Not a programming language
    - no variables
    - don't set values 
    - don't contain instructions
    - can't make decisions
  - Used by programming languages

#### Usage Examples:
  - Test if a credit card number has the correct number of digits
  - Test if an email address is in a valid format
  - Search a document for either "color" or "colour"
  - Replace all occurences of "Bob", "Bobby", or "B." with "Robert"
  - Count how many times "training" is preceded by "computer", "video", or "online."

----

#### Phone example:
`555-973-2468`

you can use symbols to describe the pattern:
```
\d\d\d-\d\d\d-\d\d\d\d
```
----

#### Regular Expression Matches
  - Matches
  - A regular expression matches text if it correctly describes the text
  - Text matches a regular expression if it is correctly described by the expression

----

### 1.2 Choose a regular expression engine

Transcript:

In this movie we'll talk about choosing a Regular Expression Engine. Each implementation or version of the Regular Expression Processor can be referred to as an engine. Let's take a look at the most popular ones. There's C and C++, Java, JavaScript, .Net and the .Net family of tools, Perl, PHP, Python, Ruby, Unix, which is really all the different tools that are available for use with Unix and there's many of them, Apache, and MySQL. Now there are many more engines than these, these are just some of the most popular ones. Most of the features of Regular Expressions will work the same on all engines. However, there are a few subtle differences between them and what each engine supports. An engine might support all of the core features, but also add a few new ones that won't work elsewhere. The most notable exception we found in older Unix programs. Unix originated a long time ago back when Regular Expressions were first created, and some of those early tools still use early versions of Regular Expressions that don't have many of the later improvements that the other tools do. In every case you want to consult the documentation for that language or engine to get details. I'm going to be giving you the general principle of Regular Expressions that you can use, and those will be true regardless which one of these languages you want to work with. Now for this course we need to install a Regular Expression Engine of our own so that we can try them out. You can choose from many programs on your desktop computer, or even on your phone. You can use grep or egrep from the command line, TextMate, Atom, or Sublime, Notepad++, those are text editors. There's RegexBuddy or RegexMagic are applications you can download, and then there's Mobile applications you can download for your phone as well. In this course I'm going to be using a free online JavaScript Regular Expression tool. There's not installation required and it's going to be cross-platform. That's going to be good for everyone taking this course. It will provide a good sandbox that we can use to experiment. I'm going to suggest three sites, all very similar. I'm going to be using the first one, regexr. Let's take a quick look at all three. So the first one I'm going to show you is regex101.com. So you can see here you can type in your Regular Expression, that's the pattern of symbols that we will be using, and down here is where you would type the test string. The thing that we want to match the Regular Expression against. And you can see that there's different flavors of Regular Expressions that you can pick here. That's just slightly different implementations, so if you want the PHP implementation you can choose this one, JavaScript, Python, Golang. So as I said those are just slightly different versions of the Regular Expression Engine, and the features just may deviate in very subtle ways. Then there's regexpal, and regexpal allows you to type the Regular Expression up here, and down here is the text screen. You also have some cheat sheets over here you can use, if you want to look up something things. The one I'm going to be using is regexr.com. So if you want to follow along with me, you want to go to regexr.com in a browser, and then from there you'll be able to follow along exactly with me. Has the same basic idea, you type your Regular Expression up here in the top, and then down here is the text that we want to match it against. One nice thing about this tool that I like is it actually goes through and explains what each of the symbols in your Regular Expression mean. So you have some idea of what you're putting in there and may help you to be able to actually debug it as well. And it does have some different settings that you can use some cheat sheets and things like that as well. As you can see there are many tools out there that you could choose to use, when learning Regular Expressions. Feel free to use any of them, but this one's my favorite tool and this the one we're going to be using throughout this tutorial.

----

### BULLET POINT NOTES

#### (Most Popular) Regular Expression Engines
  - C/C++
  - Java
  - JavaScript
  - .NET
  - Perl
  - PHP
  - Python
  - Ruby
  - Unix
  - Apache
  - MySQL

(Consult documentation for supported tools)

----

### 1.3 Notation conventions and modes

Transcript:
Before we dive into learning about regular expressions, I want to just spend a moment talking about some of the notation conventions and modes that we're going to be using. The way that we define a regular expression in writing is usually by putting it inside two forward slashes. Those are the limiters that let us know that we're talking about a regular expression. So forward slash, abc, forward slash lets us know that there's a regular expression, and the expression is abc. The forward slashes are not part of the expression, they're just the delimiters that hold it. So you're going to be using it without forward slashes most of the time. Now, some programming languages are going to want you to add those forward slashes in there in order to delimit it, so that the programming language can know that it's a regular expression, but in other cases, you won't. You'll just simply type them in as a string. Now the reason we use those forward slashes is to contrast it against the text strings that we're using to match it against. So this regular expression of abc is going to match the literal characters in a text string, abc. And we have quotes around that as delimiters to let us know that it's a text string. But when we're using our javascript tool, we're going to be using those text strings without quotes. So even though I have quotes around it, you're not going to use them. In regexr we can actually see that. You can see, here's the expression, and if I just select everything there, and delete it, you can see that it still has those brackets around it and I can't get rid of them. They're just built into it. So it opens, it says open indicates the start of a regular expression, close indicates the end of a regular expression, and the start of regular expression flags. We'll come back to those flags in a minute. But I can't erase them, and when I type in here, it just puts it right in between them, to let me know that that's the regular expression. Down here is the text. This is the thing that would be a text string, but we don't need to put the quotes around it. In this case, we can just put the string itself, that's the text, it's like we're looking at a text document. And so we understand that it's a string, and in other contexts you might need to put the quotes around it. So now, let's talk about those flags for a moment. If I click over here on flags, you'll see that I have a couple of options, and I can click on this one, and you'll see that it added a g after the slashes. If I click on this one, it adds an i. If I click on the first one again it takes away the g, I can add m for multiline, and so on. These are flags, and they indicate different modes that we're using with our regular expression. For now, turn all of those modes off. So what do those different modes mean? Well, the standard mode is just when we have those forward slashes with our regular expression inside. Global has the g after it. And global says match this over and over and over again throughout the document. Don't just find the first match, find all the matches, look globally. So if we have a 50 page document, it's going to look through all 50 pages. If we take it away, then it's going to look for the first match, and then say, yep, I found it, and it's done. So it's the difference between find and find all. And then i is for case insensitive. Lets us know that when we're searching, it shouldn't pay attention to whether it's uppercase or lowercase letters. It's a useful convenience. But there are other ways that we can specify this which we'll learn later on. And then, m is for multiline. Can our regular expression match text that stretches across more than one line, or does it have to all be on the same line? By default, it cannot span more than one line. Multiline says that it can. I also want to take this as a moment to mention grep to you. Grep is a program that's very common on Unix-based systems, and grep actually gets its name from g/re/p. Now we just saw the global flag at the end, but it used to be that global flag was at the beginning, in the early days of regular expressions. And so this stood for global regular expression print, to print out the results. So globally search for a regular expression and print out the results. That's what this program is doing. And grep is a very common program, and you'll see this term used a lot. It's often used as a verb. Someone will say let me grep that document for you, and that's what they mean is, I'm going to take a regular expression and search that document. And now, you know where the word grep comes from. It comes from the notation convention and the mode that we use with regular expressions.

----

### BULLET POINT NOTES

#### Notation Conventions
  - Regular expression
    - /abc/ 
    - two forward slashes act as limiters to signify this as Regex
    - Used without forward slashes most of the time
  
  - Text string 
    - "abc"
    - /abc/ compares against "abc"
    - JS tool uses without quotes

----

#### Regex Flags

Flags indicate different modes being used in the Regex

Modes
  - Standard: /re/
  - Global: /re/g 
    - finds all matches, only matches the first without it
  - Case insensitive: /re/i 
    - ignores case sensitivity
  - Multiline: /re/m 
    - Default can't span more than one line, /m allows it to span past that
  - can be concatenated i.e. /re/gim

----

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



  
  

