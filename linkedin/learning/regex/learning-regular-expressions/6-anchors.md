# Learning Regular Expressions

## __Ch6. Anchors

----

### 6.1 Start and End Anchors

Transcript:
In this chapter, we will learn how to write anchored expressions. These are expressions which specify a starting or an ending point that needs to be considered when searching for a pattern. We'll begin by looking at the most common types of anchors, the start and end anchors. There are four of them. The first is the caret that indicates the start of a string or line. Then there's the dollar sign that indicates the end of a string or line. Backslash A is the start of a string but never the end of a line. Backslash Z is the end of a string but never the end of a line. You can see that several of these have similar meanings. We'll discuss those differences in the next movie. For now, we can use them both. Notice that the caret is a meta character that we've seen before, but we saw it in a different context. We used it to indicate a negative character set. And when it's the first character inside of the character set, inside the square brackets, it's going to be used to indicate a negative character set. Here we're going to be using it at the beginning of our regular expression. In a different context, it's going to have this different meaning. Start and end anchors reference a position, not an actual character. We call them zero-width. They don't actually reference a character that's in the string. They're just telling you something about the pattern and about the string and its position. So, for example, if we wanted to search a string for the word apple, but we wanted to ensure that it was the first word in the string, we can use the anchor to indicate that by putting that caret at the beginning of the regular expression it anchors it to the front of the string. It says, it must be the first word. If it's somewhere else in the string, we don't care about it. It doesn't match our pattern. And the same thing is true for backslash A. We can use the dollar sign to indicate that it should be at the end of the string. So here we're looking for the word apple, but not at the beginning of the string, not in the middle of the string, only if it is the last five characters of that string. And backslash Z works in the same way. It can be handy to pair both of them together. This would indicate that the regular expression should completely define the string that we're looking at. From the beginning all the way to the end, it must match whatever pattern I've given it. The caret and the dollar sign anchors are going to be supported in all regular expression engines. However, backslash A and backslash Z are a little newer, and are not supported by some of the older engines. They're going to be supported by all the modern popular ones that you're going to be familiar with, with one big exception, and that's JavaScript. The fact that JavaScript is an exception is going to make a difference when we try it out in our website because you can see right here, it says that it's using the JavaScript RegEx Engine. It also gives us another choice, which is PCRE. That starts for Pearl Compatible Regular Expression, and it's what many programming languages are going to use besides JavaScript. So this is one time when I'm going to switch it over and use PCRE just so that we have support for all four types of anchors. So let's try it out. We already have the alphabet written here. If you don't have it, go ahead and add it. Let's change our regular expression to just be D-E-F, and let's set our flags here to be global. So it's going to find all occurrences of D-E-F, and it's going to look for them anywhere in the string. Now let's add an anchor to it. At the very beginning, let's put our caret. Now it doesn't find D-E-F any more. Why not? Because it's not at the very beginning of the string. We can prove that by adding D-E-F to the beginning of the string and see that now it matches. It doesn't match the second occurrence, only the first one. If I take the anchor away, now it matches both of them. And the same thing is true if I add the anchor at the end. Now I'm looking for D-E-F but only if it occurs at the end of the string. Doesn't matter for the ones at the beginning of the string or the end of the string, only if it's present at the very end. Let's add it right here. Now it matches that third occurrence. Let's try another example. We'll erase that and type apples to apples to apples. Let's come up here and let's type apples. You see it matches it three times. Now at the beginning of it, let's the other anchor this time. Let's try the backslash A. You see that it only finds the one that's at the very beginning. If we instead do backslash Z at the end, you can see that now it only matches the one at the end. Now I just want to show you, if we switch back over here to the JavaScript engine, you can see that it no longer matches because JavaScript doesn't have good support for that backslash Z. So we're going to switch back and use Pearl Compatible Regular Expressions. And, of course, we can use them both together, but now it doesn't match our pattern because that's not a pattern that defines this full string, right? If we remove all of these, and just make it apples, now it does match because we've defined the entire string from start to finish. From A to Z, we have a pattern that matches. Being able to match the full string is important, especially if you're using regular expressions for validations on data. Let's say that we're trying to validate an email address, and we have someone@nowhere.com. And let's just write a really simple regular expression for this email address. This is not a complex validation. Let's just say it's any word character repeated followed by an at symbol and then any word character repeated followed by a literal period. And then A to Z is going to be three times. I know that doesn't match all types of email addresses. I'm just trying to do something really primitive and basic here. So it looks like it matches, right? So you might use this as a validation and check to see if this is a valid email address. But what if I add dash junk at the end? Now it still validates, right? It's still going to pass my validation. It's going to say, yes this regular expression matches the string. What we really mean is that it should be everything from the beginning all the way to the end. Now it doesn't match any more. We did not completely and perfectly match the data we're looking for, so it fails our validation. By using both starting and end anchors, we can ensure that the string that we're validating matches our entire regular expression.

----

### __----- BULLET POINT NOTES -----__

| Metacharacter   | Meaning                            |
| :-------------- |:---------------------------------- |
| `^`             | Start of a string/line             |
| `$`             | End of a string/line               |
| `\A`            | Start of string, never end of line |
| `\Z`            | End of string, never end of line   |

### Start and End Anchors
  - Reference a position, not an actual character
  - Zero-width
  - `/^apple/` or `/\Aapple/`
    - apple must be the first word
  - `/apple$/` or `/apple\Z/`
    - apple must be the last word
  - `/^apple$/` or `/\Aapple\Z/` 
    - string must match "apple" start to finish
  - !!!CAUTION!!!
    - `\A` and `\Z` are not yet supported by JavaScript

### regexr example:
  - text: abcdefghijklmnopqrstuvwxyz
    - regex: `/def/`
      - match: abc`def`ghijklmnopqrstuvwxyz
    - regex: `/^def/`
      - 0 matches (not at the beginning of the string)
      - would match if: `def`abcghijklmnopqrstuvwxyz
    - regex: `/def$/`
      - 0 matches (not at the end of the string)
        - would match if: abcghijklmnopqrstuvwxyz`def`
  - text: apples to apples to apples
    - regex: `/apples/` 
      - match: `apples` to `apples` to `apples`
    - regex: `/\Aapples/` 
      - match: `apples` to apples to apples
    - regex: `/apples\Z/`
      - match: apples to apples to `apples`
  - text: someone@nowhere.com (email validation)
    - regex: `/\w+@\w+\.[a-z]{3}/`
      - match w+ @ w+ . net/com/org, etc
  - text: someone@nowhere.com-junk
    - would pass prior regex
    - new regex: `/^\w+@\w+\.[a-z]{3}$/`
      - no longer matches

----

### 6.2 Line Breaks and Multiline Mode

Transcript:
In this movie, we'll continue our discussion of start and end anchors by talking about a very important concept, line breaks and multi-line mode. In the last movie, we saw that we can use our start and end anchors to indicate if a pattern should be at the start or end of a string. But you'll notice that in those meanings for each one of them, there's a little bit of a difference between the way they handle the end of a line. When you're matching a regular expression against multiple lines, it may not work quite the way that you think. Let's see the problem in action first. Here I have a list of groceries in my text. And I just have a real simple regular expression that says that's a character set including the letters A to Z lowercase, a space, repeated one or more times. And that matches everything that's in my list because I have the global flag set. Also take note of the fact that I'm using the Pearl-compatible regular expressions engine and not the JavaScript one. And let's make sure that I have a line return after sweet potatoes as well, just so that each one of these is on its own line with a line return. Now, right now it's matching everything. But if I start using anchors here, let's put an anchor tag at the very beginning. Now you'll see that it only matches the first one, milk, because that's the beginning of this whole string. You'll notice that it didn't match any of the subsequent lines. And it kind of should, right? That was the definition we gave for this caret was that it would anchor it to the beginning of a string or a line. So what's going on here? The reason why they're not behaving the way we might expect is because there's two different modes that we can look at regular expressions in. There's single-line mode and multi-line mode. Single-line mode is the default. And in that case, when single-line mode is being used, the caret and the dollar sign do not match at the line breaks. And backslash A and backslash Z do not match at the line breaks. However, we can change the regular expression to be evaluated in multi-line mode. In that case, the caret and the dollar sign will match at the start and end of lines. But backslash A and backslash Z won't. They'll still keep the same behavior. When we're working with more than one line multi-line mode is very handy because then we have anchors that can indicate the start and end of a line or we can use the backslash A and backslash Z anchors to anchor it to the beginning or the end of the entire file or string that we're evaluating. Many of the Unix tools only are going to support single-line mode. Multi-line mode came a little later on. Most programming languages offer a multi-line option. If you're using Pearl, Ruby, PHP, JavaScript, other languages, it may be as easy as adding an M flag after the regular expression. That's all you do. You just add an M and it tells it that this is to be evaluated in multi-line mode. If You're working with Java, .NET, or Python, well then you're probably going to need to pass in some kind of an option to the function that's going to run the regular expression. If you're using a language that's not listed here it's probably one of these two options. You either add a flag afterwards, usually just a simple M, or you're going to pass in something to the function when the regular expression is being evaluated. In our online regular expression tool, we can do that by going to flags and we can choose multi-line. And you'll see that it adds the M after here. So we have both a G and an M. Now it's in multi-line mode. And look at that. They all started matching because now all of them do match the beginning of the string. We can add a dollar sign at the end because they match everything from start to finish. If you want to see an example of one that doesn't match let's just do a space here and let's put parentheses two. That's no longer a part of our regular expression. Parentheses and numbers weren't allowed. So you can see, now it's matching everything that matches our pattern from the beginning of the line to the end of the line with everything included in our pattern in between. If we instead change these to be backslash A and backslash Z, you'll see that now none of them match again because now we're referencing the beginning and end of the entire string, not the beginning and end of the line. So that M flag is pretty easy to use. You just need to understand the concept of why you need to use it. Start and end anchors are powerful tools for anchoring your regular expressions. You'll just want to make sure that you consider whether or not you're working with single lines or multi-lines and choose the right anchors to match.

----

### __----- BULLET POINT NOTES -----__

### Line Breaks and Multiline Mode
  - Single-line mode
    - `^` and `$` do not match at line breaks
    - `\A` and `\Z` do not match at line breaks
  - Multi-line mode
    - `^` and `$` will match at the start and end of lines
    - `\A` and `\Z` do not match at line breaks
    - to enable multi-line mode:
      - Perl: `/^regex$/m`
      - Ruby: `/^regex$/m`
      - PHP: `/^regex$/m`
      - JavaScript: `/^regex$/m`
      - Java: `Pattern.complie("^regex$", Pattern.MULTILINE)`
      - .NET: `Regex.Match("string", "^regex$", RegexOptions.Multiline)`
      - Python: `re.search("^regex$", "string", re.MULTILINE)`

### regex example:
  - text: milk
          apple juice 
          yogurt 
          corn
    - regex: `/[a-z]+/g`
      - match: `milk`
               `apple juice`
               `yogurt`
               `corn`
    - regex: `/^[a-z]+$/g`
      - match: `milk`
               apple juice 
               yogurt 
               corn
        - single-line mode only matches the first
    - regex: `/^[a-z]+$/gm` (multi-line mode)
      - match: `milk`
               `apple juice`
               `yogurt`
               `corn`
    - regex: `/\A[a-z]+\Z/gm`
      - match: 0 (`\A` and `\Z` don't match line breaks)
             
----    